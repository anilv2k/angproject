<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CricketMatches extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('cricket_matches');

        Schema::create('cricket_matches', function($table)
        {
            $table->increments('id');
            $table->integer('teamA')->unsigned();            
            $table->foreign('teamA')->references('id')->on('cricket_team');    
            $table->integer('teamB')->unsigned();
            $table->foreign('teamB')->references('id')->on('cricket_team');    
            $table->date('date');
            $table->integer('winner')->unsigned();
            $table->foreign('winner')->references('id')->on('cricket_team');      
            $table->integer('man_of_match')->unsigned();            
            $table->foreign('man_of_match')->references('id')->on('cricket_players');      
            $table->string('venue', 100);    
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
        Schema::drop('cricket_matches');        
    }
}
