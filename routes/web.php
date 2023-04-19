<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EtudiantController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ForumController;
use App\Http\Controllers\LocalizationController;


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

/**
 * Étudiants
 */
// show list of student
Route::get('/etudiant', [EtudiantController::class, 'index'])->name('etudiant.index')->middleware('auth');;
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


/**
 * Connexion
 */
Route::get('/login', [UserController::class, 'index'])->name('login');
Route::post('authentication', [UserController::class, 'authentication'])->name('authentication');
Route::get('logout', [UserController::class, 'logout'])->name('logout');

/**
 * Forum
 */
Route::get('/', [ForumController::class, 'index'])->name('forum.index')->middleware('auth');
// Show one student by id
Route::get('/forum/{forum}', [ForumController::class, 'show'])->name('forum.show');
// Create new student
Route::get('/create-forum', [ForumController::class, 'create'])->name('forum.create');
Route::post('/create-forum', [ForumController::class, 'store']);
// Update a student by id
Route::get('/edit-forum/{forum}', [ForumController::class, 'edit'])->name('forum.edit');
Route::put('/edit-forum/{forum}', [ForumController::class, 'update']);
// Delete a student
Route::delete('/delete-forum/{forum}', [ForumController::class, 'destroy'])->name('forum.destroy');




// Localization
Route::get('lang/{locale}', [LocalizationController::class, 'index'])->name('lang');