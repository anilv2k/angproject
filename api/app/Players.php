<?php
namespace App;
use Illuminate\Database\Eloquent\Model;

class Players extends Model
{
   protected $table = 'cricket_players';   

  	public function playerhistory()
	   {
	   	 return $this->hasMany('App\PlayerHistory','player_id','id');          
	   }
	public function teams()
	   {
	   	return $this->belongsTo('App\Teams','team_id','id');          
	   }
}
