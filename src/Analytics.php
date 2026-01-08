<?php

namespace Yenhunter\LaravelWebsiteAnalytics;

use Yenhunter\LaravelWebsiteAnalytics\Models\WebsiteAnalytic;
use Carbon\Carbon;

class Analytics
{
    public function getChartData($days = 7)
    {
        $dates = [];
        $total = [];
        $unique = [];

        for ($i = $days - 1; $i >= 0; $i--) {
            $date = Carbon::today()->subDays($i);
            $dateString = $date->toDateString();

            $dates[] = $date->format('d M');

            $data = WebsiteAnalytic::where('visit_date', $dateString)
                ->selectRaw('count(*) as unique_count, sum(visits) as total_count')
                ->first();

            $total[] = $data->total_count ?? 0;
            $unique[] = $data->unique_count ?? 0;
        }

        return compact('dates', 'total', 'unique');
    }

    public function getMapData()
    {
        return WebsiteAnalytic::query()
            ->join('analytics_countries', 'website_analytics.country_code', '=', 'analytics_countries.country_code')
            ->selectRaw('
            analytics_countries.name, 
            analytics_countries.lat, 
            analytics_countries.long, 
            count(*) as visits
        ')
            ->groupBy('analytics_countries.country_code', 'analytics_countries.name', 'analytics_countries.lat', 'analytics_countries.long')
            ->get()
            ->map(function ($item) {
                return [
                    'name' => $item->name,
                    'coords' => [(float)$item->lat, (float)$item->long],
                    'visits' => $item->visits
                ];
            });
    }
}
