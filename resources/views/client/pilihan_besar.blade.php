@extends('layouts.client')
@section('content')


<div class="w-full h-[500px] pt-28 flex justify-center items-center">
    <div class="grid grid-cols-2 gap-4">
        @foreach ($big_categories as $c)
        <a href="/pilihan/{{$c->id}}/{{$id_user}}" class="<?php if($check[$c->id - 1] == true) echo "pointer-events-none" ?>">                
            <div class="h-[200px] w-[400px] <?php echo ($check[$c->id - 1] == false) ? "bg-slate-800" : "bg-green-500" ?> flex justify-center items-center rounded-xl  transition duration-300 ease-in-out">
                <p class="text-slate-50 text-xl font-bold">{{$c->nama}}</p>
            </div>
        </a>
        @endforeach
    </div>
    {{-- <p>{{$big_categories[0]->nama}}</p>
    <p>Axel</p> --}}

</div>
<div class="w-full flex justify-center mt-8 items-center gap-4">
    <div class="text-lg mt-3 flex justify-center rounded-xl">
        <a href="/">
            <button class="py-2 px-4 bg-red-600 hover:bg-red-800 transition duration-300 ease-in-out text-slate-50 rounded-xl">
                Kembali
            </button>
        </a>
    </div>

  <div class="text-lg mt-3 flex justify-start rounden-md <?php if($total_diisi < 4) echo "hidden" ?>">
      <a href="/finalresults/{{ $id_user }}">
          <button class="py-2 px-4 bg-sky-500 hover:font-bold rounded-xl transition text-white shadow-xl font-medium" >
              Lihat Hasil
          </button>
      </a>
    </div>
</div>
{{-- <div class="flex justify-center items-center pt-28">
    <div class="w-[900px] h-[500px]">
        <div class="grid grid-cols-2 gap-4 ">
            <a href="/test/1/{{ $id_user }}">
                <div class="h-[200px] flex justify-center items-center rounded-md">
                    <button class="hover:font-bold rounded-sm transition text-white font-medium" >
                        {{$big_categories[0]->nama}}
                    </button>
                </div>
            </a>
            <a href="/test/2/{{ $id_user }}">
                <div class="h-[200px] flex justify-center items-center rounded-md">
                    <button class="hover:font-bold rounded-sm transition text-white font-medium" >
                        Tes Motorik
                    </button>
                </div>
            </a>
            <a href="/test/3/{{ $id_user }}">
                <div class="h-[200px] flex justify-center items-center rounded-md">
                    <button class="hover:font-bold rounded-sm transition text-white font-medium" >
                        Tes Interaksi Sosial dan Kemandirian
                    </button>
                </div>
            </a>
            <a href="/test/4/{{ $id_user }}">
                <div class="h-[200px] flex justify-center items-center rounded-md">
                    <button class="hover:font-bold rounded-sm transition text-white font-medium" >
                        Tes Akademik dan Pra Akademik
                    </button>
                </div>
            </a>
            
        </div>
        <div class="btn-action flex justify-between">
          <div class="text-lg mt-3 flex justify-start rounden-md">
              <button class="show-modal py-2 px-4 bg-[#FF0000] hover:font-bold rounded-sm transition text-white shadow-xl font-medium" >
                  Keluar
                </button>
          </div>
          <div class="text-lg mt-3 flex justify-start rounden-md ">
              <a href="/finalresults/{{ $id_user }}">
                  <button class="py-2 px-4 bg-sky-500 hover:font-bold rounded-sm transition text-white shadow-xl font-medium" >
                      Lihat Hasil
                  </button>
              </a>
            </div>
        </div>
    </div>
    <div class="modal h-screen w-full fixed left-0 top-0 flex justify-center items-center bg-black bg-opacity-50 hidden">
        <div class="bg-white rounded shadow-lg w-1/3">
            <div class="border-b px-4 py-2 flex justify-between items-center">
                <h3 class="font-semibold text-lg">Penting!!!</h3>
            </div>
            <div class="p-3">
                Apakah anda yakin keluar? ketika anda keluar semua data yang sudah di isi akan hilang
            </div>
            <div class="flex justify-end items-center w-100 border-t p-3">
                <button class="bg-red-600 hover:bg-red-700 px-3 py-1 rounded text-white mr-1 close-modal">Cancel</button>
                <a href="{{ url('/home') }}">
                    <button class="bg-blue-600 hover:bg-blue-700 px-3 py-1 rounded text-white mr-1">Oke</button>
                </a>
            </div>
        </div>
    </div>
</div>
    <script>
        const modal = document.querySelector('.modal');
        
        const showModal = document.querySelector('.show-modal');
        const closeModal = document.querySelector('.close-modal');
    
        showModal.addEventListener('click', function(){
            modal.classList.remove('hidden')
        });
        
        closeModal.addEventListener('click', function(){
            modal.classList.add('hidden')
        });
    </script> --}}
@endsection