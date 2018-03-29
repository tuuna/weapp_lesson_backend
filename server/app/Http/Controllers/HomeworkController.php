<?php

namespace App\Http\Controllers;

use App\homeworks;
use App\students;
use Illuminate\Http\Request;

class HomeworkController extends Controller
{
    public function getWorkList(Request $request)
    {
        $token = $request->get('token');
        $depart_id = students::where('openid',base64_decode($token))->first()->departid;
        $ids = homeworks::pluck('departid');
        $ids = json_decode($ids,true);
        for($i = 0;$i<count($ids);$i++) {
            $ids[$i] = json_decode($ids[$i],true);
        }
        $j = 0;
        foreach($ids as $key => $departs) {

            foreach($departs as $value) {
                if($value == $depart_id) {
                    $result = homeworks::where('id',$key+1)->first();
                    $time = explode(' ',$result->created_at)[0];
                    $data[$time][$j++] = $result;
                }
            }
        }
        if(isset($data))
            return response()->json(['data' => $data,'code' => '200']);
        else
            return response()->json(['code' => '400','msg' => '当前没有作业']);
    }
}
