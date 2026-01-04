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
        return WebsiteAnalytic::whereNotNull('country_code')
            ->selectRaw('country_code, sum(visits) as total')
            ->groupBy('country_code')
            ->pluck('total', 'country_code');
    }
}