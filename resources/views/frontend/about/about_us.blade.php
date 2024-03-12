@extends('frontend.home_dashboard')
@section('home') 

@section('title') 
The News Reporter
@endsection
<div class="col-lg-12 col-md-12">

<h2 class="themesBazar_cat07"> <a href=""> <i class="las la-align-justify"></i> About Us </a> </h2>

<div class="row">

</div>
<p>


@foreach($about as $value)

<tr>



<td>{!! $value->about_us !!}</td>



</tr>

@endforeach


</p>
</div>

@endsection