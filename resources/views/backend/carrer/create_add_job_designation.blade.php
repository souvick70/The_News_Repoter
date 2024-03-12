@extends('admin.admin_dashboard')
@section('admin')
<div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <h4 class="mb-12 header-title">Create New Job Designation</h4>
                <br>

                <form action="{{ route('create.store.job.designation') }}" method ="post">
                    @csrf
                    <div class="mb-6 col-md-6">

                    <div class="mb-12">
                        <label for="exprience" class="form-label">Create New Job Designation :</label><br>
                        <input type="text" class="form-control" id="job_designation" name="job_designation" placeholder="Please Enter Job Designation">
                    </div>
                   <br>

                    <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                </form>

            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div>
@endsection
