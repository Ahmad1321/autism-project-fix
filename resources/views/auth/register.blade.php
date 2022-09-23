<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>SIPETIS | Register</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>

<body>
    <div class="bg-slate-900">
        <div class="h-screen flex justify-center items-center">
            <div class="flex flex-col relative w-full m-7 rounded-md">
                <div class="bg-gradient-to-r from-sky-800 to-sky-300 text-white rounded-t-xl sm:rounded-md p-5 shadow-2xl mt-7">
                    <h2 class="text-4xl font-semibold px-5">Selamat Datang</h2>
                    <div class="flex w-fit flex-row gap-2 sm:gap-1 sm:py-1 sm:px-3 sm:mt-32 mt-5 sm:bg-sky-100 sm:shadow-xl sm:rounded-full">
                        <img src="{{URL::asset('/image/logo-perusahaan-autis.png')}}" class="sm:w-[40px] w-[20px]" alt="">
                        <img src="{{URL::asset('/image/upi.png')}}" class="sm:w-[40px] w-[20px]" alt="">
                    </div>
                </div>
        
                <form method="POST" action="{{ route('register') }}" class="sm:absolute right-12 bg-sky-100 rounded-b-xl sm:rounded-md p-2 sm:w-44 md:w-1/3 flex flex-col justify-center items-center shadow-xl pt-7">
                    @csrf
                    <h2 class="text-gray-900 mb-12 t-4 text-2xl sm:text-3xl font-semibold">Daftar Akun</h2>
                    <input
                    type="text"
                    placeholder="Masukan nama"
                    id="name"
                    name="name"
                    value="{{ old('name') }}"
                    required
                    autocomplete="name"
                    autofocus
                    class="text-xs sm:text-sm w-4/5 p-1 focus:outline-none border-b-2 border-gray-900 bg-transparent mb-2 placeholder:text-gray-900 @error('name') is-invalid @enderror">
                    <input
                    type="email"
                    placeholder="Masukan email"
                    id="email"
                    name="email"
                    value="{{ old('email') }}"
                    required
                    autocomplete="email"
                    autofocus
                    class="text-xs sm:text-sm w-4/5 p-1 focus:outline-none border-b-2 border-gray-900 bg-transparent mb-2 placeholder:text-gray-900 @error('email') is-invalid @enderror">
                    <input
                    type="password"
                    placeholder="Masukan password"
                    id="password"
                    name="password"
                    required
                    autocomplete="new-password"
                    class="text-xs sm:text-sm w-4/5 p-1 focus:outline-none border-b-2 border-gray-900 bg-transparent mb-2 placeholder:text-gray-900 @error('password') is-invalid @enderror">
                    <input
                    type="password"
                    placeholder="Konfirmasi password"
                    id="password-confirm"
                    name="password_confirmation"
                    required
                    autocomplete="new-password"
                    class="text-xs sm:text-sm w-4/5 p-1 focus:outline-none border-b-2 border-gray-900 bg-transparent mb-12 placeholder:text-gray-900">
                    <button
                    class="w-4/5 bg-sky-900 hover:bg-gray-900 trasition duration-300 ease-in-out text-xl text-sky-100 mb-4 focus:outline-none p-2 rounded-md"
                    type="submit"
                    >Daftar</button>
                    <div class="mb-3">
                        <p class="text-gray-900 text-xs ">
                            Sudah punya akun? <a href="{{ route('login') }}" class="text-sky-600 text-xs ">Masuk</a>
                        </p>
                    </div>
                </form>
            </div>
        </div>
    </div>

    {{-- <div class="bg-gradient-to-r from-[#6190E8] to-[#d8e2f2] w-full h-screen flex flex-col justify-center items-center">
        <div class="w-[700px] h-[500px]rounded-xl flex flex-col justify-center items-center backdrop-blur-sm bg-white/30 p-10 rounded-xl">
            <div class="flex flex-row gap-3 py-1 px-3 bg-slate-100 shadow-xl rounded-full">
                <img src="{{URL::asset('/image/logo-perusahaan-autis.png')}}" class="w-[40px]" alt="">
                <img src="{{URL::asset('/image/upi.png')}}" class="w-[40px]" alt="">
            </div>
            <div class="text-3xl font-bold text-slate-800 pt-5 pb-5">Register</div>
            <div class="border-2 p-7 bg-slate-300 border-slate-800 rounded-xl">
                <form method="POST" action="{{ route('register') }}">
                    @csrf
                    <div class="mb-3">
                        <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Name') }}</label>
                        <div class="flex flex-col">
                            <input id="name" type="text" class="w-[300px]  rounded p-2 @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>
                            @error('name')
                            <span class="text-red-500 font-thin text-xs" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                    </div>
                    
                    <div class="mb-3">
                        <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label>
                        <div class="flex flex-col">
                            <input id="email" type="email" class="w-[300px]  rounded p-2 @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
                            @error('email')
                                <span class="text-red-500 font-thin text-xs" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label>
                        <div class="flex flex-col">
                            <input id="password" type="password" class="w-[300px]  rounded p-2 @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                            @error('password')
                                <span class="text-red-500 font-thin text-xs" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="password-confirm" class="col-md-4 col-form-label text-md-end">
                            Confirm Password
                        </label>
                        <div class="flex flex-col">
                            <input id="password-confirm" type="password" class="w-[300px]  rounded p-2" name="password_confirmation" required autocomplete="new-password">
                        </div>
                    </div>

                    <div class="flex flex-col items-center">
                        <div class="px-6 py-1 bg-slate-700 hover:bg-slate-800 rounded-full">
                            <button type="submit" class="font-semibold text-slate-50 hover:font-semibold text-lg">
                                Register
                            </button>
                        </div>
                    </div>
                    <div class="text-xs mt-3 flex justify-center items-center">
                        <p>Punya akun? <a class="text-blue-900 hover:font-bold" href="{{ route('login') }}">Login disini</a></p>
                        
                    </div>
                </form>
            </div>
                    
               
        </div>
    </div> --}}

</body>
{{-- <script>
    const btn = document.querySelector("button.mobile-menu-button");
    const menu = document.querySelector(".mobile-menu");

    btn.addEventListener("click", () => {
        menu.classList.toggle("hidden");
    });
</script> --}}

</html>
