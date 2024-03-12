<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('candidate_applies', function (Blueprint $table) {
            $table->id();
            $table->string('candidate_name');
            $table->string('candidate_address1');
            $table->string('candidate_address2');
            $table->string('candidate_email');
            $table->string('candidate_qualification');
            $table->string('candidate_no_of_vacancy');
            $table->string('gender');
            $table->string('job_role_designation');
            $table->string('candidate_phone');
            $table->string('candidate_exprience');
            $table->integer('job_id');
            $table->string('job_posted_by');
            $table->string('image')->nullable();
            $table->string('resume')->nullable();
            $table->string('message')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('candidate_applies');
    }
};
