@extends('layouts.client')
@section('content')

    <div class="pt-28 flex flex-col gap-4 justify-center items-center">
        <p>
            total result = {{$d1[0]->total_result}}
        </p>
        <p>
            kesimpulan = {{$d1[0]->kesimpulan}}
        </p>

        @foreach ($d2 as $drt)
        <p>
            nama test =  {{$c[$drt->jenis_survei - 1]->name}}
        </p>
        <p>
            score test =  {{$drt->total_points}}
        </p>    
        @endforeach

        <p>
            nama = {{$du[0]->nama_lengkap}}
        </p>
        <p>
            nama = {{$du[0]->gender}}
        </p>
        <p>
            nama = {{$du[0]->tempat}}
        </p>
        <p>
            nama = {{$du[0]->tanggallahir}}
        </p>

        
    </div>
@endsection