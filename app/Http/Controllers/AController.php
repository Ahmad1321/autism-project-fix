<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\FinalResult;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AController extends Controller
{
  public function index($id)
  {
    $finalResults = DB::table('finalresult')
      ->where('id_user', '=', $id)
      ->get();

    $results = DB::table('results')
    ->where('user_id', '=', $id)
    ->get();

    $datauser = DB::table('data_users')
      ->where('id', $id)
      ->get();

    $survei = Category::all();
      
    return view('client.newfinalresults', compact('finalResults'))
    ->with('datauser', $datauser)
    ->with('results', $results)
    ->with('survei', $survei);
  }
}
