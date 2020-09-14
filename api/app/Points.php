<?php
namespace App;
use Illuminate\Database\Eloquent\Model;

class Points extends Model
{
   protected $table = 'story_board';  
   public function teams()
       {
       return $this->belongsTo('App\CricketTeam','team_id','id');       	
       }    
}
