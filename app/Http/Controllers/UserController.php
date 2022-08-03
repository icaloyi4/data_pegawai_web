<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserRequest;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Utils\UtilsClass;
use Illuminate\Support\Facades\DB;
use App\Http\Resources\UserResource;
use GrahamCampbell\ResultType\Success;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $user = User::find(Auth::id());
        if ($user->role_id = 1) {
            $userAll = DB::table('users')
                ->leftJoin('departments', 'users.department_id', '=', 'departments.id')
                ->leftJoin('positions', 'users.position_id', '=', 'positions.id')
                ->select(
                    'users.id',
                    'users.name',
                    'users.email',
                    'users.address',
                    'users.phone',
                    'users.birthday',
                    'users.join_at',
                    'users.company_id',
                    'users.department_id',
                    'users.position_id',
                    'users.role_id',
                    'users.email_verified_at',
                    'users.NIK',
                    'departments.name as department',
                    'positions.name as position',
                    'positions.level'
                )
                ->where('users.company_id', $user->company_id)
                ->where('isActive', 1)
                ->orderBy('positions.level')
                ->get();
            return $this->succesResponse($userAll);
        }
        return $this->errorResponse(null, 'Role Unauthorize', 401);
    }

    public function deleteUser($idUser)
    {
        $user = User::find(Auth::id());
        $userDel = User::find($idUser);
        if ($user->role_id != 1) {
            return $this->errorResponse(null, 'Roles not allowed', 403);
        }
        if ($userDel->role_id == 1) {
            return $this->errorResponse(null, 'Roles not allowed', 403);
        }
        $userDel->isActive = 0;
        $userDel->save();
        return $this->succesResponse(null, 'Success non active user');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        //
        try {
            $user = User::find(Auth::id());
            if ($user->role_id != 1) {
                return $this->errorResponse(null, 'Roles not allowed', 403);
            }
            DB::beginTransaction();
            // $user = User::find(Auth::id());
            $password = "";
            if ($request->password == null) {
                $password = UtilsClass::generateRandomString($request->name);
            } else {
                $password = $request->password;
            }


            $idUser = DB::table('users')->insertGetId(
                array(
                    'name' => $request->name,
                    'email' => $request->email,
                    'password' => Hash::make(($password)),
                    'address' => $request->address,
                    'phone' => $request->phone,
                    'birthday' => $request->birthday,
                    'join_at' => $request->join_at,
                    'company_id' => $user->company_id,
                    'department_id' => $request->department_id,
                    'role_id' => 3,
                    'position_id' => $request->position_id,
                    'email_verified_at' => null,
                    'remember_token' => null,
                    'isActive' => 1,
                    'created_by' => $user->name,
                    'updated_by' => $user->name,
                    'NIK' => null
                )
            );
            $nik = $request->nik == null ? $idUser : $request->nik;
            $userBaru = User::find($idUser);
            $userBaru->NIK = $nik;
            $userBaru->save();

            DB::commit();
            return $this->succesResponse(['password' => $password, 'data' => $userBaru], 'Succes created new user');
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->errorResponse(null, $th->getMessage());
            //throw $th;
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        //
        return $this->succesResponse($user);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        //
        $usernya = User::find(Auth::id());
        if ($usernya->role_id != 1) {
            return $this->errorResponse(null, 'Roles not allowed', 403);
        }
        $user->updated_by = $usernya->name;
        $user->updated_at = now();
        $user->update($request->all());
        return $this->succesResponse(['password' => null, 'data' => $user], 'Succes update user');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $userAdmin = User::find(Auth::id());
        if ($userAdmin->role_id != 1) {
            return $this->errorResponse(null, 'Roles not allowed', 403);
        }
        if ($user->role_id == 1) {
            return $this->errorResponse(null, 'Roles not allowed', 403);
        }
        $user->delete();
        return $this->succesResponse(null, 'Success non active user');
        //
    }
}
