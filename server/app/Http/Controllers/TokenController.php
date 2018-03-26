<?php

namespace App\Http\Controllers;

use App\students;
use Illuminate\Http\Request;
use Ixudra\Curl\Facades\Curl;

class TokenController extends Controller
{
    protected $app_id;
    protected $app_secret;
    protected $login_url;
    protected $code;
//    public function __construct(Request $request)
//    {
//        print_r($request->all());die;
//        $this->code = json_decode($request->all());
//        $this->app_id = config('app.weixin')['app_id'];
//        $this->app_secret = config('app.weixin')['app_secret'];
//        $this->login_url = sprintf(config('app.weixin')['login_url'],
//            $this->app_id,$this->app_secret,$this->code);
//    }

    public function getToken(Request $request)
    {
        $this->code = $request->get('code');
        $this->app_id = config('app.weixin')['app_id'];
        $this->app_secret = config('app.weixin')['app_secret'];
        $this->login_url = sprintf(config('app.weixin')['login_url'],
            $this->app_id,$this->app_secret,$this->code);
        $result = json_decode(Curl::to($this->login_url)->get(),true);
        if(array_key_exists('errcode',$result)) {
            return response()->json($result);
        }
        $model = new students;
        return $model->has_reg($result['openid']);
    }
}
