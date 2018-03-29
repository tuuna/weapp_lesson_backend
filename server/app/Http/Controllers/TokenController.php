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

    public function reg(Request $request)
    {
        $data = $request->all();
        $model = new students();
        $result = $model->where('openid',base64_decode($data['token']))->update([
            'name' => $data['name'],
            'sid' => $data['sid'],
            'departid' => $data['departid'] + 1
        ]);
        if($result) {
            return response()->json(['msg' => '提交成功','code' => '200']);
        } else {
            return response()->json(['msg' => '提交失败','code' => '400']);
        }
    }
}
