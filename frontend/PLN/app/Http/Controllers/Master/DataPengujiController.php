<?php

namespace App\Http\Controllers\Master;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DataPengujiController extends Controller
{
    public function index(){
        return view('page.master.dataPenguji');
    }
}
