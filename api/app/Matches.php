<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use App\CricketTeam;
use App\Players;
use DB;
class Matches extends Model
{
   //
   protected $table = 'cricket_matches';   

   public function getTeamName($team_id)
   {
	   	return CricketTeam::find($team_id)->team_name;
	   	//return CricketTeam::where('id',$team_id)->select('team_name','id')->get();
	   	//return CricketTeam::where('id',$team_id)->pluck('team_name','id');
   }
   public function getPlayerName($player_id)
   {
	   	$player =  Players::find($player_id);
	   	return $player->firstname ." ". $player->lastname;   	  
   }
   public function teamsA()
   {
      return $this->belongsTo('App\CricketTeam','teamA','id');          
   }   
   public function teamsB()
   {
      return $this->belongsTo('App\CricketTeam','teamB','id');          
   }
   public function getMatchesByTeam($matchid,$teamid)
      {
            return DB::table('cricket_players_history as h')
                ->join('cricket_players as p','p.id' ,'=','h.player_id' )
                ->select("p.firstname","p.lastname",'p.image','h.score','h.fifties','h.hundreds','h.wickets')
                ->where('p.team_id',$teamid)
                ->where('h.match_id',$matchid)
                ->orderBy('h.score','DESC')
                ->get();
      }   
}
