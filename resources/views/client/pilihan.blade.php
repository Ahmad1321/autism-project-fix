@extends('layouts.client')
@section('content')


<div class="flex justify-center items-center pt-28 mx-28">
    <div class="w-full h-[500px]">
        <div class="grid grid-cols-1 gap-4 ">
            
            @php
            $i = 0;
            @endphp
                
            @foreach ($data_categories as $c)
            <a href="/test/{{$c->id}}/{{ $id_user }}" class="<?php if($sudah[$awal+$i] == true) echo "pointer-events-none" ?>">
                <div class="h-[100px] <?php echo ($sudah[$awal+$i] == false) ? "bg-slate-800" : "bg-green-500" ?> flex justify-center items-center rounded-md">
                    <button class="hover:font-bold rounded-sm transition text-white font-medium">
                        {{$c->name}}
                    </button>
                </div>
            </a>
            @php
            $i++;
            @endphp
            @endforeach
        </div>
        <div class="btn-action flex justify-between">
            <div class="text-lg mt-3 flex justify-center rounded-xl">
                <a href="/pilihan_besar/{{$id_user}}">
                    <button class="py-2 px-4 bg-sky-600 hover:bg-sky-800 transition duration-300 ease-in-out text-slate-50 rounded-xl">
                        Kembali
                    </button>
                </a>
            </div>
          <div class="text-lg mt-3 flex justify-start rounden-md">
              <button class="show-modal py-2 px-4 bg-[#FF0000] hover:font-bold rounded-xl transition text-white shadow-xl font-medium" >
                  Keluar
                </button>
          </div>
          <div class="text-lg mt-3 flex justify-start rounden-md <?php if($finish == false) echo "hidden" ?>">
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
    </script>
@endsection