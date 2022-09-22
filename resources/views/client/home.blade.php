@extends('layouts.client')

@section('content')
<div class="flex justify-center h-[600px]">
    <div class="mx-12 w-[80%] ">
        <div class="grid sm:grid-cols-1 md:grid-cols-2 h-[500px] gap-4 ">
            <div class="flex flex-col justify-center items-center">
                <div class="text-2xl md:text-4xl w-[250px] md:w-[350px] font-bold text-slate-900">
                    PENDETEKSI LEVEL
                    ANAK AUTIS
                </div>
                <div class="text-md md:text-lg w-[250px] md:w-[350px] mt-3">
                    Merupakan sebuah aplikasi berbasis web untuk mendeteksi tingkat penyakit autis pada anak 
                    menggunakan survei melalui form dengan pertanyaan dari expert untuk meneliti level autis pada
                    anak
                </div>
                <div class="text-lg mt-3 flex w-[250px] justify-start">
                    <a href="{{ url('/isi_nama') }}">
                        <button class="py-2 px-4 bg-[#FF0000] hover:font-bold rounded-sm transition text-white shadow-xl font-medium" >
                            Mulai Survei
                        </button>
                    </a>
                </div>
            </div>
            <div>
                <img src="{{URL::asset('/image/autis-example.png')}}" class="w-[500px]">
            </div>
          </div>
    </div>
</div>

<div class="w-full h-[500px] bg-slate-400 flex justify-center items-center">
    <div class="w-[1100px] h-[400px] bg-white">
        <div>

        </div>

        <div>
            
        </div>

    </div>
</div>

<div class="w-full h-[300px] bg-slate-500">

</div>
@endsection