@extends('layouts/app')
@section('title', 'Liste des étudiants')
@section('content')

<div class="wrapper table">
    <h1 class="table__title">Liste des étudiants</h1>
    <div class="action">
        <a href="/" type="button" class="button button--neutral">Retour</a>
        <a href="/create-etudiant" class="button button--neutral">Ajouter un étudiant</a>
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
                <a href="{{ route('etudiant.edit', $etudiant->id ) }}" class="button">Modifier</a>
                <form action="{{ route('etudiant.destroy', $etudiant->id) }}" method="POST"> @csrf @method('DELETE')
                    <button class="button button--delete" type="submit">Supprimer</button>
                </form>
            </div>
        </li>
        @empty
        <li class="table__row">
            <p>Aucun étudiant pour le moment...</p>
        </li>
        @endforelse
    </ul>
{{$etudiants}}
</div>
@endsection

