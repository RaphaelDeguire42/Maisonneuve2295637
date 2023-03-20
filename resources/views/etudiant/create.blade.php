@extends('layouts/app')
@section('title', 'Créer un étudiant')
@section('content')
 <form class="form-labels-on-top" method="post" action="#">
    @csrf
    <div class="form-title-row">
        <h1>Créer un étudiant</h1>
    </div>
    <div class="form-row">
        <label for="name">
            <span>Nom</span>
            <input type="text" id="name" name="name" required>
        </label>
    </div>
    <div class="form-row">
        <label for="email">
            <span>Courriel</span>
            <input type="email" id="email" name="email" required>
        </label>
    </div>
    <div class="form-row">
        <label for="phone">
            <span>Téléphone (XXX-XXX-XXXX)</span>
            <input type="tel" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required>
        </label>
    </div>
    <div class="form-row">
        <label for="adress">
            <span>Adresse</span>
            <textarea type="text" id="adress" name="adress" required></textarea>
        </label>
    </div>
    <div class="form-row">
        <label for="date_of_birth">
            <span>Date de naissance</span>
            <input type="date" id="date_of_birth" name="date_of_birth" required>
        </label>
    </div>
    <div class="form-row">
        <label for="ville">
            <span>Ville</span>
            <select name="ville" id="ville" required>
                @foreach ($villes as $ville)
                    <option value="{{ $ville->id }}">{{ $ville->name }}</option>
                @endforeach
            </select>
        </label>
    </div>
    <div class="form-row">

        <a href="/etudiant" class="button button--neutral">Retour</a>
        <button type="submit" class="button">Créer</button>
    </div>
</form>

@endsection