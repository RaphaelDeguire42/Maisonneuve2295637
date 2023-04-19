<?php

namespace App\Http\Controllers;

use App\Models\Forum;
use App\Models\Langue;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ForumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $langue_id = session('locale') == 'fr'? 2: 1;
        $posts = Forum::select()->where('langue_id', $langue_id)->get();
        return view('forum.index',['posts' => $posts]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $langues = Langue::langueSelect();
        return view('forum.create', ['form' => true, 'langues' => $langues]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $forum = Forum::create([
            'title' => $request->title,
            'content'  => $request->content,
            'langue_id' => $request->language,
            'etudiant_id' =>  Auth::user()->id
        ]);
        return redirect(route('forum.show', $forum->id));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function show(Forum $forum)
    {
        return view('forum.show',['forum' => $forum]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function edit(Forum $forum)
    {
        if($forum->etudiant_id != Auth::user()->id){
            return redirect(route('forum.show', $forum->id));
        }
        $langues = Langue::langueSelect();
        return view('forum.edit', [
            'forum' => $forum,
            'langues'   => $langues,
            'form'     => true
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Forum $forum)
    {
        $forum->update([
            'title' => $request->title,
            'content'  => $request->content,
            'langue_id' => $request->language,
            'etudiant_id' =>  Auth::user()->id
        ]);
        return redirect(route('forum.show', $forum->id));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function destroy(Forum $forum)
    {
        $forum->delete();
        return redirect()->route('forum.index')->with('success', 'Deleted !');
    }
}
