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
                                <a href="{{ route('add.carrer') }}" class="btn btn-blue waves-effect waves-light">Add
                                    Career</a>
                            </ol>
                        </div>
                        <h4 class="page-title">All Job Details
                            <span class="btn btn-danger">{{ count($carrer) }}</span>
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
                                        <th>Company Name </th>
                                        <th>Job_Roles </th>
                                     
                                        <th>Vacancy </th>
                                        <th>Role </th>
                                        <th>Exprience</th>
                                        <th>Job_Details </th>
                                        <th>Status </th>
                                        <th>Action </th>
                                    </tr>
                                </thead>
                                <tbody>

                                
                                    @foreach($carrer as $key=> $item)
                                    <tr>
                                    <td width="1">{{$key+1}}</td>
                                    <td width="1">{{$item->c_name}}</td>
                                    
                                    @foreach($create_job_designation as $item1)
                                    
                                    @if($item->job_role == $item1->id)
                                    <td>{{$item1->job_designation}}</td>
                                    @else

                                    @endif
                                    @endforeach
                                    
                                  
                                    <td width="1">{{$item->no_vacancy}}</td>
                                    <td width="1">{{$item->role}}</td>
                                    <td width="1">{{$item->exprience}}</td>
                                    <td width="1">{!!$item->job_details!!}</td>
                                    
                                    <td>
                                        @if($item->status == 1)
                                        <span class="badge badge-pill bg-success">Active</span>

                                        @else
                                        <span class="badge badge-pill bg-danger">InActive</span>
                                        @endif 
                                    </td> 
                                    <td>
                                        <a href="{{route('edit.carrer',$item->id)}}" class="btn btn-primary rounded-pill waves-effect waves-light">Edit</a>

                                        <a href="{{route('delete.carrer',$item->id)}}" class="btn btn-danger rounded-pill waves-effect waves-light" id="delete">Delete</a>
                                        @if($item->status == 1)
                                         <a href="{{ route('inactive.job.details',$item->id) }}" class="btn btn-primary rounded-pill waves-effect waves-light" title="Inactive"><i class="fa-solid fa-thumbs-down"></i></a>
                                         @else
                                         <a href="{{ route('active.job.details',$item->id) }}" class="btn btn-primary rounded-pill waves-effect waves-light" title="Active"><i class="fa-solid fa-thumbs-up"></i></a>
                                        @endif

                                    </td> 
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
