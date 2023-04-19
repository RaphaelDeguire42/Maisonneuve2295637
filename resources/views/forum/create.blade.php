@extends('layouts/app')
@section('title', trans('lang.text_createPost'))
@section('content')
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
        <label for="language">
            <span>@lang('lang.language')</span>
            <select name="language" id="language" required>
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