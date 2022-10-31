@extends('layouts.client')

@section('content')
    <div class="pt-24 w-full h-full flex justify-center items-center">
        <div class="w-3/4 h-[500px] border-2 border-sky-900 flex flex-row">
            <div class="w-1/3 h-full bg-green-600 flex flex-col">
                <div class="w-full h-1/5 bg-green-700 shadow-xl flex flex-col justify-start items-center p-3">
                    <h3 class="text-sm text-sky-100">
                        Hasil Survei 
                    </h3>
                    <span class="text-xl text-center font-bold text-sky-100">
                        {{$name[0]->nama}}
                    </span>
                </div>
                <div class="w-full h-4/5 overflow-auto p-3">
                    @foreach ($data_result as $a)
                    <div class="border-[2px] border-slate-800 w-full h-fit mb-3 p-2 rounded-xl shadow-xl bg-slate-100">
                        <h4 class="mb-1 font-semibold tracking-wide text-sky-900 text-md">
                            {{$categories[$a->jenis_survei - 1]->name}}
                        </h4>
                        <div class="text-xs w-full h-[50px] gap-2 flex flex-row">
                            <div class="w-1/3 h-full flex flex-col justify-center items-center rounded-md bg-sky-700 tracking-wider shadow-xl text-slate-50">
                                <h6>
                                    Score
                                </h6>
                                <p class="font-bold ">
                                    {{$a->total_points}}
                                </p>
                            </div>
                            <div class="w-1/3 h-full flex flex-col justify-center items-center rounded-md bg-sky-700 tracking-wider shadow-xl text-slate-50">
                                <h6>
                                    Nilai
                                </h6>
                                <p class="font-bold ">
                                    A
                                </p>
                            </div>
                            <div class="w-1/3 h-full flex justify-center items-center">
                                <a href="/results/{{$a->id}}" class="bg-sky-600 p-2 rounded-sm text-slate-50 shadow-xl hover:bg-sky-800
                                transition duration-300 ease-in-out">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-4 h-4">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z" />
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                      </svg>      
                                </a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <form method="POST" action="/fillResult/{{ $id_big_categories }}/{{$id_user}}" class="w-2/3 h-full bg-slate-100 pt-12 ">
                @csrf
                <div class="flex flex-col justify-center items-center">
                    <label for="kesimpulan" class="text-sky-900 text-3xl font-bold tracking-wider mb-5">KESIMPULAN</label>
                    <textarea id="kesimpulan" name="kesimpulan" rows="4" cols="50" 
                    class="rounded-md placeholder-slate-400 p-3 bg-slate-200 text-sky-900 outline-slate-400 text-xs w-3/4 h-[100px]" 
                    placeholder="masukan kesimpulan disini..."></textarea>
                </div>

                <div>
                    <input type="number" value="{{ $sum }}" id="total_result" name="total_result" hidden>
                </div>

                <div class="flex flex-col justify-center items-center mt-5  ">
                    <button type="submit" class="w-fit py-2 px-5 bg-green-700 rounded-md text-sm text-slate-50 uppercase shadow-xl">
                        Simpan
                    </button>
                </div>
            </form>
        </div>
    </div>
@endsection