<?php

namespace App\Http\Controllers;

use App\Http\Requests\PositionRequest;
use App\Models\User;
use App\Models\Position;
use App\Models\Department;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\PositionResource;

class PositionController extends BaseController
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
        if($user->role_id != 1){
            return $this->errorResponse(null,'Roles not allowed');
        } 
        // return $user;
        // $department = Department::where('company_id',$user->company_id)->get();
        // return $department->id;
        $position = Position::where('department_id',$user->department_id)->get();
        return $this->succesResponse(PositionResource::collection($position));
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
    public function store(PositionRequest $request)
    {
        //
        //
        $user = User::find(Auth::id());
        if($user->role_id != 1){
            return $this->errorResponse(null,'Roles not allowed');
        } 
        //return Position::where('department_id', $request->department_id)->orderBy('level', 'desc')->first();
        try {
            DB::beginTransaction();
            $level = Position::where('department_id', $request->department_id)->orderBy('level', 'desc')->first();
            //return $level;
            $idPosition = DB::table('positions')->insertGetId(
                array(
                    'name'=>$request->name,
                    'department_id'=>$request->department_id,
                    'level'=>$level->level+1,
                    'created_by'=>$user->name,
                    'updated_by'=>$user->name,
                )
            );
            $post = Position::find($idPosition);
            DB::commit();
            return $this->succesResponse($post, 'Succes created new position');
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->errorResponse($th->getMessage());
            //throw $th;
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Position  $position
     * @return \Illuminate\Http\Response
     */
    public function show(Position $position)
    {
        //
        $user = User::find(Auth::id());
        if($user->role_id != 1){
            return $this->errorResponse(null,'Roles not allowed');
        } 
        return $this->succesResponse($position);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Position  $position
     * @return \Illuminate\Http\Response
     */
    public function edit(Position $position)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Position  $position
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Position $position)
    {
        //
        try {
            //code...
            $user = User::find(Auth::id());
            if($user->role_id != 1){
                return $this->errorResponse(null,'Roles not allowed');
            } 
            $user= User::find(Auth::id());
            $position->updated_by = $user->name;
            $position->updated_at = now();
            $position->update($request->all());
            
            return $this->succesResponse(new PositionResource($position));
        } catch (\Throwable $th) {
            //throw $th;
            return $this->errorResponse($th->getMessage());
        }
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Position  $position
     * @return \Illuminate\Http\Response
     */
    public function destroy(Position $position)
    {
        //
        try {
            //code...
            $user = User::find(Auth::id());
            if($user->role_id != 1){
                return $this->errorResponse(null,'Roles not allowed');
            } 
            $position->delete();
            return $this->errorResponse($position, $position->name.'Deleted ');
        } catch (\Throwable $th) {
            //throw $th;
            return $this->errorResponse($th->getMessage());
        }
        
    }
}
