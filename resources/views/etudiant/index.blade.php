@extends('layouts/app')
@section('title', trans('lang.text_studentList'))
@section('content')

<div class="table">
    <div class="heading">
        <h1 class="whiteText">@lang('lang.text_studentList')</h1>
        <a href="{{ route('etudiant.create') }}" class="button button--black button--glow">@lang('lang.text_createStudent')</a>
    </div>
    <!-- Retour de succes si l'étudiant est bien supprimé -->
    @if(session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
    @endif
    <ul class="table__content">
        @forelse ($etudiants as $etudiant)
        <li class="table__row">
            <a href="{{ route('etudiant.show', $etudiant->id ) }}">{{ $etudiant->name }}</a>
            <div class="action">
                <a href="{{ route('etudiant.edit', $etudiant->id ) }}" class="button">@lang('lang.text_edit')</a>
                <form action="{{ route('etudiant.destroy', $etudiant->id) }}" method="POST"> @csrf @method('DELETE')
                    <button class="button button--delete" type="submit">@lang('lang.text_delete')</button>
                </form>
            </div>
        </li>
        @empty
        <li class="table__row">
            <p>@lang('lang.text_noStudent')</p>
        </li>
        @endforelse
    </ul>
{{$etudiants}}
</div>
@endsection

