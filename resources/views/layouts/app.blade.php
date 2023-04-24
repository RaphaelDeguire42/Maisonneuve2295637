<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.0/mdb.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{asset("css/main.css")}}">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/js-cookie/3.0.0/js.cookie.min.js"></script>
    <script src="js/theme.js"></script>
    <script>
        window.addEventListener('DOMContentLoaded', function(){
            const toggle = document.querySelector('.toggleDarkMode');
            const darkMode = 'dark-theme.css';
            const lightMode = 'light-theme.css';
            let cssFile = Cookies.get('theme') || lightMode;
            const elementLink = `<link rel="stylesheet" class="themeCSS" href="{{ asset('css/${cssFile}') }}"></link>`;
            console.log(elementLink)
            const body = document.querySelector('body');

            body.insertAdjacentHTML('afterbegin', elementLink);

            toggle.addEventListener('click', function() {
            if(cssFile === lightMode){
                cssFile = darkMode;
                Cookies.set('theme', cssFile);
            } else {
                cssFile = lightMode;
                Cookies.set('theme', cssFile);
            }
            document.querySelector('.themeCSS').setAttribute('href', `{{ asset('css/') }}/${cssFile}`);
            })
        })
    </script>
</head>
<body>
    <nav class="nav">
        <div class="nav__left">
            <a href="#" class="toggleDarkMode"><img src="{{asset('img/darkmode.png')}}" alt="Dark Mode" width="25" height="25"></a>
            <span> - </span>
        @php $lang = session('locale') @endphp
        @guest
            <span class="nav__greetings" href="/">@lang('lang.text_hello')</span>
        @else
            <span class="nav__greetings" href="/">@lang('lang.text_hello') {{ Auth::user()->name ?? trans('lang.text_guest')  }}</span>
        @endguest
            <span> - </span>
        @if ($lang == 'fr')
            <a class="" href="{{route('lang', 'en')}}">@lang('lang.text_english') <i class="flag flag-united-states"></i></a>
        @else
            <a class="" href="{{route('lang', 'fr')}}">@lang('lang.text_french') <i class="flag flag-france"></i></a>
        @endif
        </div>
        <span class="spacer"></span>

        <div class="nav__right">
        @guest
            <a class=" " href="{{route('login')}}">@lang('lang.text_login')</a>
        @else
            <a class=" " href="{{route('etudiant.index')}}">@lang('lang.text_studentList')</a> |
            <a class=" " href="{{route('fileRepo.index')}}">@lang('lang.text_fileRepo')</a> |
            <a class=" " href="{{route('forum.index')}}">Forum</a> -
            <a class="button button--black" href="{{route('logout')}}">@lang('lang.text_logout')</a>
        @endguest
        </div>
    </nav>
    @yield('content')
</body>

</html>