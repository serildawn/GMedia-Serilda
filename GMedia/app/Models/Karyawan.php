<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Karyawan extends Model
{
    use HasFactory;

    protected $table  = "pesertas";
    protected $fillable = [
        'nip', 'nama', 'alamat', 'jenis_kelamin', 'tgl_lahir'
    ];

   
}
