@extends('layouts.app')
@section('title', 'Forum')
@section('content')
    @if(session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
    @endif
    <div class="forum">
    <div class="titleHeading">
        <h1>@lang('lang.text_forumTitle')</h1>
        <a href="{{ route('forum.create') }}">@lang('lang.text_createPost')</a>
    </div>
    @forelse ($posts as $post)
        <div class="post">
            <div class="post__header">
                <div class="post__topHeader">
                    <p>{{$post->title}}</p>
                    <span class="linkBlue">{{$post->created_at}}</span>
                </div>
                <div class="post__bottomHeader">
                    <a href="{{ route('etudiant.show', $post->postHasAuthor->id ) }}" class="linkBlue">Par : {{$post->postHasAuthor->name}}</a>
                </div>
            </div>
            <div class="post__content">
                <p>{{$post->content}}</p>
            </div>
            <div class="post__footer action">
                @if (session('user_id') == $post->postHasAuthor->id)
                    <a href="{{ route('forum.edit', $post->id ) }}" class="button">@lang('lang.text_edit')</a>
                    <form action="{{ route('forum.destroy', $post->id) }}" method="POST"> @csrf @method('DELETE')
                        <button class="button button--delete" type="submit">@lang('lang.text_delete')</button>
                    </form>
                @endif
            </div>
        </div>
    @empty
        <p>@lang('lang.text_noStudent')</p>
    @endforelse
    </div>
@endsection