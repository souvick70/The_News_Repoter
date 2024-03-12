@extends('frontend.home_dashboard')
@section('home') 

@section('title') 
The News Reporter
@endsection

<br>

<style>
    img.hhh {
    width: 20%;
}
    img.big{
        width:30%;
    }
</style>
<div class="container">

<!-- Card deck -->


<div class="card-deck row">


                                    
@foreach($career as $item)
@php
$now = time();
$your_date = strtotime("$item->created_at");
$datediff = $now - $your_date;
$days_ago=round($datediff / (60 * 60 * 24));
@endphp
@if($item->status == 1)

    <div class="col-xs-12 col-sm-6 col-md-4">
            <!-- Card -->
            <div class="card">

                <!--Card image-->
                <div class="view overlay">
                    <img class="hhh" src="{{asset('frontend/assets/images/jurnalism.png')}}"  alt="Card image cap">
                    <img class="big" src="{{asset('frontend/assets/images/logo4.png')}}"  alt="Card image cap">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span> <font size="-2"><b>Post Date: {{$item->created_at->format('Y-m-d')}}</b></font></span>
                    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span><em><font size="-2"><b>Posted By: {{$days_ago}} ,day's ago</b></font></em></span>

                    
                </div>

                <!--Card content-->
                <div class="card-body">

                <!--Title-->
                
                
                
                
                <h6 class="card-title">Company Name    : {{$item->c_name}}</h6>
                @foreach($job_post as $item1)
                                    
                    @if($item->job_role == $item1->id)
                    <h6 class="card-title">Job Roles       : {{$item1->job_designation}}</h6>
                    @else

                    @endif
                @endforeach
                <h6 class="card-title">Job Posted By   : {{$item->role}}</h6>
                <h6 class="card-title">Exprience Need  : {{$item->exprience}}</h6>
                <h6 class="card-title">No Of Vacancy   : {{$item->no_vacancy}}</h6>
                <h6 class="card-text">Job Description:  
                    @if (strlen($item) > 250) {!! $item->job_details = substr($item->job_details, 0, 139) . '...'!!}
                                @endif
                </h6>   
                
                
                
                <!--Text-->
                
               
                <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                <a href="{{route('see.details.apply.jobs',$item->id)}}" class="btn btn-info" role="button">See Details</a>

                </div>

            </div>
            <!-- Card -->
        </div>
        @else
        @endif
        @endforeach
    </div>
        <!-- Card deck -->
       
</div>

@endsection