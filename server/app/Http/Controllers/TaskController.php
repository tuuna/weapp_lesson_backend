<?php

namespace App\Http\Controllers;

use App\Repositories\TaskRepository;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    protected $task;
    public function __construct(TaskRepository $task)
    {
        $this->task = $task;
    }

    public function getTasks(Request $request)
    {
        $id = $request->get('token');
        $id = base64_decode($id);
        if($task = $this->task->getTasks($id)) {
            return response()->json(['status' => 200,'data' => $task]);
        } else {
            return response()->json(['status' => 400,'msg' => '获取用户打失败']);
        }
    }

    public function addTasks(Request $request)
    {
        $data = $request->all();
        if($task = $this->task->addTasks($data)) {
            return response()->json(['status'=> 200, 'msg' => '创建成功']);
        } else {
            return response()->json(['status' => 400, 'msg' => '创建失败']);
        }
    }

    public function delTasks(Request $request)
    {
        $id = $request->get('id');
        if($result = $this->task->delTasks($id)) {
            return response()->json(['status' => 200,'msg' => '删除成功']);
        } else {
            return response()->json(['status' => 400,'msg' => '删除失败']);
        }
    }

}
