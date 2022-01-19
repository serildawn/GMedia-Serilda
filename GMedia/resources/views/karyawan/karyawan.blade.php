@extends('layouts.app')
@section('content')

@if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
    <br>
    <div class="container-fluid">
        <div class="row mb-6">
          <div class="col-12">
          <a href="{{url('posts/create')}}"><button  type="button" class="btn btn-primary float-right"><i class="fas fa-plus"></i>Tambah Karyawan</button></a>
          </div>
        </div><!-- /.row -->
        </div><!-- /.container-fluid -->
<div class="card-body">
                <table id="example" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>No</th>
                    <th>NIP</th>
                    <th>Nama</th>
                    <th>Alamat</th>
                    <th>Jenis Kelamin</th>
                    <th>Tanggal Lahir</th>
                    <th>Aksi</th>
                
                  </tr>
                  </thead>
                  <tbody>
                    @foreach ($posts as $post)
                    <tr>
                      <td>{{$post -> id }}</td>
                      <td>{{$post -> nip }}</td>
                      <td>{{$post -> nama }}</td>
                      <td>{{$post -> alamat}}</td>
                      <td>{{$post ->  jenis_kelamin }}</td>
                      <td>{{$post -> tgl_lahir }}</td>
                      <td>
                      <a class="btn btn-info btn-sm" href="{{ route('posts.edit', $post->id ) }}">
                              <i class="fas fa-pencil-alt">
                              </i>
                              Edit
                          </a>
                        
                        
                          <form method="POST" action="{{ url('posts', $post->id ) }}" onsubmit="return confirm ('Apakah anda yakin menghapus data ini ?')">
                            @csrf
                            @method('DELETE')
                            <button class="btn btn-danger btn-sm">Delete</button>
                          </form>
                          <!-- <a class="btn btn-danger btn-sm" href="#">
                              <i class="fas fa-trash">
                              </i>
                              Delete
                          </a>    -->
                          </td>
                    </tr>
                    @endforeach
                  </tbody>
                  <tfoot>
                  
                  </tfoot>
                </table>
              </div>
@endsection