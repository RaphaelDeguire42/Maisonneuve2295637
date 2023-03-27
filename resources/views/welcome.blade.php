@extends('layouts/app')
@section('title', 'Accueil')
@section('content')

<header>
    <h1>Administration des étudiants</h1>
    <a class="button glow" href="{{ route("etudiant.index")}} ">Voir la liste des étudiants</a>
</header>

@endsection