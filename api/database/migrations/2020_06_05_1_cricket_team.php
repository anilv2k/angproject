<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CricketTeam extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('cricket_team');

        Schema::create('cricket_team', function($table)
        {
            $table->increments('id');
            $table->string('team_name', 20);    
            $table->string('team_logo', 50);    
            $table->string('club_state', 50);    
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
        Schema::drop('cricket_team');

    }
}
