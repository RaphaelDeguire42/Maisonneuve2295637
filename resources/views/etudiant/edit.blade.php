@extends('layouts/app')
@section('title', trans('lang.text_editStudent'))
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
    @method('put')
    <div class="form-title-row">
        <h1>@lang('lang.text_editStudent')</h1>
    </div>
    <div class="form-row">
        <label for="name">
            <span>@lang('lang.text_name')</span>
            <input type="text" id="name" name="name" value="{{ $etudiant->name }}" required>
        </label>
    </div>
    <div class="form-row">
        <label for="email">
            <span>@lang('lang.text_email')</span>
            <input type="email" id="email" name="email" value="{{ $etudiant->email }}" required>
        </label>
    </div>
    <div class="form-row">
        <label for="phone">
            <span>@lang('lang.text_phone') (XXX-XXX-XXXX)</span>
            <input type="tel" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" value="{{ $etudiant->phone }}" required>
        </label>
    </div>
    <div class="form-row">
        <label for="adress">
            <span>@lang('lang.text_adress')</span>
            <textarea type="text" id="adress" name="adress" required>{{ $etudiant->adress }}</textarea>
        </label>
    </div>
    <div class="form-row">
        <label for="date_of_birth">
            <span>@lang('lang.text_dateOfBirth')</span>
            <input type="date" id="date_of_birth" name="date_of_birth" value="{{ $etudiant->date_of_birth }}" required>
        </label>
    </div>
    <div class="form-row">
        <label for="ville">
            <span>@lang('lang.text_city')</span>
            <select name="ville" id="ville" required>
                @foreach ($villes as $ville)
                    @if ($etudiant->ville_id == $ville->id)
                    <option value="{{ $ville->id }}" selected>{{ $ville->name }}</option>
                    @else
                    <option value="{{ $ville->id }}">{{ $ville->name }}</option>
                    @endif
                @endforeach
            </select>
        </label>
    </div>
    <div class="action">
        <a href="{{ route('etudiant.index') }}" type="button" class="button button--neutral">@lang('lang.text_goback')</a>
        <button type="submit" class="button">@lang('lang.text_save')</button>
    </div>
</form>


@endsection