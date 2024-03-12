@extends('admin.admin_dashboard')
@section('admin')


                
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <h4 class="mb-12 header-title">Career Oppertunity</h4>

                <form action="{{ route('update.carrer') }}" method ="post">
                    @csrf
                    <input type="hidden" name="id" value="{{ $edit_carrer->id }}">
                  
                    <div class="mb-6 col-md-6">
                    <div class="mb-6 ">
                        <label for="exprience" class="form-label">Company Name :</label><br>
                        <input type="text" class="form-control" id="c_name" name="c_name" value="{{$edit_carrer->c_name}}" placeholder="Please Company Name" >
                    </div>
                    <br>
                        <label for="role" class="form-label">Roles :</label>
                        <select name="role" id="role" class="form-select">
                            
                            <option value="Admin" {{ $edit_carrer->role == 'Admin' ? 'selected' : '' }}>Admin</option>
                            <option value="Shayam Das" {{ $edit_carrer->role == 'Shayam Das' ? 'selected' : '' }}>Shayam Das</option>
                        </select>
                    </div>
                    <br>
                    <div class="mb-6 col-md-6">
                    <div class="mb-6 ">
                    <label for="job_role"  class="form-label">Job Role</label>
    <select id="job_role" name="job_role" class="form-select">
        
      @foreach($create_job_designation1 as $item1)
      <option value="{{ $item1->id }}" {{ $item1->id == $edit_carrer->job_role ? 'selected' : '' }}>  {{ $item1->job_designation }}</option>
      @endforeach
       
       
      
            
        
    </select>
</div>
</div>

                    <br>
                    <div class="mb-12">
                        <script src="https://cdn.ckeditor.com/4.19.1/standard/ckeditor.js"></script>
                        <label> Job Description : </label> <br> <br>
                        <textarea name="job_details"  rows="5" cols="80">{!! $edit_carrer->job_details !!}</textarea>
                        <script>
                            CKEDITOR.replace('job_details');
                        </script>
                    </div>
                    <br>
                    <div class="mb-6 col-md-6">
                        <label for="vacancy" class="form-label">No Of Job Vacancy :</label><br>
                        <input type="text" class="form-control" id="no_vacancy" name="no_vacancy" value="{{$edit_carrer->no_vacancy}}" placeholder="Please Enter No of Vacancy">
                    </div>
                    <br>
                    <div class="mb-12 col-md-6">
                        <label for="exprience" class="form-label">Exprience :</label><br>
                        <input type="text" class="form-control" id="exprience" name="exprience" value="{{$edit_carrer->exprience}}" placeholder="exprience">
                    </div>
                    <br>

                    <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                </form>

            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div>
@endsection
