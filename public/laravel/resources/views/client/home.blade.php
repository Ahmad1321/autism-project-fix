@extends('layouts.client')

@section('content')
<div class="flex justify-center h-[600px] pt-28 mb-28">
    <div class="mx-12 w-[80%] ">
        <div class="grid sm:grid-cols-1 md:grid-cols-2 h-[500px] gap-4 ">
            <div class="flex justify-center items-center">
                <img src="{{URL::asset('/image/autis-example.png')}}" class="w-[700px]">
            </div>
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
                            <button class="py-2 px-4 bg-red-700 hover:bg-red-200 hover:text-red-700 rounded-xl transition text-white shadow-xl font-medium" >
                                Mulai Survei
                            </button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="w-full h-[700px] bg-gradient-to-l from-sky-800 to-slate-500 flex flex-col justify-center items-center">
    <h2 class="mb-16 text-4xl md:text-5xl w-[250px] sm:w-[800px] text-center sm:leading-loose tracking-widest font-bold text-slate-50">
        AUGMENTED REALITY
    </h2>
    <div class="w-[1100px] h-[400px] flex flex-col sm:flex-row justify-center items-center gap-4  backdrop-greyscale-125 bg-white/30 rounded-xl mb-4">
        <div class="w-[600px] h-[800px] sm:h-[290px] flex justify-center items-start">
            <div class="w-[500px]">
                <a href="https://drive.google.com/file/d/1ElGN3FVfNPJL5unNuXedXIV7jENtPrXc/view?usp=drivesdk" target="_blank"><img src="{{URL::asset('/image/cover-video.png')}}" class="w-[900px] rounded-md"></a>
            </div>
        </div>
        <div class="w-[400px] h-[290px]  px-7">
                <h2 class="text-4xl font-bold text-slate-900 pb-4 tracking-wide">
                    FUNREADO
                </h2>
                <p class="text-lg text-justify">
                    <span class="font-bold text-slate-900">FUNREADO</span> merupakan aplikasi berbasis Augmented Reality sebagai platform pembelajaran yang dipersonalisasi sesuai dengan kemampuan siswa, serta dilengkapi dengan buku sebagai pemandu pembelajaran
                </p>
                <div class="flex flex-row gap-4">
                    <a href="https://drive.google.com/file/d/1ElGN3FVfNPJL5unNuXedXIV7jENtPrXc/view?usp=drivesdk" target="_blank">
                        <button class="px-4 py-2 rounded-xl bg-red-700 shadow-xl hover:bg-red-200 hover:text-red-700 transition text-white font-medium my-4">
                            Lihat Video
                        </button>
                    </a>
                    <a href="https://flipbookpdf.net/web/site/0c53bc851d06a5d1167cacae866d33dbcaa13014202209.pdf.html" target="_blank">
                        <button class="px-4 py-2 rounded-xl bg-green-700 shadow-xl hover:bg-green-200 hover:text-green-700 text-white transition font-medium my-4">
                            E-Book
                        </button>
                    </a>
                </div>
        </div>
    </div>
</div>

<div class="w-full border-b pt-[10px] pb-[5px] bg-gray-900">
    <div class="flex justify-center items-center">
        <div class="flex flex-row gap-3 px-3 bg-zinc-100 border-2 border-slate-800 shadow-xl rounded-full">
            <img src="{{URL::asset('/image/logo-perusahaan-autis.png')}}" class="w-[40px]" alt="">
            <img src="{{URL::asset('/image/upi.png')}}" class="w-[40px]" alt="">
        </div>
    </div>
</div>
@endsection