<?php
namespace App;
use Illuminate\Database\Eloquent\Model;

class PlayerHistory extends Model
{
   protected $table = 'cricket_players_history';   

   public function playes()
   {
   	return $this->belongsTo('App\Players');          
   }
   public function matches()
	{
		return $this->belongsTo('App\Matches','matches_id','id');          
	}
	public function teams()
		{
			return $this->hasMany('App\Teams','teams_id','id');          
		}	
}
