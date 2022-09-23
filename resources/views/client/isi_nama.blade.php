@extends('layouts.client')

@section('content')
<div class="h-[420px] items-center row justify-content-center ">
    <div class="w-full card-body flex justify-center h-screen min-h-screen items-center">
        <form method="POST" class=" bg-gradient-to-br from-sky-800 to-sky-300 p-4 rounded-lg w-[500px]" action="/isi_nama">
            <div class="p-4 rounded-xl backdrop-blur-xl bg-black/30">
            @csrf
                <div class="mb-4">
                        <label for="email" class="text-xl text-slate-50 text-center font-semibold block mb-2">Nama</label>
                        <div class="">
                            <input id="nama" type="text" class="form-control w-full outline-none rounded px-4 py-2" name="nama" value="{{ old('nama') }}" required autocomplete="email" autofocus>
                        </div>
                </div>
                <div class="mb-4">
                        <label for="gender" class="text-xl text-slate-50 text-center font-semibold block mb-2">Gender</label>
                        
                        <div class="flex justify-center">
                            <div class="form-check mr-4">
                                <input class="form-check-input" type="radio" name="gender" id="lakilaki" value="Laki-laki" required>
                                <label class="form-check-label text-slate-50" for="lakilaki">
                                    Laki Laki
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="gender" id="perempuan" value="Perempuan" required>
                                <label class="form-check-label text-slate-50" for="perempuan">
                                    Perempuan
                                </label>
                            </div>
                        </div>
                </div>
                <div class="grid gap-4 grid-cols-2 mb-4">
                <div class="w-full">
                    <label for="tempat" class="text-xl text-slate-50 font-semibold block mb-2">Tempat</label>

                    <div class="">
                        <input id="tempat" type="text" class="form-control w-full outline-none rounded px-4 py-2" name="tempat" value="{{ old('tempat') }}" required autocomplete="email" autofocus>
                    </div>
                </div>

                <div class="w-full">
                    <label for="tgllahit" class="text-xl text-slate-50 font-semibold block mb-2">Tanggal Lahir</label>

                    <div class="">
                        <input id="tgllahir" type="date" class="form-control w-full outline-none rounded px-4 py-2" name="tgllahir" value="{{ old('tgllahir') }}" required autocomplete="email" autofocus>
                    </div>
                </div>
                </div>

                <div class="flex justify-center">
                    <button type="submit" class="w-[100px] px-4 py-2 rounded-xl bg-green-600 shadow-xl hover:bg-green-200 hover:text-green-700 text-white transition font-medium">
                        Lanjut
                    </button>
                </div>
            </div>
        
        </form>
    </div>
</div>
@endsection