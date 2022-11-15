@extends('layouts.result')

@section('content')

<div class="pt-12 flex justify-center">
    <div class="p-7 w-5/6 flex flex-col border-2 bg-white rounded">
        <div class="flex justify-center">
            <h1 class="uppercase text-2xl font-bold tracking-wide text-center">Hasil Survei (jenis survei)</h1>
        </div>

        <div class="my-5 text-sm">
            <table class="table-auto text-left font-normal tracking-wide">
                <tr>
                    <th class="font-medium">Nama Lengkap</th>
                    <td>:</td>
                    <td>{{$result->user->nama_lengkap}}</td>
                </tr>
                <tr>
                    <th class="font-medium">Total Skor Kategori</th>
                    <td>:</td>
                    <td>{{ $result->total_points }}</td>
                </tr>
                <tr>
                    <th class="font-medium">Hasil Survei</th>
                    <td>:</td>
                    <td>{{ $result->hasil_survei }}</td>
                </tr>
            </table>
        </div>

        <div>
            <ul class="list-disc pl-7 mb-3">
                <li>
                    <h3 class="text-lg font-semibold">Daftar Pertanyaan</h3>
                </li>
            </ul>
            <table class="w-full text-sm text-left border-[1px] border-black">
                <thead class="text-sm border-b border-black bg-gray-200 text-black uppercase">
                    <tr>
                        <th scope="col" class="py-3 px-6">
                            Pertanyaan
                        </th>
                        <th scope="col" class="py-3 px-6 border-x border-black">
                            Poin
                        </th>
                    </tr>
                </thead>

                <tbody>
                    @foreach($result->questions as $question)
                    <tr class="bg-white border-b border-black">
                        <td scope="" class="py-4 px-6 font-medium text-black whitespace-nowrap">
                            <div class="whitespace-normal">
                                {{ $question->question_text }}
                            </div>
                        </td>
                        <td class="py-4 px-6 border-x border-black">
                          <p class="font-bold">{{ $question->pivot->points }}</p>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="flex justify-center items-center mb-36 mt-12">
    <div class="w-fit">
        <div class="py-2 px-4 bg-red-700 hover:bg-red-200 hover:text-red-700 rounded-xl transition text-white shadow-xl font-medium">
            <button onclick="history.back()">Kembali</button>
        </div>
    </div>
</div>
@endsection