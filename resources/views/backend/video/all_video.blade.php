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
                    <a href="{{route('add.video.gallery')}}" class="btn btn-blue waves-effect waves-light">Add Video</a>
                </ol>
            </div>
                                    <h4 class="page-title">Video Gallery All </h4>
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
                    <th>Video Image</th>
                    <th>Video Title</th>
                    <th>Post Date</th>
                    <th>Action </th> 
                </tr>
            </thead>
        
        
            <tbody>
            @foreach($video as $key=> $item)
                <tr>
                    <td>{{ $key+1 }}</td>
                    <td><img src="{{ asset($item->video_image ) }}"  style="width:50px; height:50px;"> </td>
                    <td>{{ $item->video_title }}</td>
                    <td>{{ $item->post_date }}</td>
                    <td>
      <a href="{{ route('edit.video.gallery',$item->id) }}" class="btn btn-primary rounded-pill waves-effect waves-light">Edit</a>

      <a href="{{ route('delete.video.gallery',$item->id) }}" class="btn btn-danger rounded-pill waves-effect waves-light" id="delete">Delete</a>

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


