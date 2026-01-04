# Laravel Website Analytics

A lightweight, efficient visitor tracking package for Laravel applications. It tracks unique visitors, page views, and user locations (GeoIP) without bloating your database. It includes built-in helper methods to generate data for **ApexCharts** and **Vector Maps** instantly.

## Features

*   **Efficient Tracking:** Groups visits by IP and Date (prevents spamming DB on every page reload).
*   **GeoIP Integration:** Automatically detects Country based on IP (via `stevebauman/location`).
*   **Bot Protection:** Ignores common bots and crawlers (configurable).
*   **Dashboard Ready:** Helper methods to get formatted data for Line Charts and World Maps.
*   **Performance:** Uses Caching to minimize database writes.

## Installation

You can install the package via composer:

```bash
composer require yenhunter/laravel-website-analytics
```

### 1. Run Migrations
Publish and run the migrations to create the `website_analytics` table:

```bash
php artisan migrate
```

### 2. Configure GeoIP (Important)
This package relies on `stevebauman/location` for country detection. You likely need to configure it to use a driver (like MaxMind).

Publish the location config:
```bash
php artisan vendor:publish --provider="Stevebauman\Location\LocationServiceProvider"
```

*Note: For local testing, IPs like `127.0.0.1` will not generate country data.*

---

## Usage

### 1. Enable Tracking
To start tracking visitors, register the Middleware in your `bootstrap/app.php` file.

**For Laravel 11:**
```php
use Illuminate\Foundation\Configuration\Middleware;
use Yenhunter\LaravelWebsiteAnalytics\Http\Middleware\TrackVisitor;

return Application::configure(basePath: dirname(__DIR__))
    ->withMiddleware(function (Middleware $middleware) {
        
        // Append to the 'web' group to track all web routes
        $middleware->web(append: [
            TrackVisitor::class,
        ]);
        
    })->create();
```

By default, the middleware tracks routes named `visitor.*`. You can change this behavior by publishing the config (if available) or extending the middleware.

### 2. Retrieving Data for Dashboard
You can inject the `Analytics` class into any Controller to fetch formatted statistics.

```php
namespace App\Http\Controllers;

use Yenhunter\LaravelWebsiteAnalytics\Analytics;

class DashboardController extends Controller
{
    public function index(Analytics $analytics)
    {
        // Get data for the last 7 days (dates, total_views, unique_visitors)
        $chartData = $analytics->getChartData(7); 

        // Get total visits grouped by Country Code (e.g., ['US' => 500, 'BD' => 200])
        $mapData = $analytics->getMapData();

        return view('admin.dashboard', compact('chartData', 'mapData'));
    }
}
```

---

## Frontend Examples

### 1. Line Chart (ApexCharts)
The `getChartData()` method returns arrays perfectly formatted for ApexCharts.

**Blade:**
```blade
<div id="traffic-chart"></div>

<script>
    var options = {
        chart: { type: 'line', height: 350 },
        series: [{
            name: 'Total Views',
            data: @json($chartData['total'])
        }, {
            name: 'Unique Visitors',
            data: @json($chartData['unique'])
        }],
        xaxis: {
            categories: @json($chartData['dates'])
        }
    };
    var chart = new ApexCharts(document.querySelector("#traffic-chart"), options);
    chart.render();
</script>
```

### 2. World Map (jsVectorMap)
The `getMapData()` method returns an object keyed by Country Code (e.g., `{'US': 100, 'BD': 50}`).

**Blade:**
```blade
<div id="world-map"></div>

<script>
    var mapData = @json($mapData);
    
    // Logic to map country codes to your map markers...
</script>
```

---

## Database Structure
The package creates a single table: `website_analytics`

| Column | Type | Description |
| :--- | :--- | :--- |
| `id` | BigInt | Primary Key |
| `ip_address` | String | Visitor IP |
| `visit_date` | Date | The date of the visit |
| `visits` | Integer | Count of hits per day |
| `country_code` | String | ISO Code (e.g., US, BD) |
| `user_agent` | String | Browser/Device Info |

## License
The MIT License (MIT). Please see License File for more information.