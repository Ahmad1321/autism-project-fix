<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Result;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PilihanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index($id_categories, $id_user)
    {
        $sudah = DB::table('results')->where('user_id', '=', $id_user)->get();
        $data_categories = DB::table('categories')->where('id_big_categories', '=', $id_categories)->get();


        $awal = 0;
        if ($id_categories == 1) {
            $awal = 0;
        } else if ($id_categories == 2) {
            $awal = 2;
        } else if ($id_categories == 3) {
            $awal = 4;
        } else if ($id_categories == 4) {
            $awal = 6;
        }
        
        $data = array_fill($awal, count($data_categories), false);

        $i = 0;
        foreach ($sudah as $s) {
            $data[$s->jenis_survei - 1] = true;
            $i++;
        }

        $finish = false;
        if ($i >= count($data_categories)) {
            $finish = true;
        }
        // var_dump($data);
        return view('client.pilihan')->with('awal', $awal)->with('data_categories', $data_categories)->with('sudah', $data)->with('finish', $finish)->with('id_user', $id_user);
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
