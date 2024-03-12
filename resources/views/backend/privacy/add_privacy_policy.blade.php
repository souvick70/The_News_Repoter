@extends('admin.admin_dashboard')
@section('admin')



<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
<script src="https://cdn.ckeditor.com/4.19.1/standard/ckeditor.js"></script>
</head>
<body>

<form id="myForm" method="post" action="{{ route('store.privacy.policy') }}" enctype="multipart/form-data">
    	@csrf 
	<label> <h1>Add Privacy Policy Section</h1> </label> <br> <br><br>
	<textarea name="privacy" rows="5" cols="80"></textarea>
 <script>
 CKEDITOR.replace('privacy');
</script>
<br>
<button type="submit" class="btn btn-primary waves-effect waves-light">Save Changes</button>
</form>
@endsection 