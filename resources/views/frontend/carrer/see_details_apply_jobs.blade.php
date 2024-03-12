@extends('frontend.home_dashboard')
@section('home') 

@section('title') 
The News Reporter
@endsection

@foreach($job_desc as $item)
@php
$now = time();
$your_date = strtotime("$item->created_at");
$datediff = $now - $your_date;
$days_ago=round($datediff / (60 * 60 * 24));
@endphp
@endforeach



<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
<div class="container">
<div class="row gy-5 gx-4">
<div class="col-lg-8">
<div class="d-flex align-items-center mb-5">
<img class="flex-shrink-0 img-fluid border rounded" src="{{asset('frontend/assets/images/jurnalism.png')}}" alt="" style="width: 80px; height: 80px;">
<br>
<img class="flex-shrink-0 img-fluid border rounded" width="100" src="{{asset('frontend/assets/images/logo4.png')}}"  alt="Card image cap">
<br>
<div class="text-start ps-4">
<h3 class="mb-3">@foreach($crate_designation as $item2)

                                    @if($item->job_role == $item2->id)
                                    <h6 class="card-title">Job Roles       : {{$item2->job_designation}}</h6>
                                    @else
                
                                    @endif
                                @endforeach</h3>
<span class="text-truncate me-3"><i class="fa fa-map-marker-alt text-primary me-2"></i>kolkata, India</span>
<span class="text-truncate me-3"><i class="far fa-clock text-primary me-2"></i>Post Date: {{$item->created_at->format('Y-m-d')}}</span>
<span class="text-truncate me-0"><i class="far fa-money-bill-alt text-primary me-2"></i>$123 - $456</span>
</div>
</div>
<div class="mb-5">
<h4 class="mb-3">Job description & Qualifications</h4>


{!!$item->job_details!!}


</div>
<hr>
<hr>
<div class="">
<h4 class="mb-4">Apply For The Job</h4>
<form id="myForm" method="post" action="{{ route('store.candidate.apply') }}" enctype="multipart/form-data">
    @csrf
<div class="row g-3">
<div class="col-12 col-sm-6">
<input type="text" name ="candidate_name" id ="candidate_name" class="form-control" placeholder="Your Name">
</div>
<div class="col-12 col-sm-6">
<input type="text" name ="candidate_address1" id="candidate_address1" class="form-control" placeholder="Address Line1">
</div>
<div class="col-12 col-sm-6">
<input type="text" name ="candidate_address2" id="candidate_address2" class="form-control" placeholder="Address Line2">
</div>

<div class="col-12 col-sm-6">
<input type="email" name ="candidate_email" id="candidate_email"class="form-control" placeholder="Your Email">
</div>
<div class="col-12 col-sm-6">
<input type="text" name ="candidate_qualification" id="candidate_qualification" class="form-control" placeholder="Educational Qualification">
</div>
<div class="col-12 col-sm-6">
<input type="text" name ="candidate_no_of_vacancy" id="candidate_no_of_vacancy" value="{{$item->no_vacancy}}" class="form-control" placeholder="No Of Vacancy" readonly>
</div>
<div class="col-12 col-sm-6">
    Gender :
<input type="radio" id="gender" name="gender" value="Male">
  <label for="gender">Male</label>
  <input type="radio" id="gender" name="gender" value="Female">
  <label for="gender">Female</label>
  <input type="radio" id="gender" name="gender" value="Transgender">
  <label for="gender">Transgender</label>
</div>


<div class="col-12 col-sm-6">
                    
    <select id="job_role_designation" name="job_role_designation" class="form-select" readonly>
        
      @foreach($crate_designation as $item3)
      <option value="{{ $item3->id }}" {{ $item3->id == $item->job_role ? 'selected' : '' }}>  {{ $item3->job_designation }}</option>
      @endforeach
    </select>

</div>
<div class="col-12 col-sm-6">
<input type="text" id="candidate_phone" name="candidate_phone" class="form-control" placeholder="Phone No">
</div>
<div class="col-12 col-sm-6">
<input type="text" id="candidate_exprience" name="candidate_exprience" class="form-control" placeholder="Exprience">
</div>
<div class="col-12 col-sm-6">
<input type="text" id="job_id" name="job_id" class="form-control" value="{{$item->id}}" placeholder="job_id" readonly>
</div>
<div class="col-12 col-sm-6">
<input type="text" id="job_posted_by" name="job_posted_by" value="{{$item->role}}"class="form-control" placeholder="Job Posted By" readonly>
</div>
<div class="col-12 col-sm-6">
<input type="file" id="image"  name ="image" class="form-control bg-white">
</div>
<div class="col-md-6">
     <div class="mb-3">
        <label for="example-fileinput" class="form-label"></label>
            <img id="showImage" src="{{ (!empty($apply_job->photo))? url('upload/candidate_images/'.$apply_job->image):url('upload/no_image.jpg')}}" style="width: 150px;"
  alt="Avatar" >
     </div>
</div> 

<div class="col-12 col-sm-6">
<input type="file" name="resume"  id = "resume"class="form-control bg-white">
</div>
<div class="col-md-6">
     <div class="mb-3">
        <label for="example-fileinput" class="form-label"></label>
          <span style="color:red;"> upload Pdf.. </span><img id="showImage1" src="{{ (!empty($apply_job->photo))? url('upload/candidate_images/'.$apply_job->image):url('upload/pdf.png')}}" style="width: 50px;"
  alt="Avatar" >
     </div>
</div> 
<div class="col-12">
<textarea class="form-control" id="message" name="message" rows="5" placeholder="message"></textarea>
</div>
<div class="col-12">
<button class="btn btn-primary w-100" type="submit">Apply Now</button>
</div>
</div>
</form>
</div>
</div>
<div class="col-lg-4">
<div class="bg-light rounded p-5 mb-4 wow slideInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: slideInUp;">
<h4 class="mb-4">Job Summery</h4>
<p><i class="fa fa-angle-right text-primary me-2"></i>Published On: {{$item->created_at->format('Y-m-d')}}</p>
<p><i class="fa fa-angle-right text-primary me-2"></i>Vacancy: {{$item->no_vacancy}} Position</p>
<p><i class="fa fa-angle-right text-primary me-2"></i>Job Nature: Full Time</p>
<p><i class="fa fa-angle-right text-primary me-2"></i>Location: kolkata, India</p>

</div>
<div class="bg-light rounded p-5 wow slideInUp" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: slideInUp;">
<h4 class="mb-4">Company Detail</h4>
<p class="m-0">Ipsum dolor ipsum accusam stet et et diam dolores, sed rebum sadipscing elitr vero dolores. Lorem dolore elitr justo et no gubergren sadipscing, ipsum et takimata aliquyam et rebum est ipsum lorem diam. Et lorem magna eirmod est et et sanctus et, kasd clita labore.</p>
</div>
</div>
</div>
</div>
</div>

<script type="text/javascript">
    $(document).ready(function(){
        $('#image').change(function(e){
            var reader = new FileReader();
            reader.onload = function(e){
                $('#showImage').attr('src',e.target.result);
            }
            reader.readAsDataURL(e.target.files['0']);
        });
    });

</script>
<script type="text/javascript">
    $(document).ready(function(){
        $('#resume').change(function(e){
            var reader = new FileReader();
            reader.onload = function(e){
                $('#showImage1').attr('src',e.target.result);
            }
            reader.readAsDataURL(e.target.files['0']);
        });
    });

</script>
@endsection