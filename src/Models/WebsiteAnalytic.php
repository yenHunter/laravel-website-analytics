<?php

namespace Yenhunter\LaravelWebsiteAnalytics\Models;

use Illuminate\Database\Eloquent\Model;

class WebsiteAnalytic extends Model
{
    protected $table = 'website_analytics';
    protected $fillable = ['ip_address', 'visit_date', 'visits', 'country_code', 'user_agent'];
}