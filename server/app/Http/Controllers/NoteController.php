<?php

namespace App\Http\Controllers;

use App\note;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class NoteController extends Controller
{
    public function getList(Request $request)
    {
        $result = [];
        $token = $request->get('token');
        $openid = base64_decode($request->get('token'));
        $data = note::where('openid',$openid)->select(['date','img'])->get()->toArray();
//        $data = note::where('openid',$openid)->lists('img','date')->all();
        foreach($data as  $value) {
            $result[] = [
                'img' => "http://localhost:8000/storage".explode('public',$value['img'])[1],
                'date' => $value['date']
            ];
//            $i = 0;
//            $i++;
//            echo $value;
        }
        return response()->json(['data' => $result,'code' => '200']);
    }

    public function upload(Request $request)
    {
        $openid = base64_decode($request->get('token'));
        $file = $request->file('file');
        if ($file->isValid()) {
//            $path = $request->file->path();
//            echo $path;
            // 获取文件相关信息
            $originalName = $file->getClientOriginalName(); // 文件原名
            $ext = $file->getClientOriginalExtension();     // 扩展名
            $realPath = $file->getRealPath();   //临时文件的绝对路径
            $type = $file->getClientMimeType();     // image/jpeg

            // 上传文件
            $filename = date('Y-m-d-H-i-s') . '-' . uniqid() . '.' . $ext;
            $date = date('Y-m-d');
            // 使用我们新建的uploads本地存储空间（目录）
            $path = $file->storeAs('public', $filename);
            if($path) {
                $result = note::create([
                    'img' => $path,
                    'openid' => $openid,
                    'date' => $date
                ]);
                if($result) {
                    return response()->json(['code' => '200','msg' => '上传成功']);
                } else {
                    return response()->json(['code' => '400','msg' => '上传失败']);
                }
            } else {
                return response()->json(['code' => '400','msg' => '保存失败']);
            }
        } else {
            return response()->json(['code' => '400','msg' => '不存在文件']);
        }
    }

}
