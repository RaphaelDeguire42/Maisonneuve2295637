@extends('layouts/app')
@section('title', trans('lang.text_createPost'))
@section('content')
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
 <form class="form-labels-on-top" method="post" action="#">
    @csrf
    <div class="form-title-row">
        <h1>{{trans('lang.text_createPost')}}</h1>
    </div>
    <div class="form-row">
        <label for="title">
            <span>@lang('lang.title')</span>
            <input type="text" id="title" name="title" required>
        </label>
    </div>
    <div class="form-row">
        <label for="content">
            <span>Message</span>
            <textarea name="content"></textarea>
        </label>
    </div>
    <div class="form-row">
        <label for="langue_id">
            <span>@lang('lang.language')</span>
            <select name="langue_id" id="langue_id" required>
                @foreach ($langues as $langue)
                    <option value="{{ $langue->id }}">{{ $langue->langue }}</option>
                @endforeach
            </select>
        </label>
    </div>
    <div class="form-row">
        <a href="{{ route('forum.index') }}" class="button button--neutral">@lang('lang.text_goback')</a>
        <button type="submit" class="button">@lang('lang.text_create')</button>
    </div>
</form>

@endsection