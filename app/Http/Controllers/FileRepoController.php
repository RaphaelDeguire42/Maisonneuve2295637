<?php

namespace App\Http\Controllers;

use App\Models\FileRepo;
use App\Models\Langue;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class FileRepoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $langue_id = session('locale') == 'fr'? 2: 1;
        $files = FileRepo::select()->where('langue_id', $langue_id)->paginate(5);
        return view('fileRepo.index',['files' => $files]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $langues = Langue::langueSelect();
        return view('fileRepo.create', ['form' => true, 'langues' => $langues]);
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
            'title' => 'required|string|max:255',
            'file' => 'required|file|mimes:doc,docx,pdf,zip',
            'language' => 'required|exists:langues,id'
        ]);

        $originalFilename = $request->file('file')->getClientOriginalName();
        $sanitizedFilename = preg_replace('/[^A-Za-z0-9\_\-\.]/', '', $originalFilename);
        $filename = time() . '_' . $sanitizedFilename;

        $path = $request->file('file')->storeAs('uploads', $filename, 'public');

        // Create a new file record in the database
        $file = new FileRepo;
        $file->title = $request->input('title');
        $file->path = 'storage/'.$path;
        $file->langue_id = $request->input('language');
        $file->etudiant_id = session('user_id');
        $file->save();

        // Redirect back to the file repository index page
        return redirect()->route('fileRepo.index')->with('success', trans('lang.text_fileUploaded'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\FileRepo  $fileRepo
     * @return \Illuminate\Http\Response
     */
    public function show(FileRepo $fileRepo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\FileRepo  $fileRepo
     * @return \Illuminate\Http\Response
     */
    public function edit(FileRepo $fileRepo)
    {
        if($fileRepo->etudiant_id != session('user_id')){
            return redirect(route('fileRepo.index', $fileRepo->id));
        }
        $langues = Langue::langueSelect();
        return view('fileRepo.edit', [
            'file' => $fileRepo,
            'langues'   => $langues,
            'form'     => true
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\FileRepo  $fileRepo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, FileRepo $fileRepo)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'language' => 'required|exists:langues,id'
        ]);

        $fileRepo->update([
            'title' => $request->title,
            'langue_id' => $request->language,
        ]);

        return redirect()->route('fileRepo.index')->with('success', trans('lang.text_fileUpdated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\FileRepo  $fileRepo
     * @return \Illuminate\Http\Response
     */
    public function destroy(FileRepo $fileRepo)
    {
        Storage::disk('public')->delete($fileRepo->path);
        $fileRepo->delete();

        // Redirect back to the file repository index page
        return redirect()->route('fileRepo.index')->with('success', trans('lang.text_fileDeleted'));
    }
}
