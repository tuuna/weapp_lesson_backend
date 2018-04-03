<?php

namespace App\Http\Controllers;

use App\sign;
use App\students;
use Carbon\Carbon;
use Illuminate\Http\Request;

class SignController extends Controller
{
    public function signin($token,$openid)
    {
        $data = explode('-',base64_decode($token));
        $current_time = Carbon::now('Asia/Shanghai')->format('H:i:s');
        $time = Carbon::now();
        if(strtotime($current_time) - strtotime($data[0]) > 90) {
            return response()->json(['code' => '400','msg' => '二维码超时']);
        }
        $user_id = students::where('openid',base64_decode($openid))->first()->sid;
        sign::where('stuid',$user_id)->update([
            'status' => 1
        ]);
        return response()->json(['code' => '200','msg' => '签到成功']);
    }
}
