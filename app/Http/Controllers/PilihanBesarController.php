<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PilihanBesarController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $data_big_categories = DB::table('big_categories')->get();

        $sudahX = array_fill(0, 4, false);

        $check_categories_A = DB::table('results')
        ->where('user_id', $id)
        ->whereBetween('jenis_survei', [1, 2])
        ->count();

        if($check_categories_A == 2){
            $sudahX[0] = True;
        }

        $check_categories_B = DB::table('results')
        ->where('user_id', $id)
        ->whereBetween('jenis_survei', [3, 4])
        ->count();

        if($check_categories_B == 2){
            $sudahX[1] = True;
        }

        $check_categories_C = DB::table('results')
        ->where('user_id', $id)
        ->whereBetween('jenis_survei', [5, 6])
        ->count();

        if($check_categories_C == 2){
            $sudahX[2] = True;
        }

        $check_categories_D = DB::table('results')
        ->where('user_id', $id)
        ->whereBetween('jenis_survei', [7, 9])
        ->count();

        if($check_categories_D == 3){
            $sudahX[3] = True;
        }

        // var_dump($sudahX);
        $count_total_diisi = 0;
        $ii=0;
        for($ii = 0; $ii < 4; $ii++){
            if($sudahX[$ii] == True){
                $count_total_diisi++;
            }
        }


        return view('client.pilihan_besar')->with("big_categories", $data_big_categories)
        ->with('id_user', $id)->with('check', $sudahX)->with('total_diisi', $count_total_diisi);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
