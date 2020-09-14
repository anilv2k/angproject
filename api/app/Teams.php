<?php
namespace App;
use Illuminate\Database\Eloquent\Model;

class Teams extends Model
{
   protected $table = 'cricket_teams';   

  	public function playerhistory()
	   {
	   	 return $this->hasMany('App\PlayerHistory','player_id','id');          
	   }
	public function players()
	   {
	   	return $this->belongsTo('App\Players');          
	   }
}
