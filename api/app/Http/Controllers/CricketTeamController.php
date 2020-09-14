<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\CricketTeam;
use App\Matches;
use App\Points;
use App\Players;
use Auth;
use DB;
use App\PlayerHistory;
class CricketTeamController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function getTeams()
    {
        $teams = CricketTeam::select('id','team_name as name','team_logo as logo','club_state as state')->take(4)->get();
        return response()->json(['status' => 'success','result' => $teams]);
    }    
    public function getPlayers($id)
    {
        $team = CricketTeam::find($id);
        $data['team'] = $team->team_name;
        $data['team_logo'] = $team->team_logo;
        $data['club_state'] = $team->club_state;
        /* By using Hasmany relation we can get the result */
        $data['playes'] = $team->players()->select('id','firstname','lastname','image','jersey_number','country','played_matches','runs','best_score','fifties','hundreds','wickets')->get();
        return response()->json(['status' => 'success','result' => $data]);
    }
    public function getMatches()
    {
        $data = array();
        $matches = Matches::all();
        foreach ($matches as $key=>$match) {
          $data[$key]['id'] = $match->id;              
          $data[$key]['teamA'] = $match->getTeamName($match->teamA);
          $data[$key]['teamB'] = $match->getTeamName($match->teamB);
          $data[$key]['date'] = date_format(date_create($match->date),"D M d Y ");
          $data[$key]['winner'] = $match->getTeamName($match->winner);
          $data[$key]['man_of_match'] = $match->getPlayerName($match->man_of_match);
          $data[$key]['venue'] = $match->venue;
        }
        
        return response()->json(['status' => 'success','result' => $data]);
    }
    public function getTeamPoints()
    {
        $data = array();
        $points = Points::all();
        foreach ($points as $key => $teamwisepoints) {
            $team_details = $teamwisepoints->teams()->select('id','team_name as name','team_logo as logo','club_state as state')->first();
            $data[$key]['id'] = $team_details->id;
            $data[$key]['name'] = $team_details->name;
            $data[$key]['logo'] = $team_details->logo;
            $data[$key]['state'] = $team_details->state;
            $data[$key]['points'] = $teamwisepoints->points;
        }
        return response()->json(['status' => 'success','result' => $data]);
    }
    public function getPlayerHistory($playerid,$matchid)
    {
        /* By using DB table also we can get the result */
        $history = DB::table('cricket_players_history as h')
                    ->join('cricket_players as p','p.id' ,'=','h.player_id' )
                    ->select("p.firstname","p.lastname",'p.image','h.score','h.fifties','h.hundreds','h.wickets')
                    ->where('h.player_id',$playerid)
                    ->where('h.match_id',$matchid)
                    ->first();
        return response()->json(['status' => 'success','result' => $history]);
    }   
    public function getMacthDetails($matchid)
    {
        $match = Matches::find($matchid);
            $data["teamA"] = $match->teamsA()->select('id','team_name as name','team_logo as logo')->first();
            $data['teamA']['players'] = $match->getMatchesByTeam($matchid,$data['teamA']->id);
            $data["teamB"] = $match->teamsB()->select('id','team_name as name','team_logo as logo')->first();
            $data['teamB']['players'] = $match->getMatchesByTeam($matchid,$data['teamB']->id);
            $data['date'] = date_format(date_create($match->date),"D M d Y ");
            $data['winner'] = $match->getTeamName($match->winner);
            $data['man_of_match'] = $match->getPlayerName($match->man_of_match);
            $data['venue'] = $match->venue;          

        return response()->json(['status' => 'success','result' => $data]);

    }
}