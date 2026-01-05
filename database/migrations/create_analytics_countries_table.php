<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (!Schema::hasTable('analytics_countries')) {
            Schema::create('analytics_countries', function (Blueprint $table) {
                $table->id();
                $table->string('country_code', 3)->unique(); // US, BD, IN
                $table->string('name');
                $table->decimal('lat', 10, 7); // Latitude
                $table->decimal('long', 10, 7); // Longitude
                $table->timestamps();
            });
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('analytics_countries');
    }
};