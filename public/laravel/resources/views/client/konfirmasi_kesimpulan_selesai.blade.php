@extends('layouts.client')
@section('content')

    <div class="pt-24 flex flex-col gap-4 justify-center items-center">

        <h3 class="py-5 text-3xl font-bold tracking-wider text-sky-900 uppercase">Hasil Test Kategori {{$bc[$d1[0]->id_big_categories - 1]->nama}}</h3>
        <div class="w-full h-[250px] bg-sky-900 flex justify-center items-center">
            <div class="w-3/5 h-full flex flex-row">
                <div class="w-2/3  flex justify-start items-center">
                    <div class="flex flex-col">
                        <p class="text-4xl font-bold tracking-wider text-slate-50">
                            {{$du[0]->nama_lengkap}}
                        </p>
                        <div class="mt-5 text-slate-300 text-ld tracking-wide">
                            <p>
                                Gender : {{$du[0]->gender}}
                            </p>
                            <p>
                                Asal : {{$du[0]->tempat}}
                            </p>
                            <p>
                                Tanggal Lahir : {{$du[0]->tanggallahir}}
                            </p>
                        </div>
                    </div>
                </div>
                <div class="w-1/3 flex justify-center gap-4 items-center">
                    <div class="bg-slate-50 p-3 w-fit rounded-full shadow-xl flex flex-row justify-center items-center">
                        <img src="{{URL::asset('/image/logo-perusahaan-autis.png')}}" class="w-[75px]" alt="">
                        <img src="{{URL::asset('/image/upi.png')}}" class="w-[60px]" alt="">
                    </div>
                </div>
            </div>
        </div>
        <div class="w-3/4 h-fit flex flex-col p-3 mt-5">
            <div class="w-full h-fit py-12 border-2 border-slate-400 rounded-sm overflow-x-scroll flex flex-row gap-4 items-center justify-start px-12">
                @foreach ($d2 as $drt)
                <div class="w-[400px] flex-shrink-0 h-full p-7  bg-green-900 
                text-slate-50 rounded-sm shadow-xl ">
                    <p class="text-xl font-bold tracking-wide">
                        {{$c[$drt->jenis_survei - 1]->name}}
                    </p>
                    <div class="flex flex-row items-center mt-3">
                        <p>Skor Tes </p>
                        <div class="ml-3 p-2 bg-slate-50 rounded-xl text-green-900 font-bold tracking-wider">
                            {{$drt->total_points}}
                        </div>
                        <a href="/results/{{$drt->id}}" class="ml-2 p-2 bg-sky-600 hover:bg-sky-800 
                        transitionn duration-300 ease-in-out shadow-xl cursor-pointer rounded-xl text-slate-50 font-bold tracking-wider">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z" />
                                <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                              </svg>
                              
                        </a>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="mt-12 w-full px-20 h-fit flex flex-row justify-center items-center">
                <div class="p-3 w-1/3">
                    <h3 class="font-bold text-2xl tracking-wider text-slate-900">
                        Hasil Skor Kategori
                    </h3>
                    <div class="w-fit py-2 px-4 bg-sky-900 my-2 rounded-sm">
                        <p class="font-bold text-2xl tracking-wider text-slate-100 text-center">
                            {{$d1[0]->total_result}}
                        </p>
                    </div>
                </div>
                <div class="p-3 w-2/3 bg-sky-900 h-full">
                    <h3 class="text-lg text-slate-50 uppercase tracking-wide font-semibold">kesimpulan</h3>
                    <p class="text-md text-slate-200 mt-1">{{$d1[0]->kesimpulan}}</p>
                </div>
            </div>
        </div>
        <div class="text-xs uppercase text-slate-50 mt-12 pb-24">
            <a class="w-fit p-3 rounded-md shadow-xl bg-red-600"  href="/pilihan_besar/{{$id_user}}">
                kembali
            </a>

            {{-- <a href="/kesimpulan/pilihan_besar/view/{{$id_user}}/{{$id_big_categories}}" 
            class="w-fit p-2 bg-sky-600 rounded-md shadow-xl ml-4">
                Lihat Kesimpulan
            </a> --}}
        </div>
        
    </div>
@endsection