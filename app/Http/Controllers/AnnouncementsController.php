<?php

namespace App\Http\Controllers;

use App\Http\Resources\AnnouncementResource;
use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Announcements;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class AnnouncementsController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
        try {
            $user = User::find(Auth::id());
            $announcements = Announcements::where('expired_at', '>=', date('Y-m-d'))->where('company_id', $user->company_id)->where(function ($query) use ($request) {
                $query->where('department_id', $request->department_id)->orWhereNull('department_id');
            })->get();
            return $this->succesResponse(AnnouncementResource::collection($announcements));
        } catch (\Throwable $th) {
            //throw $th;
            return $this->errorResponse($th->getMessage(), 'Error insert new announcements', 500);
        }
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
    public function store(Request $request)
    {
        //
        try {
            //code...
            // $user = User::find(Auth::id());
            $user = auth()->user();
            if ($user->role_id != 1) {
                return $this->errorResponse(null, 'Roles not allowed', 403);
            }
            DB::beginTransaction();
            DB::table('announcements')->insertGetId(
                array(
                    'company_id' => $user->company_id,
                    'department_id' => $request->department_id,
                    'title' => $request->title,
                    'subtitle' => $request->subtitle,
                    'url' => $request->url,
                    'img_url' => $request->img_url,
                    'expired_at' => $request->expired_at,
                    'created_by' => $user->name,
                    'updated_by' => $user->name,
                )
            );
            DB::commit();

            return $this->succesResponse(null);
        } catch (\Throwable $th) {
            //throw $th;
            return $this->errorResponse($th->getMessage(), 'Error insert new announcements', 500);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Announcements  $announcements
     * @return \Illuminate\Http\Response
     */
    public function show(Announcements $announcements)
    {
        //
        return $this->succesResponse($announcements);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Announcements  $announcements
     * @return \Illuminate\Http\Response
     */
    public function edit(Announcements $announcements)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Announcements  $announcements
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Announcements $announcements)
    {
        //
        try {
            //code...
            $user = User::find(Auth::id());
            
            if ($user->role_id != 1) {
                return $this->errorResponse(null, 'Roles not allowed', 403);
            }
            $announcements = Announcements::find($request->id);
            $announcements->updated_by = $user->name;
            $announcements->updated_at = now();
            $announcements->update($request->all());
            // return $announcements;

            return $this->succesResponse(null);
        } catch (\Throwable $th) {
            //throw $th;
            return $this->errorResponse($th->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Announcements  $announcements
     * @return \Illuminate\Http\Response
     */
    public function destroy(Announcements $announcements)
    {
        //
        try {
            //code...
            $user = User::find(Auth::id());
            if ($user->role_id != 1) {
                return $this->errorResponse(null, 'Roles not allowed', 403);
            }
            $announcements->delete();
            return $this->succesResponse(null, $announcements->title . 'Deleted ');
        } catch (\Throwable $th) {
            //throw $th;
            return $this->errorResponse($th->getMessage());
        }
    }
}
