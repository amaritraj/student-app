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
        Schema::create('admissions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->foreignId('year_adsession_courses_id')->constrained()->onDelete('cascade');
            $table->string('fathers_name');
            $table->string('mothers_name');
            $table->string('guardian_mobile')->nullable();;
            $table->decimal('course_fee', 10, 2);
            $table->string('student_type');
            $table->string('class_day')->nullable();;
            $table->string('class_time')->nullable();;
            $table->string('student_group')->nullable();;
            $table->string('batch_no')->nullable();;
            $table->string('student_nid')->nullable();;
            $table->string('student_dobreg')->nullable();;
            $table->string('blood_group')->nullable();;
            $table->string('student_photo')->nullable();
            $table->enum('admission_status', ['pending', 'confirmed'])->default('pending');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('admissions');
    }
};
