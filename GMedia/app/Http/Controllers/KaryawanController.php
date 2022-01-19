<?php

namespace App\Http\Controllers;

use App\Models\Karyawan;
use Illuminate\Http\Request;

class KaryawanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Karyawan::all();
        return view('karyawan.karyawan',['posts' => $posts]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('karyawan.createkaryawan');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request -> validate([
            'nip' => 'required',
            'nama' => 'required',
            'alamat' => 'required',
            'jenis_kelamin' => 'required',
            'tgl_lahir' => 'required',
        ]);

        $input = $request->all();
        $post = Karyawan::create($input);

        if($post){
            return redirect()->route('posts.index')->with('success',' Karyawan baru berhasil dibuat.');
        }else{
            return back()->with('error',' Karyawan baru gagal dibuat.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Karyawan::findOrFail($id);
        return view('karyawan.edit_karyawan',[
            'post' => $post
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request -> validate([
            'nip' => 'required',
            'nama' => 'required',
            'alamat' => 'required',
            'jenis_kelamin' => 'required',
            'tgl_lahir' => 'required',
        ]);

        $post = Karyawan::find($id)->update($request->all());

        if($post){
            return redirect()->route('posts.index')->with('success',' Karyawan berhasil diupdate.');
        }else{
            return back()->with('error',' Karyawan gagal diupdate.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Karyawan::find($id);
        $post -> delete();
        return back()->with('success','Karyawan berhasil didelete');
    }
}
