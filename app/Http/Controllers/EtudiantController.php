<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Ville;
use Illuminate\Support\Facades\Hash;

class EtudiantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $etudiants = Etudiant::select()->paginate(7);
        return view('etudiant.index',['etudiants' => $etudiants]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $villes = Ville::all();
        return view('etudiant.create', ['villes'=>$villes, 'form' => true]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:etudiants',
            'phone' => 'required|string|max:20',
            'adress' => 'required|string|max:255',
            'date_of_birth' => 'required|date',
            'ville' => 'required|exists:villes,id',
            'password' => 'required|max:20|min:6|confirmed'
        ]);

        $etudiant = Etudiant::create([
            'name' => $request->name,
            'email'  => $request->email,
            'phone' => $request->phone,
            'adress' => $request->adress,
            'date_of_birth' =>$request->date_of_birth,
            'ville_id' => $request->ville
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->etudiant_id = $etudiant->id;
        $user->save();

        return redirect(route('etudiant.show', $etudiant->id));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function show(Etudiant $etudiant)
    {
        return view('etudiant.show',['etudiant' => $etudiant]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function edit(Etudiant $etudiant)
    {
        $villes = Ville::all();
        return view('etudiant.edit', [
            'etudiant' => $etudiant,
            'villes'   => $villes,
            'form'     => true
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Etudiant $etudiant)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:etudiants',
            'phone' => 'required|string|max:20',
            'adress' => 'required|string|max:255',
            'date_of_birth' => 'required|date',
            'ville' => 'required|exists:villes,id',
        ]);

        $etudiant->update([
            'name' => $request->name,
            'email'  => $request->email,
            'phone' => $request->phone,
            'adress' => $request->adress,
            'date_of_birth' => $request->date_of_birth,
            'ville_id' => $request->ville
        ]);
        return redirect(route('etudiant.show', $etudiant->id));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function destroy(Etudiant $etudiant)
    {

        $etudiant->delete();
        return redirect()->route('etudiant.index')->with('success', trans('lang.text_studentDeleted'));
    }
}
