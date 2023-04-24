@extends('layouts.app')
@section('title', trans('lang.text_fileRepo'))
@section('content')
    @if(session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
    @endif
    <div class="forum">
        <div class="heading">
            <h1 class="whiteText">@lang('lang.text_fileRepo')</h1>
            <a href="{{ route('fileRepo.create') }}" class="button button--black button--glow">@lang('lang.text_createFile')</a>
        </div>
    </div>
    <div class="table">
        <ul class="table__content">
        @forelse ($files as $file)
            <li class="table__row">
                @php $extension = substr($file->path, strrpos($file->path, '.') + 1); @endphp
                <p><a href="{{$file->path}}" class="linkBlue">{{$file->title}} ({{strtoupper($extension)}})</a></p>
                <p><a href="{{ route('etudiant.show', $file->fileHasStudent->id ) }}" class="">@lang('lang.text_by') : {{$file->fileHasStudent->name}}</a></p>

                @if (session('user_id') == $file->fileHasStudent->id)
                <div class="action">
                    <a href="{{ route('fileRepo.edit', $file->id ) }}" class="button">@lang('lang.text_edit')</a>
                    <form action="{{ route('fileRepo.destroy', $file->id) }}" method="POST"> @csrf @method('DELETE')
                        <button class="button button--delete" type="submit">@lang('lang.text_delete')</button>
                    </form>
                </div>
                @endif
            </li>
            @empty
            <li class="table__row">
                <p>@lang('lang.text_noFile')</p>
            </li>
            @endforelse
        </ul>
        {{$files}}
    </div>
@endsection