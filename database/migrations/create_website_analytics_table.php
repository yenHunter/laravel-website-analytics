<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Check if table exists to prevent errors if user runs migrate multiple times
        if (!Schema::hasTable('website_analytics')) {
            Schema::create('website_analytics', function (Blueprint $table) {
                $table->id();
                
                // IP Address (45 chars to support IPv6)
                $table->string('ip_address', 45);
                
                // Grouping by date (YYYY-MM-DD)
                $table->date('visit_date');
                
                // Counter for hits per day
                $table->integer('visits')->default(1);
                
                // Two letter country code (US, BD, IN)
                $table->string('country_code', 3)->nullable();
                
                // Browser/Device info
                $table->string('user_agent')->nullable();
                
                $table->timestamps();

                // ⚡ PERFORMANCE INDEX ⚡
                // Since the Middleware queries by IP AND Date every time, 
                // this compound index makes that lookup instant.
                $table->index(['ip_address', 'visit_date']);
            });
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('website_analytics');
    }
};