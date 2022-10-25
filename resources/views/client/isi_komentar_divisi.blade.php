@extends('layouts.client')

@section('content')
    <div class="pt-28 w-full h-full flex justify-center items-center">
        <div class="w-3/4 h-[500px] bg-black flex flex-row">
            <div class="w-1/3 h-full bg-red-600 flex flex-col">
                <div class="w-full h-1/5 border flex flex-col justify-start items-center p-3">
                    <h3 class="text-xl font-semibold uppercase text-slate-800">
                        Hasil Survei 
                    </h3>
                    <span class="text-2xl font-bold">(Nama Big Categori)</span>
                </div>
                <div class="w-full h-4/5 overflow-auto p-3">
                    <div class="border-2 border-black w-full h-[100px] mb-3 p-2">
                        <h4 class="mb-1">Nama Test</h4>
                        <div class="border w-1/2 h-[50px]">
                            <h6>
                                
                            </h6>
                        </div>
                    </div>
                    <div class="border-2 border-black w-full h-[100px] mb-3">

                    </div>
                    <div class="border-2 border-black w-full h-[100px] mb-3">

                    </div>
                    <div class="border-2 border-black w-full h-[100px] mb-3">

                    </div>
                </div>
            </div>
            <div class="w-2/3 h-full bg-blue-600">

            </div>
        </div>
    </div>
@endsection