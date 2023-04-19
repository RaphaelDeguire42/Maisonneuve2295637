@extends('layouts.app')
@php $title = $forum->title; @endphp
@section('title', $title)
@section('content')
    @if(session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
    @endif
    <div class="forum">
    <div>
        <h1>@lang('lang.text_forumTitle')</h1>
        <div class='action'>
            <a href="{{ route('forum.index') }}" type="button" class="button button--neutral">@lang('lang.text_goback')</a>
            <a href="{{ route('forum.create') }}" class="button button--neutral">@lang('lang.text_createPost')</a>
        </div>
    </div>
        <div class="post">
            <div class="post__header">
                <div class="post__topHeader">
                    <p>{{$forum->title}}</p>
                    <span>{{$forum->created_at}}</span>
                </div>
                <div class="post__bottomHeader">
                    <p>Par : {{$forum->postHasAuthor->name}}</p>
                </div>
            </div>
            <div class="post__content">
                <p>{{$forum->content}}</p>
            </div>
            <div class="post__footer action">
                @if (session('user_id') == $forum->postHasAuthor->id)
                    <a href="{{ route('forum.edit', $forum->id ) }}" class="button">@lang('lang.text_edit')</a>
                    <form action="{{ route('forum.destroy', $forum->id) }}" method="POST"> @csrf @method('DELETE')
                        <button class="button button--delete" type="submit">@lang('lang.text_delete')</button>
                    </form>
                @endif
            </div>
        </div>
    </div>

@endsection('content')
