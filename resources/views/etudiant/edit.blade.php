@extends('layouts/app')
@section('title', 'Modifier un étudiant')
@section('content')
 <form class="form-labels-on-top" method="post" action="#">
    @csrf
    @method('put')
    <div class="form-title-row">
        <h1>Modifier un étudiant</h1>
    </div>
    <div class="form-row">
        <label for="name">
            <span>Nom</span>
            <input type="text" id="name" name="name" value="{{ $etudiant->name }}" required>
        </label>
    </div>
    <div class="form-row">
        <label for="email">
            <span>Courriel</span>
            <input type="email" id="email" name="email" value="{{ $etudiant->email }}" required>
        </label>
    </div>
    <div class="form-row">
        <label for="phone">
            <span>Téléphone (XXX-XXX-XXXX)</span>
            <input type="tel" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" value="{{ $etudiant->phone }}" required>
        </label>
    </div>
    <div class="form-row">
        <label for="adress">
            <span>Adresse</span>
            <textarea type="text" id="adress" name="adress" required>{{ $etudiant->adress }}</textarea>
        </label>
    </div>
    <div class="form-row">
        <label for="date_of_birth">
            <span>Date de naissance</span>
            <input type="date" id="date_of_birth" name="date_of_birth" value="{{ $etudiant->date_of_birth }}" required>
        </label>
    </div>
    <div class="form-row">
        <label for="ville">
            <span>Ville</span>
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
        <a href="/etudiant" type="button" class="button button--neutral">Retour</a>
        <button type="submit" class="button">Modifier</button>
    </div>
</form>


@endsection