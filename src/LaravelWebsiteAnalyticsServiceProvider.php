<?php

namespace Yenhunter\LaravelWebsiteAnalytics;

use Illuminate\Support\ServiceProvider;
use Yenhunter\LaravelWebsiteAnalytics\Console\SeedCountriesCommand;

class LaravelWebsiteAnalyticsServiceProvider extends ServiceProvider
{
    public function register()
    {
        // 1. Merge Config (if you create one)
        // $this->mergeConfigFrom(__DIR__.'/../config/analytics.php', 'simple-analytics');

        // 2. Register Main Class
        $this->app->singleton('simple-analytics', function () {
            return new Analytics();
        });
    }

    public function boot()
    {
        // 3. Load Migrations
        // This tells Laravel "Hey, I have database tables to create"
        $this->loadMigrationsFrom(__DIR__ . '/../database/migrations');

        // 4. Publishing (Optional but good practice)
        if ($this->app->runningInConsole()) {
            $this->commands([
                SeedCountriesCommand::class,
            ]);
            
            $this->publishes([
                __DIR__ . '/../database/migrations' => database_path('migrations'),
            ], 'simple-analytics-migrations');
        }
    }
}
