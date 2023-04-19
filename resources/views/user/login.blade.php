@extends('layouts.app')
@section('title', 'Login')
@section('content')
<div class="container">
    <div class="row mt-5 justify-content-center">
        <div class="col-lg-6">
            @if(!$errors->isEmpty())
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
                </ul>
            </div>
            @endif
            <form action="{{route('authentication')}}" method="post" class="form-labels-on-top">
                @csrf
                <div class="form-title-row">
                    <h1>@lang('lang.text_login')</h1>
                </div>
                    <div class="form-row">
                        <label for="email">
                            <span>@lang('lang.text_email')</span>
                            <input type="email" id="email" name="email" value="{{old('email')}}" required>
                        </label>
                    </div>
                    <div class="form-row">
                        <label for="password">
                            <span>@lang('lang.text_password')</span>
                            <input type="password" id="password" name="password" required>
                        </label>
                    </div>
                    <div class="form-row">
                            <button type="submit">@lang('lang.text_login')</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

</form>
@endsection