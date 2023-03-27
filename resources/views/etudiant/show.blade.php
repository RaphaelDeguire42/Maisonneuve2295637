@extends('layouts.app')
@php $name = $etudiant->name; @endphp
@section('title', $name)
@section('content')

<div class="wrapper table">
    <h2>{{ $etudiant->name }}</h2>
    <div class="table__content info">
        <p class="table__row">Date de naissance: <span class="info__data">{{ $etudiant->date_of_birth }}</span></p>
        <p class="table__row">Téléphone: <span class="info__data">{{ $etudiant->phone }}</span></p>
        <p class="table__row">Courriel: <span class="info__data">{{ $etudiant->email }}</span></p>
        <p class="table__row">Adresse: <span class="info__data adress">{{ $etudiant->adress }}</span></p>
        <p class="table__row">Ville: <span class="info__data">{{ $etudiant->etudiantHasVille->name}}</span></p>
    </div>
    <div class="action">
        <a href="{{ route('etudiant.index') }}" type="button" class="button button--neutral">Retour</a>
        <a href="{{ route('etudiant.edit', $etudiant->id ) }}" class="button">Modifier</a>
        <form action="{{ route('etudiant.destroy', $etudiant->id) }}" method="POST"> @csrf @method('DELETE')
                    <button class="button button--delete" type="submit">Supprimer</button>
        </form>
    </div>
</div>

@endsection('content')
