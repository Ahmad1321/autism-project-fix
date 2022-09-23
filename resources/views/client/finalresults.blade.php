@extends('layouts.client')

@section('content')
<div class="container mx-auto max-w-[1000px] pt-28">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="">
                <div class="text-3xl text-center font-semibold mb-7 mt-7">Hasil Survei Total</div>

                
                <div class="border-2 mb-7">
                  <table class="w-full text-sm text-left text-gray-500  ">
                      <thead class="text-md border-b  text-gray-700 uppercase bg-gray-50">
                          <tr>
                              <th scope="col" class="py-3 px-6">
                                  Kategori
                              </th>
                              <th scope="col" class="py-3 px-6">
                                  Skor
                              </th>
                              <th scope="col" class="py-3 px-6">
                                  
                              </th>
                          </tr>
                      </thead>
                      <tbody>

                        @for($i = 0; $i < 9; $i++)
                          <tr class="bg-white border-b ">
                              <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap ">
                                <p>{{ $survei[$results[$i]->jenis_survei - 1]->name }}</p>
                              </th>
                              <td class="py-4 px-6">
                                <p>{{ $results[$i]->total_points }}</p>
                                
                              </td>
                              <td class="py-4 px-6">
                                <a href="{{ route('client.results.show', $results[$i]->id) }}" class="py-2 px-4 bg-blue-500 rounded-lg text-white ">
                                  Lihat Detail
                                </a>
                              </td>
                          </tr>
                          @endfor
                      </tbody>
                  </table>
                </div>

                <div class="">
                  <div class="mb-2 px-4 py-2 flex flex-col items-center justify-center rounded-xl bg-zinc-900 text-white">
                    <h1 class="text-2xl uppercase mt-5 py-2 px-4 bg-blue-500 rounded-xl text-zinc-900 font-semibold mb-5">Kesimpulan</h1>
                    <div class="text-zinc-900  rounded-xl mb-5 w-[700px] h-[170px] bg-slate-50 flex justify-center items-center flex-col">
                      <h1 class="text-3xl py-2 px-4 bg-green-600 text-slate-100 rounded-xl shadow-xl mb-3 font-bold">{{$hasilscore}}</h1>
                      <p class="text-xl mb-5 w-[500px]">Hasil penilaian menunjukan bahwa Sdr {{ $user_data[$results[1]->user_id-1]->nama_lengkap }} dideteksi memiliki level autis yang : {{$hasilakhir}}</p>
                    </div>
                  </div>
                </div>

                <form action="/submit-rekomendasi/{{ $results[0]->user_id }}" method="POST" class="rekomendasi mt-4">
                  @csrf
                  <label for="rekomendasi" class="font-semibold">Kesimpulan dan Rekomendasi </label>
                  <textarea placeholder="isi rekomendasi" name="rekomendasi" id="rekomendasi" rows="5" class="border-[1px] border-slate-500 w-full p-2"></textarea>

                  <div class="btn-action flex justify-center">
                    <a href="/pilihan/{{ $results[0]->user_id }}" class="bg-red-500 px-4 py-2 rounded text-white mr-4">Back</a>
                    <button type="submit" class="bg-sky-500 px-4 py-2 rounded text-white">Submit</button>
                  </div>
                </form>

            </div>
        </div>
    </div>
</div>
@endsection