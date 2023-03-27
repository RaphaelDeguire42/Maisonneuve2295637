<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EtudiantController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [EtudiantController::class, 'welcome'])->name('etudiant.welcome');
// show list of student
Route::get('/etudiant', [EtudiantController::class, 'index'])->name('etudiant.index');
// Show one student by id
Route::get('/etudiant/{etudiant}', [EtudiantController::class, 'show'])->name('etudiant.show');
// Create new student
Route::get('/create-etudiant', [EtudiantController::class, 'create'])->name('etudiant.create');
Route::post('/create-etudiant', [EtudiantController::class, 'store']);
// Update a student by id
Route::get('/edit-etudiant/{etudiant}', [EtudiantController::class, 'edit'])->name('etudiant.edit');
Route::put('/edit-etudiant/{etudiant}', [EtudiantController::class, 'update']);
// Delete a student
Route::delete('/delete-etudiant/{etudiant}', [EtudiantController::class, 'destroy'])->name('etudiant.destroy');
