<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="{{asset("styles/main.css")}}">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Bentham&family=Lexend&family=Literata:opsz@7..72&family=Montserrat&family=Playfair+Display&family=Playfair+Display+SC:wght@900&family=Poppins&family=Roboto&display=swap');

        :root{
            --bgColor: rgb(31, 31, 31);
            --lighterBg: rgb(75, 74, 74);
            --lightBg: rgb(58 58 58);
            --buttonPrimary:rgb(89, 89, 249);
            --buttonHover: rgb(74, 74, 255);
            --buttonSec: rgb(209, 30, 30);
            --buttonSecHover:rgb(247, 40, 40);
            --glowColor: #2c8eff;
        }

        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Poppins;
        }

        body{
            background-color: var(--bgColor);
            color: white;
        }

        /* FORMS THEME FROM : https://demo.tutorialzine.com/2015/07/7-clean-and-responsive-forms/ */
        .form-labels-on-top{
            box-sizing: border-box;
            max-width: 475px;
            margin: 0 auto;
            padding: 55px;

            background-color:  var(--lightBg);
            box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.1);

            color: white;
            font: bold 14px sans-serif;
            text-align: center;
        }

        .form-labels-on-top .form-row{
            text-align: left;
            max-width: 315px;
            margin: 25px auto 0;
        }

        .form-labels-on-top .form-title-row{
            margin: 0 auto 40px;
        }

        .form-labels-on-top h1{
            display: inline-block;
            box-sizing: border-box;
            color: white;
            font-size: 24px;
            padding: 0 0 12px 0;
            margin: 0;
            border-bottom: 2px solid var(--buttonPrimary);
        }

        .form-labels-on-top .form-row > label span{
            display: block;
            box-sizing: border-box;
            color:  white;
            width: 200px;
            padding: 0 0 12px;
        }

        .form-labels-on-top input{
            color:  #5f5f5f;
            box-sizing: border-box;
            width: 300px;
            box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);
            padding: 12px 18px;
            border: 1px solid #dbdbdb;
        }

        .form-labels-on-top input[type=radio],
        .form-labels-on-top input[type=checkbox]{
            box-shadow: none;
            width: auto;
        }

        .form-labels-on-top select{
            background-color: #ffffff;
            color:  #5f5f5f;
            box-sizing: border-box;
            width: 240px;
            box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);
            padding: 12px 18px;
            border: 1px solid #dbdbdb;
        }

        .form-labels-on-top .form-radio-buttons > div{
            margin-bottom: 10px;
        }

        .form-labels-on-top .form-radio-buttons label span{
            margin-left: 8px;
            color:  #5f5f5f;
            font-weight: normal;
        }

        .form-labels-on-top .form-radio-buttons input{
            width: auto;
        }

        .form-labels-on-top button,
        a.button.button--neutral {
            text-decoration: none;
            border-radius: 2px;
            background-color: var(--buttonPrimary);
            color: #ffffff;
            font-weight: bold;
            box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);
            padding: 14px 22px;
            border: 0;
            margin-top: 15px;
        }

        /*	Making the form responsive. Remove this media query
            if you don't need the form to work on mobile devices. */

        @media (max-width: 600px) {

            .form-labels-on-top{
                padding: 30px;
            }

            .form-labels-on-top input{
                width: 240px;
            }

        }



        .button{
            color: white;
            background-color: var(--buttonPrimary);
            padding: 10px 18px;
            border-radius: 5px;
            border: none;
        }
        .button:hover{
            background-color: var(--buttonHover);
            cursor: pointer;
        }

        .button--info{
            background-color: #2cffd1;
            color: black;
        }

        .button--info:hover{
            background-color: #2cffae;
        }

        a.button.button--neutral{
            background-color: var(--bgColor);
        }

        .button--neutral{
            background-color: var(--bgColor);
        }


        a.button.button--neutral:hover{
            background-color: var(--lighterBg);
            cursor: pointer;

        }

        .button--delete{
            background-color: var(--buttonSec) !important;
        }
        .button--delete:hover{
            background-color: var(--buttonSecHover);
        }


        .glow{
            box-shadow: 0 0 20px -10px var(--glowColor);
        }

        .action{
            display: flex;
            justify-content: space-around;
            align-items: baseline;
            gap: 0.5em;
        }


        textarea{
            height: 5em;
            width: 36ch;
            padding: 12px 18px;
        }

        .alert{
            color: green;
        }


        a{
            text-decoration: none;
            color: white;
        }

        ul{
            list-style-type: none;
            padding: 0;
        }



        header{
            max-width: 100vw;
            min-height: 100vh;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        header>*,
        form .action{
            margin: 0.5em 0;
        }


        .table{
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }

        .table>*{
            margin: 7px 0;
        }

        .table__title{
            text-align: center;
        }

        .table__content{
            border-radius: 5px;
        }

        .table__row{
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 55ch;
            padding: 1em 1em;
            font-size: 0.9em;
            margin: 0;
        }



        .table__row a:not(.button):hover{
            text-decoration: underline;
        }

        .table__row:nth-child(odd) {
            background-color: var(--lightBg);
        }

        .table__row:nth-child(even) {
            background-color: var(--lighterBg);
        }

        ul.pagination{
            display: flex;
            gap: 10px;
        }

        li.active{
            background-color: var(--lighterBg);
            padding: 0px 5px;
        }

        .adress{
            max-width: 20ch;
            text-align: end;
        }
    </style>
</head>
<body>
    @yield('content')
</body>
</html>