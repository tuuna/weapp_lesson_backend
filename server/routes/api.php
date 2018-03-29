<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


/*Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
*/

/*
 * tasks
 */
Route::middleware('api')->post('/tasklist','TaskController@getTasks');
Route::middleware('api')->post('/ctask','TaskController@addTasks');
Route::middleware('api')->post('/deltask','TaskController@delTasks');

/**
 * suggestions
 */
Route::middleware('api')->post('/send','SuggestionController@sendEmail');

/**
 * register
 */
Route::middleware('api')->post('/onLogin','TokenController@getToken');
Route::middleware('api')->post('/reg','TokenController@reg');

/**
 * depart
 */
Route::middleware('api')->get('/getProject','ProjectController@getList');

/**
 * Homework
 */
Route::middleware('api')->post('/getWork','HomeworkController@getWorkList');

/**
 * Timetable
 */
Route::middleware('api')->post('/getTimetable','TimetableController@index');

/**
 * note
 */
Route::middleware('api')->post('/upload','NoteController@upload');
Route::middleware('api')->post('/getNote','NoteController@getList');

