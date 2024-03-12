@extends('admin.admin_dashboard')
@section('admin')
<div class="content">

        <!-- Start Content-->
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box">
                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <a href="{{ route('admin.carrer') }}" class="btn btn-blue waves-effect waves-light">All Jobs By Admin</a>
                            </ol>
                        </div>
                        <h4 class="page-title">Application Applied By The Candidate
                            <span class="btn btn-danger">{{ count($show_all) }}</span>
                        </h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">


                            <table id="basic-datatable" class="table dt-responsive nowrap w-100">
                                <thead>
                                    <tr>
                                        <th>Sl</th>
                                        <th>Candidate Name </th>
                                        <th>Candidate Address </th>
                                        <th>Candidate Email </th>
                                        <th>Candidate Qualification </th>
                                        <th>Gender</th>
                                        <th>Job_Roles </th>
                                        <th>Phone </th>
                                        <th>Candidate Exprience </th>
                                        <th>Job Id </th>
                                        <th>Job Posted By </th>
                                        <th>Image </th>
                                        <th>Download PDF </th>
                                        <th>Message </th>
                                        <th>Action </th>
                                    </tr>
                                </thead>


                                <tbody>
                                @foreach ($show_all as $key => $item)
                                        <tr>
                                    <td>{{$key+1}}</td>
                                    <td>{{$item->	candidate_name}}</td>
                                    <td>{{$item->candidate_address1}}.{{$item->candidate_address2}}</td>
                                    <td>{{$item->	candidate_email}}</td>
                                    <td>{{$item->	candidate_qualification}}</td>
                                    <td>{{$item->	gender}}</td>
                                    <td>{{$item->	job_role_designation}}</td>
                                    <td>{{$item->	candidate_phone}}</td>
                                    <td>{{$item->	candidate_exprience}}</td>
                                    <td>{{$item->	job_id}}</td>
                                    <td>{{$item->	job_posted_by}}</td>
                                    <td><img src=  "{{asset('upload/candidate_images/'.$item->image) }}" width="100px" alt="job image" title="job image"></td>
                                    <td><a href="{{route('download.application',$item->id)}}"><img src="{{url('upload/pdf.png') }}" width="30px"/></a></td>
                                    <td>{{$item->	message}}</td>
                                    <td><a href="{{route('delete.application',$item->id)}}" class="btn btn-danger rounded-pill waves-effect waves-light" id="delete">Delete</a></td>
                                    
                                        </tr>
                                @endforeach

                                </tbody>
                            </table>

                        </div> <!-- end card body-->
                    </div> <!-- end card -->
                </div><!-- end col-->
            </div>
            <!-- end row-->



        </div> <!-- container -->

    </div> <!-- content -->
@endsection
