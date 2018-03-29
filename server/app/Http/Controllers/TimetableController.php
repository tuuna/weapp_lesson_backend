<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Ixudra\Curl\Facades\Curl;

class TimetableController extends Controller
{
    public function index(Request $request)
    {
        $rtn = [];
        $weekdays = 1;
        $index = 0;
        $data = $request->all();
        $result = Curl::to("http://time.vampirebitter.top/timetable.php")
            ->withData($data)
            ->post();
        $result = json_decode($result,true);

        foreach($result as $section => $weekdays_data) {
            foreach ($weekdays_data as $class) {
                if($class === " " || $class === " 晚上 11~12节" || $class === "&nbsp;") {
                    continue;
                }
                $rtn[$index] =  [
                    "xqj" => $weekdays,
                    "lesson" => explode("◇",$class)[0],
                    "skjc" => $section,
                    "skcd" => 2,
                    "kcmc" => $class,
                ];
                $index++;
                $weekdays += 1;
            }
            $weekdays = 1;
        }
        return response()->json(['data' => $rtn,'msg' => '课程表信息','code' => '200']);
    }
}
