@extends('layouts/app')
@section('title', trans('lang.text_createStudent'))
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
        <h1>@lang('lang.text_createStudent')</h1>
    </div>
    <div class="form-row">
        <label for="name">
            <span>@lang('lang.text_name')</span>
            <input type="text" id="name" name="name" required>
        </label>
    </div>
    <div class="form-row">
        <label for="email">
            <span>@lang('lang.text_email')</span>
            <input type="email" id="email" name="email" required>
        </label>
    </div>
    <div class="form-row">
        <label for="phone">
            <span>@lang('lang.text_phone') (XXX-XXX-XXXX)</span>
            <input type="tel" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required>
        </label>
    </div>
    <div class="form-row">
        <label for="adress">
            <span>@lang('lang.text_adress')</span>
            <textarea type="text" id="adress" name="adress" required></textarea>
        </label>
    </div>
    <div class="form-row">
        <label for="date_of_birth">
            <span>@lang('lang.text_dateOfBirth')</span>
            <input type="date" id="date_of_birth" name="date_of_birth" required>
        </label>
    </div>
    <div class="form-row">
        <label for="ville">
            <span>@lang('lang.text_city')</span>
            <select name="ville" id="ville" required>
                @foreach ($villes as $ville)
                    <option value="{{ $ville->id }}">{{ $ville->name }}</option>
                @endforeach
            </select>
        </label>
    </div>
    <div class="form-row">
        <label for="password">
            <span>@lang('lang.text_password')</span>
            <input type="password" id="password" name="password" required>
        </label>
    </div>
    <div class="form-row">
        <label for="password_confirmation">
            <span>@lang('lang.text_passwordConfirm')</span>
            <input type="password" id="password_confirmation" name="password_confirmation" required>
        </label>
    </div>

    <div class="form-row">
        <a href="{{ route('etudiant.index') }}" class="button button--neutral">@lang('lang.text_goback')</a>
        <button type="submit" class="button">@lang('lang.text_create')</button>
    </div>
</form>

@endsection