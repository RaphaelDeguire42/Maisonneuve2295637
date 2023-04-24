@extends('layouts/app')
@section('title', trans('lang.text_editFile'))
@section('content')

@php $lang= $file->langue_id; @endphp

@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

 <form class="form-labels-on-top" method="post">
    @csrf
    @method('put')
    <div class="form-title-row">
        <h1>{{trans('lang.text_createFile')}}</h1>
    </div>
    <div class="form-row">
        <label for="title">
            <span>@lang('lang.title')</span>
            <input type="text" id="title" name="title" value="{{$file->title}}" required>
        </label>
    </div>
    <div class="form-row">
        <label for="language">
            <span>@lang('lang.language')</span>
            <select name="language" id="language" required>
                @foreach ($langues as $langue)
                    <option value="{{ $langue->id }}" @php if($lang == $langue->id) echo 'selected'; @endphp >{{ $langue->langue }}</option>
                @endforeach
            </select>
        </label>
    </div>
    <div class="form-row">
        <a href="{{ route('fileRepo.index') }}" class="button button--neutral">@lang('lang.text_goback')</a>
        <button type="submit" class="button" name="uploadFile">@lang('lang.text_create')</button>
    </div>
</form>

@endsection