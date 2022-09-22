<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>

<body>
    
    <div class="bg-gradient-to-r from-[#6190E8] to-[#d8e2f2] w-full h-screen flex justify-center items-center">
        <div class="w-[700px] h-[500px] rounded-xl flex flex-col justify-center items-center backdrop-blur-sm bg-white/30">
            <div class="flex flex-row gap-3 py-1 px-3 bg-slate-100 shadow-xl rounded-full">
                <img src="{{URL::asset('/image/logo-perusahaan-autis.png')}}" class="w-[40px]" alt="">
                <img src="{{URL::asset('/image/upi.png')}}" class="w-[40px]" alt="">
            </div>
            <h3 class="text-3xl font-bold text-slate-800 pt-5 pb-5">Login</h3>
            <div>
                <div class="border-2 p-7 bg-transparent border-slate-800 rounded-xl">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        <div class="mb-3">
                            <label for="email" class="text-lg font-semibold">Email</label>

                            <div class="flex flex-col">   
                                <input id="email" type="email" class="w-[300px]  rounded p-2 @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                                @error('email')
                                    <span class="text-red-500 font-thin text-xs" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="password" class="text-lg font-semibold">Password</label>

                            <div class="flex flex-col">
                                <input id="password" type="password" class="w-[300px] rounded p-2 @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                @error('password')
                                    <span class="text-red-500 font-thin text-xs" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        Ingat kan saya
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="flex flex-col items-center">
                            <div class="px-6 py-1 bg-slate-700 hover:bg-slate-800 rounded-full">
                                <button type="submit" class="font-semibold text-slate-50 hover:font-semibold text-lg">
                                    Login
                                </button>
                            </div>
                            <div class="text-xs mt-3">
                                @if (Route::has('password.request'))
                                    <a class="text-black " href="{{ route('password.request') }}">
                                        Lupa Password ?
                                    </a>
                                @endif

                                @if (Route::has('register'))
                                    <a class="text-blue-900 hover:font-bold" href="{{ route('register') }}">
                                        Daftar
                                    </a>
                                @endif
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
</body>
<script>
    const btn = document.querySelector("button.mobile-menu-button");
    const menu = document.querySelector(".mobile-menu");

    btn.addEventListener("click", () => {
        menu.classList.toggle("hidden");
    });
</script>

</html>
