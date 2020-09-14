<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CricketPlayers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('cricket_players');

        Schema::create('cricket_players', function($table)
        {
            $table->increments('id');
            $table->string('firstname', 50);    
            $table->string('lastname', 50);    
            $table->string('image', 50);    
            $table->integer('jersey_number');    
            $table->string('country', 50);    
            $table->integer('team_id')->unsigned();
            $table->foreign('team_id')->references('id')->on('cricket_team');    
            $table->integer('played_matches');    
            $table->integer('runs');    
            $table->integer('best_score');    
            $table->integer('fifties');    
            $table->integer('hundreds');    
            $table->integer('wickets');    
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
        Schema::drop('cricket_players');
        
    }
}
