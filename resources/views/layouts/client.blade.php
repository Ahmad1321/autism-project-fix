<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>SIPETIS | Home</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Styles -->
    {{-- <link href="{{ asset('css/app.css') }}" rel="stylesheet"> --}}
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link rel="icon" href="{{ asset('')}}" type="image/x-icon">
</head>

<body>
    <div id="app">

        <nav class="w-full fixed p-5 bg-white text-gray-900 shadow-md md:flex md:items-center md:justify-between z-999">
            <div class="flex justify-between items-center ">
              <span class=" font-bold text-2xl cursor-pointer">
                <a href="{{ url('/home') }}" >
                    <img src="{{URL::asset('/image/logo-baru.png')}}" href="{{ route('client.test') }}"
                        class="w-[70px] h-10 inline">
                </a>
                SIPETIS
              </span>
        
              <span class="cursor-pointer mx-2 md:hidden block">
                <img name="menu" src="{{URL::asset('/image/menu.png')}}" class="h-10 inline" onclick="Menu(this)">
              </span>
            </div>
        
            <ul class="md:flex md:items-center z-[-1] md:z-auto md:static absolute bg-transparent w-full left-0 md:w-auto md:py-0 py-4 md:pl-0 pl-7 md:opacity-100 opacity-0 top-[-400px] transition-all ease-in duration-500">
              <li class="mx-4 my-6 md:my-0">
                <a class="text-lg py-2 px-4 " href="{{ url('/home') }}">
                    HOME
                </a>
              </li>
              <li class="mx-4 my-6 md:my-0">
                <a class="text-lg py-2 px-4 " href="{{ url('/manual') }}">
                    MANUAL
                </a>
              </li>
              <li class="mx-4 my-6 md:my-0">
                <a class="text-lg py-2 px-4 " href="{{ route('admin.results.index') }}">
                    DASHBOARD
                </a>
              </li>
              
                <h5 class="flex flex-row">
                    @auth
                        <div class="mr-5 ">
                            <a class="bg-gray-700 text-white  duration-500 px-6 py-2 mx-4 hover:bg-red-900 rounded " onclick="event.preventDefault();document.getElementById('logout-form').submit();" href="{{ route('logout') }}">
                                Logout
                            </a>
                        </div>
                    @else
                    <div class="mr-5 ">
                        <a class="bg-gray-700 text-white duration-500 px-6 py-2 mx-4 hover:bg-green-900 rounded " href="{{ route('login') }}">
                            Login
                        </a>
                    </div>
                    @endauth
                </h5>
                <form class="" action="{{ route('logout') }}" id="logout-form" method="post">
                    @csrf
                </form>
               
                <h2 class=""></h2>
            </ul>
          </nav>    
        
        
          <script>
            function Menu(e){
              let list = document.querySelector('ul');
              e.name === 'menu' ? (e.name = "close",list.classList.add('top-[80px]') , list.classList.add('opacity-100')) :( e.name = "menu" ,list.classList.remove('top-[80px]'),list.classList.remove('opacity-100'))
            }
          </script>

<main class="z-0">
    @yield('content')
</main>
</body>
</div>

</html>