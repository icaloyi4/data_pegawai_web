<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Resources\NewsResource;
use Illuminate\Support\Facades\Auth;

class NewsController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //

        $user = User::find(Auth::id());
        $resource = News::where('company_id', $user->company_id)->take($request->limit)->orderBy('created_at', 'desc')->get();


        return $this->succesResponse(NewsResource::collection($resource));
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
            DB::table('news')->insertGetId(
                array(
                    'company_id' => $user->company_id,
                    'title' => $request->title,
                    'subtitle' => $request->subtitle,
                    'url' => $request->url,
                    'img_url' => $request->img_url,
                    'created_by' => $user->name,
                    'updated_by' => $user->name,
                )
            );
            DB::commit();
            // return $user;
            // $request->created_by = $user->name;
            // $request->updated_by = $user->name;
            // $request->company_id = $user->company_id;
            // $news = new News();
            // $news = $request->all;
            // return $news;
            // $news = News::create($request->all());

            // $news->save();

            return $this->succesResponse(null);
        } catch (\Throwable $th) {
            //throw $th;
            return $this->errorResponse($th->getMessage(), 'Error insert new news', 500);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function show(News $news)
    {
        //
        return $this->succesResponse($news);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function edit(News $news)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, News $news)
    {
        //
        try {
            //code...
            $user = User::find(Auth::id());
            if ($user->role_id != 1) {
                return $this->errorResponse(null, 'Roles not allowed', 403);
            }
            $user = User::find(Auth::id());
            $news->updated_by = $user->name;
            $news->updated_at = now();
            $news->update($request->all());

            return $this->succesResponse(new NewsResource($news));
        } catch (\Throwable $th) {
            //throw $th;
            return $this->errorResponse($th->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\News  $news
     * @return \Illuminate\Http\Response
     */
    public function destroy(News $news)
    {
        //
        try {
            //code...
            $user = User::find(Auth::id());
            if ($user->role_id != 1) {
                return $this->errorResponse(null, 'Roles not allowed', 403);
            }
            $news->delete();
            return $this->succesResponse(null, $news->title . 'Deleted ');
        } catch (\Throwable $th) {
            //throw $th;
            return $this->errorResponse($th->getMessage());
        }
    }
}
