<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class SuggestionController extends Controller
{


    public function sendEmail(Request $request)
    {
        $data = $request->all();

        Mail::send('test',['content'=>$data['content']],function($message) use ($data) {
            $to = $data['email'];
            $message ->to($to)->subject('意见反馈');
        });
        if(count(Mail::failures()) < 1) {
            return response()->json(['status' => 200, 'msg' => '邮件发送成功']);
        } else {
            return response()->json(['status' => 400, 'msg' => '邮件发送失败']);
        }
    }
}
