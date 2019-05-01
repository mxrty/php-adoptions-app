<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use Illuminate\Support\Facades\Storage;

class PostsController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth', ['except' => ['index','show']]);
    }

    /**
     * Display a listing of the resource.
     * Lists all posts in order of time since last edit.
     * Splits into pages of 10.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::orderBy('updated_at','desc')->paginate(10);
        return view('posts.index')->with('posts',$posts);
    }

    /**
     * Show the form for creating a new resource.
     * Only returns if user is staff.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(auth()->user()->isAdmin()) {
            return view('posts.create');
        }
        return redirect('posts');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //Validate fields that are required and validate image is jpeg
        $this->validate($request, [
            'name' => 'required',
            'animal_type' => 'required',
            'dob' => 'required',
            'description' => 'required',
            'image' => 'image|mimes:jpg|nullable|max:1999'
        ]);

        //Create unique filename to store image, based on current time
        if($request->hasFile('image')){
            $fileNameWithExt = $request->file('image')->getClientOriginalName();
            $fileName = pathinfo($fileNameWithExt,PATHINFO_FILENAME);
            $extension = $request->file('image')->getClientOriginalExtension();
            $fileNameToStore = $fileName.'_'.time().'.'.$extension;
            $path = $request->file('image')->storeAs('public/images',$fileNameToStore);
        }else{
            $fileNameToStore = 'noimage.jpg';
        }

        $post = new Post;
        $post->name = $request->input('name');
        $post->animal_type = $request->input('animal_type');
        $post->dob = $request->input('dob');
        $post->description = $request->input('description');
        $post->user_id = auth()->user()->id;
        $post->image = $fileNameToStore;
        $post->owner_id = 0;
        $post->save();

        return redirect('/posts')->with('success', 'Post Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::find($id);
        return view('posts.show')->with('post',$post);
    }

    /**
     * Show the form for editing the specified resource.
     * Only allow if user is staff.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if(auth()->user()->isAdmin()) {
            $post = Post::find($id);
            return view('posts.edit')->with('post',$post);
        }
        return redirect('posts');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'animal_type' => 'required',
            'dob' => 'required',
            'description' => 'required'
        ]);

        if($request->hasFile('image')){
            $fileNameWithExt = $request->file('image')->getClientOriginalName();
            $fileName = pathinfo($fileNameWithExt,PATHINFO_FILENAME);
            $extension = $request->file('image')->getClientOriginalExtension();
            $fileNameToStore = $fileName.'_'.time().'.'.$extension;
            $path = $request->file('image')->storeAs('public/images',$fileNameToStore);
        }

        $post = Post::find($id);
        $post->name = $request->input('name');
        $post->animal_type = $request->input('animal_type');
        $post->dob = $request->input('dob');
        $post->description = $request->input('description');
        
        if($request->hasFile('image')){
            Storage::delete('public/images/'.$post->image);
            $post->image = $fileNameToStore;
        }
        $post->save();

        return redirect('/posts')->with('success', 'Post Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);
        if($post->image != 'noimage.jpg'){
            Storage::delete('public/images/'.$post->image);
        }
        $post->delete();
        return redirect('/posts')->with('success', 'Post Deleted');
    }
}