<?php

namespace App\Http\Controllers;

use App\Models\ResponseDefaultModel;
use Illuminate\Http\Request;

class BaseController extends Controller
{
    public function succesResponse($data, $message = 'Transaction successful')
    {
        return response()->json(new ResponseDefaultModel(true, 200, $message, $data), 200);
    }

    public function errorResponse($data, $message = 'Transaction failed', $code = 500)
    {
        return response()->json(new ResponseDefaultModel(false, $code, $message, $data), $code);
    }
}
