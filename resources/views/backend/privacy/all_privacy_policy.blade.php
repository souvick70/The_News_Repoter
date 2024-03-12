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
                    <a href="{{ route('add.privacy.policy') }}" class="btn btn-blue waves-effect waves-light">Add Admin</a>
                </ol>
            </div>
                                    <h4 class="page-title">Privacy Policy 
                                    
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
 

        <table id="" class="table dt-responsive nowrap w-100">
            <thead>
                <tr>
                    <th>Sl</th>
                    <th>About Us </th> 
                    <th>Action </th> 
                </tr>
            </thead>
        
        
            <tbody>
            	@foreach($privacy_policy as $key=> $item)
                <tr>
                    <td>{{ $key+1 }}</td>
                    
                    <td  >{!! $item->privacy !!}</td>
    
                                     
                    <td>
      <!-- <a href="" class="btn btn-primary rounded-pill waves-effect waves-light">Edit</a> -->

      <a href="{{route('delete.privacy.policy',$item->id)}}" class="btn btn-danger rounded-pill waves-effect waves-light" id="delete">Delete</a>
      
        

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


