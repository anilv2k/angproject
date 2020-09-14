<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});
$router->group(['prefix' => 'api/'], function ($router) {
	$router->get('login/','UsersController@authenticate');
	$router->get('cricket_teams/','CricketTeamController@getTeams');
	$router->get('cricket_teams/{id}/', 'CricketTeamController@getPlayers');
	$router->get('cricket_matches/', 'CricketTeamController@getMatches');
	$router->get('team_points/', 'CricketTeamController@getTeamPoints');
	$router->get('player_history/{playerid}/{matchid}/', 'CricketTeamController@getPlayerHistory');
	$router->get('match_details/{matchid}', 'CricketTeamController@getMacthDetails');
});