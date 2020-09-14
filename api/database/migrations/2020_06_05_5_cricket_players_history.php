<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CricketPlayersHistory extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('cricket_players_history');

        Schema::create('cricket_players_history', function($table)
        {
            $table->increments('id');
            $table->integer('player_id')->unsigned();          
            $table->foreign('player_id')->references('id')->on('cricket_players');    
            $table->integer('match_id')->unsigned();      
            $table->foreign('match_id')->references('id')->on('cricket_matches');    
            $table->integer('score');
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
        Schema::drop('cricket_players_history');
        
    }
}
