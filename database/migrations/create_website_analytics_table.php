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
                $table->string('ip_address', 45); // IP Address (45 chars to support IPv6)
                $table->date('visit_date'); // Grouping by date (YYYY-MM-DD)
                $table->integer('visits')->default(1); // Counter for hits per day
                $table->string('country_code', 3)->nullable(); // Two letter country code (US, BD, IN)
                $table->string('user_agent')->nullable(); // Browser/Device info
                $table->timestamps();
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
