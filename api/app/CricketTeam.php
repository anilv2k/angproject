<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use App\Players;
class CricketTeam extends Model
{
   protected $table = 'cricket_team';
   protected $fillable = ['id','team_name','team_logo','club_state'];

   public function players()
   {
       return $this->hasMany('App\Players','team_id','id');
   }   
   public function points()
   {
       return $this->hasOne('App\Points');
   }
}
