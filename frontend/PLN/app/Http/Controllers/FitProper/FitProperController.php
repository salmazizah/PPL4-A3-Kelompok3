<?php

namespace App\Http\Controllers\FitProper;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Http;

class FitProperController extends Controller
{
    public function pendaftaran()
    {
        // $msg = "tidakAda";
        $pegawai = Http::get('http://localhost:1337/api/pegawais?populate=jabatan');
        return view('page.fitProper.pendaftaran', [
            "pegawai" => json_decode($pegawai)
        ]);
    }

    public function getPegawaiById($id)
    {
        $decryptId = Crypt::decryptString($id);
        $pegawai = Http::get('http://localhost:1337/api/pegawais/'.$decryptId.'?populate=*');
        return $pegawai;
    }

    public function pencarian()
    {
        $pegawai = Http::get('http://localhost:1337/api/pegawais?populate=jabatan');
        return view('page.fitProper.pencarian', [
            "pegawai" => json_decode($pegawai)
        ]);
    }

    public function pencarianById($id)
    {
        $decryptId = Crypt::decryptString($id);
        $pegawai = Http::get('http://localhost:1337/api/fit-propers?populate=*');
        return $pegawai;
    }
}