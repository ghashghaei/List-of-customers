<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{$title}}</title>

    <!-- Styles -->
    <!-- CSS only -->
    <link rel="stylesheet" href="{{asset('public/assets/css/bootstrap.css')}}" />
    <link rel="stylesheet" href="{{asset('public/assets/css/style.css')}}" />




</head>
<body>



<div class="container row mcenter">

    <table class="main_tbl col-12">
        <tr class="title_t">
            <th id="r_1" class="fas fa-sort-up">id</th>
            <th id="r_2">first name
                <div class="bar_down mcenter row">
                    <div class="top_m col-12">▲</div>
                    <div class="bottom_m col-12">▼</div>
                </div>
            </th>
            <th id="r_3">last name
                <div class="bar_down mcenter row">
                    <div class="top_m col-12">▲</div>
                    <div class="bottom_m col-12">▼</div>
                </div>
            </th>
            <th id="r_4">email address
                <div class="bar_down mcenter row">
                    <div class="top_m col-12">▲</div>
                    <div class="bottom_m col-12">▼</div>
                </div>
            </th>
            <th id="r_5">Registered Date
                <div class="bar_down mcenter row">
                    <div class="top_m col-12">▲</div>
                    <div class="bottom_m col-12">▼</div>
                </div>
            </th>
        </tr>


        @foreach($users as $user)

            <tr class="title_b">
                <td>{{ $user->id  }}</td>
                <td>{{ $user->first_name }}</td>
                <td>{{ $user->last_name }}</td>
                <td>{{ $user->email_address }}</td>
                <td>{{ $user->registered_date }}</td>
            </tr>

        @endforeach

    </table>


</div>

<script src="{{asset('public/assets/js/jquery-3.6.0.min.js')}}"></script>
<script src="{{asset('public/assets/js/bootstrap.js')}}"></script>
<script src="{{asset('public/assets/js/my_js.js')}}"></script>
</body>

</html>
