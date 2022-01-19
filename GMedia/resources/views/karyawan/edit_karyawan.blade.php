@extends('layouts.app')
@section('content')

@if (session('success'))
  <div class="alert-success">
    <p>{{ session('success') }}</p>
  </div>
  @endif
  
  @if ($errors->any())
  <div class="alert-danger">
    <ul>
      @foreach ($errors->all() as $error)
      <li>{{ $error }}</li>
      @endforeach
    </ul>
  </div>
  @endif

<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Update Karyawan</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form method="post" action="{{ url('posts', $post->id ) }}">
              @csrf
              @method('PUT')
                <div class="card-body">
                <div class="form-group">
                    <input type="hidden" class="form-control" id="inputNip" placeholder="NIP" name="nip" value="{{ $post->nip }}">
                  </div>
                <div class="form-group">
                    <label for="inputName">Nama</label>
                    <input type="name" class="form-control" id="inputName" placeholder="Nama" name="nama" value="{{ $post->nama}}">
                  </div>
                  <div class="form-group">
                    <label for="inputAlamat">Alamat</label>
                    <input type="alamat" class="form-control" id="inputAlamat" placeholder="Enter alamat" name="alamat" value="{{ $post->alamat }}">
                  </div>
                
                  <div class="form-group">
                  <label for="inputStatus">Jenis Kelamin</label>
                        <select id="inputStatus" class="form-control custom-select" name="jenis_kelamin">
                            <option selected disabled value="{{ $post->jeniskelamin }}">{{ $post->jenis_kelamin }}</option>
                            <option>Laki-laki</option>
                            <option>Perempuan</option>
                </select>
                  
                </div>
                <div class="form-group">
                <label>Tanggal Lahir</label>

                <div class="input-group">
                  <div class="input-group-prepend">
                  </div>
                  <input type="date" name="tgl_lahir" value="{{ $post->tgl_lahir }}" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask>
                </div>
                <!-- /.input group -->
              </div>
              <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Update</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
            @endsection