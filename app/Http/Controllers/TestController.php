<?php

namespace App\Http\Controllers;

use App\Models\Option;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreTestRequest;
use App\Models\DataUser;
use App\Models\Result;
use Illuminate\Support\Facades\DB;

class TestController extends Controller
{
    public function index($id)
    {
        $categories = Category::with(['categoryQuestions' => function ($query) {
            $query->inRandomOrder()
                ->with(['questionOptions' => function ($query) {
                    $query->inRandomOrder();
                }]);
        }])
            ->whereHas('categoryQuestions')
            ->where('id', $id)
            ->get();

        return view('client.test', compact('categories'));
    }

    public function store(StoreTestRequest $request)
    {
        $options = Option::find(array_values($request->input('questions')));
        $hasil = "";
        if ($options->sum('points') >= 30 && $options->sum('points') <= 60) {
            $hasil = "B";
        } else if ($options->sum('points') > 60 && $options->sum('points') <= 80) {
            $hasil = "C";
        } else if ($options->sum('points') > 80 ) {
            $hasil = "D";
        } else {
            $hasil = "A";
        }

        $result = auth()->user()->userResults()->create([
            'total_points' => $options->sum('points'),
            'username' => $request->input('nama-text'),
            'hasil_survei' => $hasil
        ]);

        $questions = $options->mapWithKeys(function ($option) {
            return [
                $option->question_id => [
                    'option_id' => $option->id,
                    'points' => $option->points
                ]
            ];
        })->toArray();

        $result->questions()->sync($questions);

        return redirect()->route('client.results.show', $result->id);
    }

    public function storeWithId(StoreTestRequest $request, $survei, $id)
    {
        $options = Option::find(array_values($request->input('questions')));
        $total_result = 0;
        if($survei == 1){
            $total_result = 140.8;    
        }else if($survei == 2){
            $total_result = 141.4;
        }else if($survei == 3){
            $total_result = 129.9;   
        }else if($survei == 4){
            $total_result = 125.8;   
        }else if($survei == 5){
            $total_result = 146.6;
        }else if($survei == 6){
            $total_result = 115.5;
        }else if($survei == 7){
            $total_result = 60.3;
        }else if($survei == 8){
            $total_result = 58;    
        }else if($survei == 9){
            $total_result = 91.9;   
        }

        $hasil = "";
        if ($options->sum('points') <= ($total_result/3)) {
            $hasil = "Ringan";
        } else if ($options->sum('points') > ($total_result/3) && $options->sum('points') <= (($total_result*2)/3)) {
            $hasil = "Sedang";
        } else if ($options->sum('points') > (($total_result*2)/3) ) {
            $hasil = "Berat";
        }

        $result = Result::create([
          'user_id' => $id,
          'total_points' => $options->sum('points'),
          'hasil_survei' => $hasil,
          'jenis_survei' => $survei,
        ]);



        $questions = $options->mapWithKeys(function ($option) {
            return [
                $option->question_id => [
                    'option_id' => $option->id,
                    'points' => $option->points
                ]
            ];
        })->toArray();

        $result->questions()->sync($questions);

        return redirect("/pilihan_besar/$id");
    }

    public function categoryTest(Request $request, $categories)
    {
        $categories = Category::with(['categoryQuestions' => function ($query) {
            $query
                ->with(['questionOptions' => function ($query) {
                    $query;
                }]);
        }])
            ->whereHas('categoryQuestions')
            ->where('id', $categories)
            ->get();

        return view('client.test', compact('categories'));
    }

    public function categoryTestWithId($idCategories, $id)
    {
        $categories = Category::with(['categoryQuestions' => function ($query) {
            $query
                ->with(['questionOptions' => function ($query) {
                    $query;
                }]);
        }])
            ->whereHas('categoryQuestions')
            ->where('id', $idCategories)
            ->get();

        return view('client.test', compact('categories'))->with('survei', $idCategories)->with('id', $id);
    }

    public function showResult($id){
      $results = Result::where('user_id', '=', $id)->get();
      $total_results = $results->sum('total_points');
      $hasil_total_results = "";
        if ($total_results <= (1012/3)) {
            $hasil_total_results = "Ringan";
        } else if ($total_results > (1012/3) && $total_results <= ((1012*2)/3)) {
            $hasil_total_results = "Sedang";
        } else if($total_results > ((1012*2)/3)){
            $hasil_total_results = "Berat";
        }
        
    // error
      $user_data = DataUser::all();
      $survei = Category::all();
      // var_dump($survei);
      return view('client.finalresults')->with('results', $results)->with('survei', $survei)->with('hasilakhir', $hasil_total_results)->with('hasilscore', $total_results)->with('user_data',$user_data);
    }
}
