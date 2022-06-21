<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RegisterCompany;
use App\Http\Requests\RegisterCompanyRequest;

class RegisterCompanyController extends Controller
{
    //
    public function __construct()
    {
        # code...
        //return auth()->shouldUse('api');
    }
    public function register(RegisterCompanyRequest $req)
    {
        return response()->json(['code'=>200]);
    }
}
