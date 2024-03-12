<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Response;
use App\Models\User;
use App\Models\Carrer;
use App\Models\About;
use App\Models\CreateJobDesignation;
use App\Models\PrivacyPolicy;
use App\Models\CandidateApply;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;



class AdminController extends Controller
{ 
    public function AdminDashboard(){
        return view('admin.index');
    } // End Method 


    public function AdminLogout(Request $request){

        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

         $notification = array(
            'message' => 'Admin Logout Successfully',
            'alert-type' => 'info'

        );

        return redirect('/admin/logout/page')->with($notification);

    } // End Method 

    public function AdminLogin(){
        
        return view('admin.admin_login');
        
    } // End Method 

    public function AdminLogoutPage(){
         return view('admin.admin_logout');
    } // End Method 



    public function AdminPofile(){

        $id = Auth::user()->id;
        $adminData = User::find($id);
        return view('admin.admin_profile',compact('adminData'));

    } // End Method 


    public function AdminProfileStore(Request $request){

        $id = Auth::user()->id;
        $data = User::find($id);
        $data->username = $request->username;
        $data->name = $request->name;
        $data->email = $request->email;
        $data->phone = $request->phone; 

        if ($request->file('photo')) {
            $file = $request->file('photo');
            @unlink(public_path('upload/admin_images/'.$data->photo));
            $filename = date('YmdHi').$file->getClientOriginalName();
            $file->move(public_path('upload/admin_images'),$filename);
            $data['photo'] = $filename;
        }

        $data->save();

        $notification = array(
            'message' => 'Admin Profile Updated Successfully',
            'alert-type' => 'success'

        );
        return redirect()->back()->with($notification);

    } // End Method 


    public function AdminChangePassword(){
        return view('admin.admin_change_passsword');
    } // End Method 
    public function AdminUpdatePassword(Request $request){

        // Validation 
        $request->validate([
            'old_password' => 'required',
            'new_password' => 'required|confirmed', 
        ]);

        // Match The Old Password 
        if (!Hash::check($request->old_password, auth::user()->password)) {
            return back()->with('error', "Old Password Doesn't Match!!");
        }
        // Update the new password 
        User::whereId(auth()->user()->id)->update([
            'password' => Hash::make($request->new_password)
        ]);

        return back()->with('status', "Password Change Successfully");

    } // End Method 

    public function AllAdmin(){

        $alladminuser = User::where('role','admin')->latest()->get();
        return view('backend.admin.all_admin',compact('alladminuser'));
    } // End Method

    public function AddAdmin(){
        $roles = Role::all();
        // if (!is_null($role)) {
        //    $role->delete();
        // }

        //  $notification = array(
        //     'message' => 'Role Permission Deleted Successfully',
        //     'alert-type' => 'success'

        // );
        // return redirect()->back()->with($notification); 

        return view('backend.admin.add_admin',compact('roles'));
    } // End Method 


    public function StoreAdmin(Request $request){

        $request->validate([
            'username' => 'required',
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'password' => 'required',
        ]);

        $user = new User();
        $user->username = $request->username;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->password = Hash::make($request->password);
        $user->role = 'admin';
        $user->status = 'inactive';
        $user->save();

        if($request->roles){
           $user->assignRole($request->roles);
       }


         $notification = array(
            'message' => 'New Admin User Created Successfully',
            'alert-type' => 'success'

        );
        return redirect()->route('all.admin')->with($notification);


    } // End Method 

    public function DeleteAdmin($id){

        $user =  User::findOrFail($id);
        if (!is_null($user)) {
            $user->delete();
        }
 
          $notification = array(
             'message' => 'Admin User Deleted Successfully',
             'alert-type' => 'success'
 
         );
 
         return redirect()->back()->with($notification);
 
     }// End Mehtod 
     public function EditAdmin($id){
        $roles = Role::all();
        $adminuser = User::findOrFail($id);
        return view('backend.admin.edit_admin',compact('adminuser','roles'));

    } // End Method 

    public function UpdateAdmin(Request $request){

        $request->validate([
            'username' => 'required',
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
        ]);


        $admin_id = $request->id;

        $user = User::findOrFail($admin_id);
        $user->username = $request->username;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->phone; 
        $user->role = 'admin';
        $user->status = 'inactive';
        $user->save();


        $user->roles()->detach();
         if($request->roles){
            $user->assignRole($request->roles);
        }
         $notification = array(
            'message' => 'Admin User Updated Successfully',
            'alert-type' => 'success'

        );
        return redirect()->route('all.admin')->with($notification);

    } // End Method 


    public function InactiveAdminUser($id){
        User::findOrFail($id)->update(['status'=>'inactive']);
        $notification = array(
            'message' =>'Admin User Inactive',
            'alert-type'=>'success'
        );
        return redirect()->back()->with($notification);

    }


    public function ActiveAdminUser($id){
        User::findOrFail($id)->update(['status'=>'active']);
        $notification = array(
            'message' =>'Admin User Active',
            'alert-type'=>'success'
        );
        return redirect()->back()->with($notification);

    }


    public function AdminAboutUs(){
        $about = About::all();
        return view('backend.about.all_about',compact('about'));
    }

    public function AdminAddAbout(){
        $add_about = About::all();
        return view('backend.about.add_about',compact('add_about'));
    } // End Method 

    public function StoreAboutUs(Request $request){

        $request->validate([
            'about_us' => 'required',
            
        ]);

         $about = new About();
        $about->about_us = $request->about_us;
        
        $about->save();
        
        if($request->roles){
           $user->assignRole($request->roles);
       }


         $notification = array(
            'message' => 'New About us Created Successfully',
            'alert-type' => 'success'

        );
        return redirect()->route('admin.about.us')->with($notification);


    } // End Method 

    public function DeleteAboutUs($id){
        $about_del =  About::findOrFail($id);
        if (!is_null($about_del)) {
            $about_del->delete();
        }
 
          $notification = array(
             'message' => 'Admin About Us Deleted Successfully',
             'alert-type' => 'success'
 
         );
 
         return redirect()->back()->with($notification);

    }

    ///privacy policy section  //
    public function AllPrivacyPolicy()
    {
        $privacy_policy = PrivacyPolicy::all();
        return view('backend.privacy.all_privacy_policy',compact('privacy_policy'));
    }

    public function AdminPrivacyPolicy(){
        $add_privacy_policy = PrivacyPolicy::all();
        return view('backend.privacy.add_privacy_policy',compact('add_privacy_policy'));
    } // End Method 

    public function StorePrivacyPolicy(Request $request){

        $request->validate([
            'privacy' => 'required',
            
        ]);

        $privacy_policy = new PrivacyPolicy();
        $privacy_policy->privacy = $request->privacy;
      
       $privacy_policy->save();
        
        if($request->roles){
           $user->assignRole($request->roles);
       }


         $notification = array(
            'message' => 'New Privacy Policy Added Created Successfully',
            'alert-type' => 'success'

        );
        return redirect()->route('all.privacy.policy')->with($notification);


    } // End Method 

    public function DeletePrivacyPolicy($id){
        $privacy_policy_del =  PrivacyPolicy::findOrFail($id);
        if (!is_null($privacy_policy_del)) {
            $privacy_policy_del->delete();
        }
 
          $notification = array(
             'message' => 'Admin About Us Deleted Successfully',
             'alert-type' => 'success'
 
         );
 
         return redirect()->back()->with($notification);

    }

    public function AdminCarrer(){
        $create_job_designation = CreateJobDesignation::all();
        $carrer = Carrer::all();
        return view('backend.carrer.all_carrer',compact('carrer','create_job_designation'));
       
    }
    public function AdminAddCarrer(){

        $Create_job_des = CreateJobDesignation::all();
        return view('backend.carrer.add_carrer',compact('Create_job_des'));
       
    }

    public function AdminStoreCarrer(Request $request){

        $request->validate([
            'c_name' => 'required',
            'job_details' => 'required',
            'no_vacancy'  => 'required',
            'job_role' => 'required',
            'role' => 'required', 
            'exprience' => 'required', 
        ]);

        $career = new Carrer();
        $career->c_name = $request->c_name;
        $career->job_role = $request->job_role;
        $career->job_details = $request->job_details;
        $career->no_vacancy = $request->no_vacancy;
        $career->role = $request->role;
        $career->exprience = $request->exprience;
      
        $career->save();
        
        if($request->roles){
           $user->assignRole($request->roles);
       }


         $notification = array(
            'message' => 'New Job Post Created Successfully',
            'alert-type' => 'success'

        );
        return redirect()->route('admin.carrer')->with($notification);


    }
    public function EditCarrer($id){
       
        $create_job_designation1 = CreateJobDesignation::get();
         $edit_carrer = Carrer::findOrFail($id);
        //return true;
        return view('backend.carrer.edit_carrer',compact('edit_carrer','create_job_designation1'));

    } // End Method 

    public function UpdateCarrer(Request $request){
        $request->validate([
            'c_name' => 'required',
            'job_role'=>'required',
            'job_details' => 'required',
            'no_vacancy' => 'required',
            'role' => 'required', 
            'exprience' => 'required',
        ]);

        $update_carrer = $request->id;

        Carrer::findOrFail($update_carrer)->update([
            
            'role'=>$request->role,
            'c_name' => $request->c_name,
            'job_role' => $request->job_role,
            'job_details' => $request->job_details,
            'no_vacancy' => $request->no_vacancy,
            'exprience' =>  $request->exprience,
        ]); 

        
         $notification = array(
            'message' => 'Job Post Updated Successfully',
            'alert-type' => 'success'

        );
        return redirect()->route('admin.carrer')->with($notification);

    }

    public function DeleteCarrer($id){
       {
            $carrer_del =  Carrer::findOrFail($id);
            if (!is_null($carrer_del)) {
                $carrer_del->delete();
            }
     
              $notification = array(
                 'message' => 'Job Post Deleted Successfully',
                 'alert-type' => 'success'
     
             );
     
             return redirect()->back()->with($notification);

    }

    }
    public function InactiveJobDetails($id){

        Carrer::findOrFail($id)->update(['status' => 0]);

    $notification = array(
        'message' => 'Job Expeired',
        'alert-type' => 'info'

    );
    return redirect()->back()->with($notification);
    }

    public function ActiveJobDetails($id){
        Carrer::findOrFail($id)->update(['status' => 1]);

        $notification = array(
            'message' => 'New Active Job Post',
            'alert-type' => 'info'
    
        );
        return redirect()->back()->with($notification);

    }
    public function CreateAllJobDesignation(){
        $create_all_job_designation = CreateJobDesignation::all();
        return view('backend.carrer.create_all_job_designation',compact('create_all_job_designation'));
    }
    public function CreateAddJobDesignation(){

        return view('backend.carrer.create_add_job_designation');
    }

    public function CreateStoreJobDesignation(Request $request){

        $request->validate([
            'job_designation' => 'required',
        ]);

        $create_job_desig = new CreateJobDesignation();
        $create_job_desig->job_designation = $request->job_designation;
      
        $create_job_desig->save();
        
        if($request->roles){
           $user->assignRole($request->roles);
       }


         $notification = array(
            'message' => 'New Job Designation Created Successfully',
            'alert-type' => 'success'

        );
        return redirect()->route('create.all.job.designation')->with($notification);

    }
    public function EditJobDesignation($id){
        
        $edit_job_designation = CreateJobDesignation::findOrFail($id);
        return view('backend.carrer.edit_job_designation',compact('edit_job_designation'));

    } // End Method 

    public function UpdateJobDesignation(Request $request){
        $request->validate([
            'job_designation' => 'required',
        ]);

        $job_designation_create = $request->id;

        CreateJobDesignation::findOrFail($job_designation_create)->update([
            
        
            'job_designation' => $request->job_designation,
        ]); 

        
         $notification = array(
            'message' => 'Job Designation Updated Successfully',
            'alert-type' => 'success'

        );
        return redirect()->route('create.all.job.designation')->with($notification);

    }

    public function DeleteJobDesignation($id){
       {
            $job_designation_del =  CreateJobDesignation::findOrFail($id);
            if (!is_null($job_designation_del)) {
                $job_designation_del->delete();
            }
     
              $notification = array(
                 'message' => 'Job Designation Deleted Successfully',
                 'alert-type' => 'success'
     
             );
     
             return redirect()->back()->with($notification);

    }

    }

    //Show All job application//

    public function AllShowJobApplication(){
        $show_all = CandidateApply::all();

       return view('backend.candidate_apply.all_apply_show',compact('show_all'));
    }

    public function DownloadApplication($id) {
        
        $cv_show = CandidateApply::where('id', $id)->first();

        if (!$cv_show) {
        return response()->json(['error' => 'Candidate not found'], 404);
        }

        $cv = $cv_show->resume;
        $file_path = public_path("download/".$cv);

        if (!file_exists($file_path)) {
        $file_path = asset("download/".$cv);
        }

        if (!file_exists($file_path)) {
        $file_path = url("download/".$cv);
        }

        if (!file_exists($file_path)) {
        $file_path = base_path("public/upload/candidate_resume/".$cv);
        }

        if (!file_exists($file_path)) {
        throw new \Exception('File not found');
        }
        
        $notification = array(
            'message' => 'CV Download Successfully Complete Go To Download Folder',
            'alert-type' => 'success'

        );

        //return response()->download($file_path)->with($notification);
        return response()->download($file_path);

        
       
    }
       // dd($file_path);

       public function DeleteApplication($id){
        $application_del =  CandidateApply::findOrFail($id);
            if (!is_null($application_del)) {
                $application_del->delete();
            }
     
              $notification = array(
                 'message' => 'Application Deleted Successfully',
                 'alert-type' => 'success'
     
             );
     
             return redirect()->back()->with($notification);

       }
    
}
 