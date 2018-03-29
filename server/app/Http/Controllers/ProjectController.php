<?php

namespace App\Http\Controllers;

use App\departs;
use Illuminate\Http\Request;

class ProjectController extends Controller
{
    public function getList()
    {
        $model = new departs();
        $data = $model->select(['id','project'])->get();
        return response()->json(['data' => $data,'code' => '200']);
    }
}
