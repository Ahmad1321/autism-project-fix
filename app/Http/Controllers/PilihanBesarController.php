<?php

namespace App\Http\Controllers;

use App\Models\ResultBigCategories;
use Illuminate\Contracts\Session\Session;
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

        $check_result = 0;
      


        return view('client.pilihan_besar')->with("big_categories", $data_big_categories)
        ->with('id_user', $id)->with('check', $sudahX)->with('total_diisi', $count_total_diisi)
        ->with('check_result', $check_result);
    }

    public function fillResult($id_big_categories, $id_user){
        $data_big_result = DB::table('result_big_categories')
        ->where('id_big_categories', $id_big_categories)
        ->where('id_user', $id_user)
        ->get();

        $check_data = count($data_big_result);
        
        $name_big_categories = DB::table('big_categories')
        ->where('id', $id_big_categories)->get();

        if($id_big_categories == 1){
            $data_hasil = DB::table('results')
        ->where('user_id', $id_user)
        ->whereBetween('jenis_survei', [1,2])
        ->get();    
        }else if($id_big_categories == 2){
            $data_hasil = DB::table('results')
        ->where('user_id', $id_user)
        ->whereBetween('jenis_survei', [3,4])
        ->get();    
        }else if($id_big_categories == 3){
            $data_hasil = DB::table('results')
        ->where('user_id', $id_user)
        ->whereBetween('jenis_survei', [5,6])
        ->get();    
        }else if($id_big_categories == 4){
            $data_hasil = DB::table('results')
        ->where('user_id', $id_user)
        ->whereBetween('jenis_survei', [7,9])
        ->get();    
        }

        $sum = 0;
        foreach($data_hasil as $a){
            $sum += $a->total_points;
        }

        $data_users = DB::table('data_users')
        ->where('id', $data_hasil[0]->user_id)
        ->get();

        $categories = DB::table('categories')->get();
        $big_categories = DB::table('big_categories')->get();

        if($check_data == 0){
            return view('client.isi_komentar_divisi')->with('name', $name_big_categories)
        ->with('data_result', $data_hasil)->with('sum', $sum)->with('categories', $categories)
        ->with('id_big_categories', $id_big_categories)
        ->with('id_user', $id_user);
        }else if($check_data != 0){
            return view('client.konfirmasi_kesimpulan_selesai')
            ->with('id_user', $id_user)
            ->with('d1', $data_big_result)
            ->with('d2', $data_hasil)
            ->with('c', $categories)
            ->with('bc', $big_categories)
            ->with('du', $data_users);
            }
        
    }

    public function getResult($id_user, $id_big_categories){
        $data_big_result = DB::table('result_big_categories')
        ->where('id_user', $id_user)
        ->where('id_big_categories', $id_big_categories)
        ->get();

        if($id_big_categories == 1){
            $data_result_test = DB::table('results')
        ->where('user_id', $id_user)
        ->whereBetween('jenis_survei', [1,2])
        ->get();
        }else if($id_big_categories ==2){
            $data_result_test = DB::table('results')
        ->where('user_id', $id_user)
        ->whereBetween('jenis_survei', [3,4])
        ->get();
        }else if($id_big_categories ==3){
            $data_result_test = DB::table('results')
        ->where('user_id', $id_user)
        ->whereBetween('jenis_survei', [5,6])
        ->get();
        }else if($id_big_categories ==4){
            $data_result_test = DB::table('results')
        ->where('user_id', $id_user)
        ->whereBetween('jenis_survei', [7,9])
        ->get();
        }

        $categories = DB::table('categories')->get();
        $big_categories = DB::table('big_categories')->get();
        
        $data_users = DB::table('data_users')
        ->where('id', $data_result_test[0]->user_id)
        ->get();

        return view('client.hasil_perkategori')
        ->with('d1', $data_big_result)
        ->with('d2', $data_result_test)
        ->with('c', $categories)
        ->with('du', $data_users)
        ->with('bc', $big_categories);


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
    public function store(Request $request, $id_big_categories, $id_user)
    {
        $result = ResultBigCategories::create([
            'id_user' => $id_user,
            'id_big_categories' => $id_big_categories,
            'total_result' => $request->total_result,
            'kesimpulan' => $request->kesimpulan
        ]);

        $check_result = 1;

        return redirect("/pilihan_besar/$id_user")
        ->with('check_result', $check_result);
        // echo $request->total_result;
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
