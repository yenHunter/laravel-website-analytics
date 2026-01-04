<?php

namespace Yenhunter\LaravelWebsiteAnalytics\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Stevebauman\Location\Facades\Location;
use Yenhunter\LaravelWebsiteAnalytics\Models\WebsiteAnalytic; // Correct Import

class TrackVisitor
{
    public function handle(Request $request, Closure $next)
    {
        // Use config for flexibility
        $pattern = config('simple-analytics.route_pattern', 'visitor.*');

        if ($request->routeIs($pattern)) {
            $ip = $request->ip();
            $date = now()->toDateString();
            $cacheKey = "sa_visited_{$ip}_{$date}";

            if (!Cache::has($cacheKey)) {
                $visitor = WebsiteAnalytic::where('ip_address', $ip)
                            ->where('visit_date', $date)
                            ->first();

                if ($visitor) {
                    $visitor->increment('visits');
                } else {
                    // Handle Localhost testing
                    $position = ($ip === '127.0.0.1') ? 'BD' : Location::get($ip);
                    
                    WebsiteAnalytic::create([
                        'ip_address' => $ip,
                        'visit_date' => $date,
                        'visits' => 1,
                        'country_code' => $position ? $position->countryCode : null,
                        'user_agent' => $request->header('User-Agent'),
                    ]);
                }
                Cache::put($cacheKey, true, 300);
            }
        }
        return $next($request);
    }
}