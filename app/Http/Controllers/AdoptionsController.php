<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Adoption;
use App\Post;
use App\User;

class AdoptionsController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     * If regular user only returns said users requests.
     * If admin returns all.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $adoptions = Adoption::orderBy('updated_at','desc')->paginate(10);
        if(!auth()->user()->isAdmin()) {
            $adoptions = Adoption::orderBy('updated_at','desc')->where('user_id',auth()->user()->id)->paginate(10);
        }
        return view('adoptions.index')->with('adoptions',$adoptions);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return redirect('adoptions');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'message' => 'required'
        ]);

        $adoption = new Adoption;
        $adoption->user_id = auth()->user()->id;
        $adoption->post_id = $request->input('post_id');
        $adoption->approved = 'Under Review';
        $adoption->message = $request->input('message');
        $adoption->save();

        return redirect('/adoptions')->with('success', 'Adoption Request Submitted');
    }

    /**
     * Display the specified resource.
     * If admin displays applicants details.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $adoption = Adoption::find($id);
        $post = Post::find($adoption->post_id);
        if(auth()->user()->isAdmin()) {
            $user = User::find($adoption->user_id);
            return view('adoptions.show')->with('adoption',$adoption)->with('user',$user)->with('post',$post);
        }
        if($adoption->user_id==auth()->user()->id){
            return view('adoptions.show')->with('adoption',$adoption)->with('post',$post);
        }else{
            return redirect('/adoptions');
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $adoption = Adoption::find($id);
        return view('adoptions.edit')->with('adoption',$adoption);
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
            'message' => 'required',
            'approved' => 'required'
        ]);

        $adoption = Adoption::find($id);
        $adoption->message = $request->input('message');
        $adoption->approved = $request->input('approved');

        //If application approved
        if($adoption->approved=='A'){
            $post = Post::find($adoption->post_id);

            //Check if animal has owner
            if($post->owner_id!=0){
                return redirect('/adoptions')->with('error', 'Animal has already been adopted');
            }
            
            //Assign animal owner
            $post->owner_id = $adoption->user_id;
            $post->save();

            $this_post_id = $adoption->post_id;
            $adoptions = Adoption::all()->where('id','!=',$adoption->id);
            //Deny all other adoption requests for this animal
            foreach($adoptions as $adopt){
                if($this_post_id==$adopt->post_id){
                    $adopt->approved = 'D';
                    $adopt->save();
                }
            }
        }

        $adoption->save();
        return redirect('/adoptions')->with('success', 'Adoption Request Updated');
    }

    /**
     * Remove the specified resource from storage.
     * Adoption requests are not deleted to keep a record of Users requests.
     * This is incase of abusive owner etc.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function adopt($id)
    {
        $post_id = $id;
        return view('posts.adopt')->with('post_id',$post_id);
    }
}
