<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\RegisterCompany;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\LoginRequest;
use App\Models\ResponseDefaultModel;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\RegisterCompanyRequest;

class RegisterCompanyController extends BaseController
{
    //
    public function __construct()
    {
        # code...
        //return auth()->shouldUse('api');
    }
    public function register(RegisterCompanyRequest $req, User $reqUser)
    {
        // DB::beginTransaction();
        try {
                $idCompanies = DB::table('companies')-> insertGetId(array(
                    'name' => $req->company_name,
                    'email' => $req->company_email,
                    'phone' => $req->company_phone,
                    'address' => $req->company_address,
                    'location' => $req->company_location,
                    'city' => $req->company_city,
                    'country' => $req->company_country,
                    'created_by' => $req->user_name,
                    'updated_by' => $req->user_name,
                ));
                $idUser = DB::table('users')-> insertGetId(array(
                    'name' => $req->user_name,
                    'email' => $req->user_email,
                    'phone' => $req->user_phone,
                    'birthday' => $req->user_birthday,
                    'join_at' => $req->user_join_at,
                    'company_id' => $idCompanies,
                    'role_id' => 1,
                    'password' => Hash::make(($req->password)),
                    'created_by' => $req->user_name,
                    'updated_by' => $req->user_name,
                ));
                DB::commit();

            $userToken = User::where('email', $req->user_email)->firstOrFail();
            $token =  $userToken->createToken('DataPegawai')->accessToken;
            $userToken->remember_token = $token;
            $userToken->save();

            return $this->succesResponse($userToken, 'Registration success');
        } catch (\Exception $e) {
            DB::rollback();
            return $this->errorResponse($e->getMessage());
        }
    }
}
