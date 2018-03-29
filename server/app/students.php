<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class students extends Model
{
    protected $table = 'students';
    protected $fillable = [
        'name','sid','openid','token','backup','project','grade','realclass','departid'
    ];

    public function has_reg($openid)
    {
        $student = $this->where('openid',$openid)->first();
        if($student->count()) {
            if(!empty($student->departid)) {
                return response()->json(['msg' => '已注册','code' => '200','token' => base64_encode($openid)]);
            } else {
                return response()->json(['msg' => '未绑定信息','code' => '400','token' => base64_encode($openid)]);
            }
        } else {
            $this->createToken($openid);
            return response()->json(['msg' => '未绑定信息','code' => '400','token' => base64_encode($openid)]);
        }
    }

    public function createToken($openid)
    {
        $this->create([
            'token' => base64_encode($openid),
            'openid' => $openid
        ]);
    }
    public function createStudent($attributes)
    {

    }
}
