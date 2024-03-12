@extends('admin.admin_dashboard')
@section('admin')
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <h4 class="mb-12 header-title">Career Oppertunity</h4>

                <form action="{{ route('update.job.designation') }}" method ="post">
                    @csrf
                    <input type="hidden" name="id" value="{{ $edit_job_designation->id }}">
                    <div class="mb-6 col-md-6">
                    
                        <label for="exprience" class="form-label">Update Your Job Description :</label><br>
                        <input type="text" class="form-control" id="job_designation" name="job_designation" value="{{$edit_job_designation->job_designation}}" placeholder="Please Enter New Job Description" >
                    </div>
                    
                    <br>

                    <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                </form>

            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div>
@endsection
