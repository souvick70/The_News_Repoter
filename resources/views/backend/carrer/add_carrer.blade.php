@extends('admin.admin_dashboard')
@section('admin')
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <h4 class="mb-12 header-title">Career Oppertunity</h4>

                <form action="{{ route('store.carrer') }}" method ="post">
                    @csrf
                    <h4 class="mb-12 header-title">Add Jobs</h4>
                    <div class="mb-6 col-md-6">

                    <div class="mb-12">
                        <label for="exprience" class="form-label">Company Name :</label><br>
                        <input type="text" class="form-control" id="c_name" name="c_name" value="The News Repoter" placeholder="Please Company Name">
                    </div>
                    <br>
                        <label for="role" class="form-label">Role :</label>
                        <select name="role" id="role" class="form-select">
                            <option disabled>Select Your Option</option>
                            <option value="Admin">Admin</option>
                            <option value="Shayam Das">Shayam Das</option>

                        </select>
                    </div>
                    <br>
                    <div class="mb-12 ">
                        <script src="https://cdn.ckeditor.com/4.19.1/standard/ckeditor.js"></script>




                        <label> Job Description : </label> <br> <br>
                        <textarea name="job_details" rows="5" cols="80"></textarea>
                        <script>
                            CKEDITOR.replace('job_details');
                        </script>
                    </div>
                    <br>
                    <div class="mb-6 col-md-6">
                        <label for="vacancy" class="form-label">No Of Job Vacancy :</label><br>
                        <input type="text" class="form-control" id="no_vacancy" name="no_vacancy" placeholder="Please Enter No of Vacancy">
                    </div>
                    <br>
                    <div class="form-group col-md-6 mb-3">
                <label for="inputEmail4" class="form-label">Job Role  </label>
                <select name="job_role" class="form-select" id="example-select">
                <option diabled>Select Job Role </option>
                @foreach($Create_job_des as $item)
                <option value="{{ $item->id }}">{{ $item->job_designation }}</option>
                @endforeach
                </select>
                </div>

               





                    <br>
                    <div class="mb-6 col-md-6">
                        <label for="exprience" class="form-label">Exprience :</label><br>
                        <input type="text" class="form-control" id="exprience" name="exprience" placeholder="exprience">
                    </div>
                    <br>

                    <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                </form>

            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div>
@endsection
