<?php

namespace Yenhunter\LaravelWebsiteAnalytics\Models;

use Illuminate\Database\Eloquent\Model;

class AnalyticsCountry extends Model
{
    protected $table = 'analytics_countries';
    protected $fillable = ['country_code', 'name', 'lat', 'long'];
}