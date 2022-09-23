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
                <div class="flex justify-start pl-3 mt-5 w-[380px]">
                    <div class="text-lg">
                        <a href="{{ url('/isi_nama') }}">
                            <button class="py-2 px-4 bg-red-700 hover:bg-red-100 hover:text-red-700 rounded-xl transition text-white shadow-xl font-medium" >
                                Mulai Survei
                            </button>
                        </a>
                    </div>
                </div>
            </div>
            <div class="flex justify-center items-center">
                <img src="{{URL::asset('/image/autis-example.png')}}" class="w-[900px]">
            </div>
        </div>
    </div>
</div>

<div class="w-full h-[500px] bg-gradient-to-l from-sky-800 to-slate-500 flex justify-center items-center">
    <div class="w-[1100px] h-[400px] flex flex-row justify-center items-center gap-4  backdrop-greyscale-125 bg-white/30 rounded-tl-3xl rounded-br-3xl">
        <div class="w-[500px] h-[290px] flex justify-center items-start">
            <div>
                <a href="https://www.youtube.com/watch?v=pDO19S77Hz4"><img src="{{URL::asset('/image/example-video.png')}}" class="w-[900px] rounded-md"></a>
            </div>
        </div>
        <div class="w-[500px] h-[290px] flex justify-center items-start ml-5 p-7">
            <div>
                <h2 class="text-4xl font-semibold text-[#FF0000]">
                    Judul Video
                </h2>
                <p class="text-xl">
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aliquid, accusantium porro harum expedita praesentium reiciendis similique. Molestiae, exercitationem ea. Rem!
                </p>
                <a href="https://www.youtube.com/watch?v=pDO19S77Hz4">
                    <button class="px-4 py-2 rounded-xl bg-[#FF0000] hover:bg-red-900 text-white font-bold my-4">
                        Lihat Video
                    </button>
                </a>
            </div>
        </div>

    </div>
</div>

<div class="w-full h-[300px] bg-slate-50 flex justify-center items-center">
    for third section
</div>
<div class="w-full border-b py-[27px]">
    <div class="flex justify-center items-center">
        <div class="flex flex-row gap-3 py-1 px-3 bg-zinc-100 border-2 border-slate-800 shadow-xl rounded-full">
            <img src="{{URL::asset('/image/logo-perusahaan-autis.png')}}" class="w-[40px]" alt="">
            <img src="{{URL::asset('/image/upi.png')}}" class="w-[40px]" alt="">
        </div>
    </div>
</div>
@endsection