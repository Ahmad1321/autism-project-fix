@extends('layouts.result')

@section('content')
<div class="pt-12 flex justify-center">
    <div class="p-7 w-5/6 flex flex-col border-2 bg-white rounded">
        <div class="flex justify-center">
            <h1 class="uppercase text-2xl font-bold tracking-wide text-center">Hasil Identifikasi Autis Pada Anak</h1>
        </div>

        <div class="my-5 text-sm">
            <table class="table-auto text-left font-normal tracking-wide">
                <tr>
                    <th class="font-medium">Nama Lengkap</th>
                    <td>:</td>
                    <td>{{ $datauser[0]->nama_lengkap }}</td>
                </tr>
                <tr>
                    <th class="font-medium">Jenis Kelamin</th>
                    <td>:</td>
                    <td>{{ $datauser[0]->gender }}</td>
                </tr>
                <tr>
                    <th class="font-medium">Tempat</th>
                    <td>:</td>
                    <td>{{ $datauser[0]->tempat }}</td>
                </tr>
                <tr>
                    <th class="font-medium">Tanggal Lahir</th>
                    <td>:</td>
                    <td>{{ $datauser[0]->tanggallahir }}</td>
                </tr>
            </table>
        </div>

        <div>
            <ul class="list-disc pl-7 mb-3">
                <li>
                    <h3 class="text-lg font-semibold">Penilaian Kategori</h3>
                </li>
            </ul>
            <table class="w-full text-sm text-left border-[1px] border-black">
                <thead class="text-sm border-b border-black bg-gray-200 text-black uppercase">
                    <tr>
                        <th scope="col" class="py-3 px-6">
                            Kategori
                        </th>
                        <th scope="col" class="py-3 px-6 border-x border-black">
                            Skor
                        </th>
                    </tr>
                </thead>

                <tbody>
                  @for($i = 0; $i < 9; $i++)
                    <tr class="bg-white border-b border-black">
                        <th scope="row" class="py-4 px-6 font-medium text-black whitespace-nowrap">
                          <a href="{{ route('client.results.show', $results[$i]->id) }}">
                              <p class="hover:font-semibold hover:text-sky-800">{{ $survei[$results[$i]->jenis_survei - 1]->name }}</p>
                          </a>
                        </th>
                        <td class="py-4 px-6 border-x border-black">
                          <p class="font-bold">{{ $results[$i]->total_points }}</p>
                        </td>
                    </tr>
                    @endfor
                </tbody>
            </table>
        </div>

        {{-- HASIL --}}
        <div class="text-sm">
            <ul class="list-disc pl-7 mb-3 my-7">
                <li>
                    <h3 class="text-lg font-semibold">Hasil</h3>
                </li>
            </ul>
            <div class="border-[1px] border-black pb-5">
                <div class="flex justify-center font-bold text-xl mt-5 mb-3">
                    <div class="py-2 px-4 border-2 border-black bg-gray-200">{{ $finalResults[0]->final_points }}</div>
                </div>
                <p class="pl-5">Hasil penilaian menunjukan bahwa sodara <span class="text-blue-800">{{ $datauser[0]->nama_lengkap }}</span>
                dideteksi memiliki level autis yang : <span class="font-semibold">{{$finalResults[0]->hasil_survei }}</span></p>
            </div>
        </div>

        {{-- REKOMENDASI --}}
        <div>
            <ul class="list-disc pl-7 mb-3 my-7">
                <li>
                    <h3 class="text-lg font-semibold">Rekomendasi</h3>
                </li>
            </ul>
            <div class="border-[1px] border-black py-5 pr-5">
                <p class="pl-5 text-justify text-sm">{{ $finalResults[0]->rekomendasi }}</p>
            </div>
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