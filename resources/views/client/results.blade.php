@extends('layouts.client')

@section('content')
<div class="container pt-28">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="flex justify-center items-center flex-col">
                <div class="text-3xl font-bold ">Hasil Survei</div>

                <div class="">
                    <div class="w-full flex justify-center items-center flex-col">
                        <h1 class="text-xl ">{{$result->user->nama_lengkap}}</h1>
                        <p class="mt-3">Total skor: {{ $result->total_points }}</p>
                        <p class="">{{ $result->hasil_survei }}</p>
                        <table class="w-[1000px] text-sm text-left text-gray-500 border-2 border-gray-400">
                            <thead class=" text-md border-b  text-gray-700 uppercase bg-gray-50">
                                <tr>
                                    <th scope="col" class="py-3 px-6">
                                        Pertanyaan
                                    </th>
                                    <th scope="col" class="py-3 px-6">
                                        Poin
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($result->questions as $question)
                                <tr class="bg-white border-b ">
                                    <td class=" py-4 px-6 font-medium text-gray-900">
                                        <p class=" w-1/2">
                                        {{ $question->question_text }}
                                        </p>
                                    </td>
                                    <td class="py-4 px-6">
                                      <p>{{ $question->pivot->points }}</p>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection