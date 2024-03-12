<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\NewsPost;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\About;
use App\Models\PrivacyPolicy;
use App\Models\Carrer;
use App\Models\CreateJobDesignation;
use App\Models\CandidateApply;
use Carbon\Carbon; 
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Session;
use App;
use DateTime;
use App\Models\User;

class IndexController extends Controller
{
    //
    public function Index(){
        ini_set('max_execution_time',3600);
        $newnewspost = NewsPost::orderBy('id','DESC')->limit(8)->get();
        $newspopular = NewsPost::orderBy('view_count','DESC')->limit(8)->get();

        $skip_cat_0 = Category::skip(0)->first();
        $skip_news_0 = NewsPost::where('status',1)->where('category_id',$skip_cat_0->id)->orderBy('id','DESC')->limit(5)->get();

        $skip_cat_1 = Category::skip(1)->first();
        $skip_news_1 = NewsPost::where('status',1)->where('category_id',$skip_cat_1->id)->orderBy('id','DESC')->limit(3)->get();

        $skip_cat_2 = Category::skip(2)->first();
        $skip_news_2 = NewsPost::where('status',1)->where('category_id',$skip_cat_2->id)->orderBy('id','DESC')->limit(6)->get();

        $skip_cat_3 = Category::skip(3)->first();
        $skip_news_3 = NewsPost::where('status',1)->where('category_id',$skip_cat_3->id)->orderBy('id','DESC')->limit(2)->get();

        
        $skip_cat_4 = Category::skip(4)->first();
        $skip_news_4 = NewsPost::where('status',1)->where('category_id',$skip_cat_4->id)->orderBy('id','DESC')->limit(5)->get();
        
        $skip_cat_5 = Category::skip(5)->first();
        $skip_news_5 = NewsPost::where('status',1)->where('category_id',$skip_cat_5->id)->orderBy('id','DESC')->limit(5)->get();
        
        $skip_cat_6 = Category::skip(6)->first();
        $skip_news_6 = NewsPost::where('status',1)->where('category_id',$skip_cat_6->id)->orderBy('id','DESC')->limit(6)->get();
        
         $skip_cat_7= Category::skip(7)->first();
        $skip_news_7 = NewsPost::where('status',1)->where('category_id',$skip_cat_7->id)->orderBy('id','DESC')->limit(5)->get();
        
        $skip_cat_8 = Category::skip(8)->first();
        $skip_news_8 = NewsPost::where('status',1)->where('category_id',$skip_cat_8->id)->orderBy('id','DESC')->limit(6)->get();
        
        $skip_cat_9 = Category::skip(9)->first();
        $skip_news_9 = NewsPost::where('status',1)->where('category_id',$skip_cat_9->id)->orderBy('id','DESC')->limit(3)->get();
        
        
        
        return view('frontend.index',compact('newnewspost','newspopular','skip_cat_0','skip_news_0','skip_cat_1','skip_news_1','skip_cat_2','skip_news_2',
        'skip_cat_3','skip_news_3','skip_cat_4','skip_news_4','skip_cat_5','skip_news_5','skip_cat_6','skip_news_6',
        'skip_cat_7','skip_news_7','skip_cat_8','skip_news_8','skip_cat_9','skip_news_9'));
    }

    public function NewsDetails($id,$slug){

        // return $id;

        $news = NewsPost::find($id);

        $tags = $news->tags;
        $tags_all = explode(',', $tags);

        $cat_id = $news->category_id;
        $relatedNews = NewsPost::where('category_id',$cat_id)->where('id','!=',$id)->orderBy('id','DESC')->limit(6)->get();

        $newsKey = 'blog' . $news->id;
        if (!Session::has($newsKey)) {
           $news->increment('view_count');
           Session::put($newsKey,1);
        }
        $newnewspost = NewsPost::orderBy('id','DESC')->limit(8)->get();
        $newspopular = NewsPost::where('view_count',1)->orderBy('view_count','DESC')->limit(8)->get();
        return view('frontend.news.news_details',compact('news','tags_all','relatedNews','newnewspost','newspopular'));

    }

    public function CatWiseNews($id,$slug){

        $news = NewsPost::where('status',1)->where('category_id',$id)->orderBy('id','DESC')->get();
        $breadcat = Category::where('id',$id)->first();
        $newstwo = NewsPost::where('status',1)->where('category_id',$id)->orderBy('id','DESC')->limit(2)->get();

       $newnewspost = NewsPost::orderBy('id','DESC')->limit(8)->get();
        $newspopular = NewsPost::orderBy('view_count','DESC')->limit(8)->get();

        return view('frontend.news.category_news',compact('news','breadcat','newstwo','newnewspost','newspopular'));

        //return view('frontend.news.category_news',compact('news','breadcat'));

    }// End Method

    public function SubCatWiseNews($id,$slug){

        $news = NewsPost::where('status',1)->where('subcategory_id',$id)->orderBy('id','DESC')->get();

        $breadsubcat = Subcategory::where('id',$id)->first();

        $newstwo = NewsPost::where('status',1)->where('subcategory_id',$id)->orderBy('id','DESC')->limit(2)->get();

        $newnewspost = NewsPost::orderBy('id','DESC')->limit(8)->get();
        $newspopular = NewsPost::orderBy('view_count','DESC')->limit(8)->get();

        return view('frontend.news.subcategory_news',compact('news','breadsubcat','newstwo','newnewspost','newspopular'));

    }// End Method

    public function Change(Request $request){

        App::setLocale($request->lang);
        session()->put('locale',$request->lang);

        return redirect()->back();

    }// End Method
    public function SearchByDate(Request $request){

        $date = new DateTime($request->date);
        $formatDate = $date->format('Y-m-d');

        $newnewspost = NewsPost::orderBy('id','DESC')->limit(8)->get();
        $newspopular = NewsPost::orderBy('view_count','DESC')->limit(8)->get();

        $news = NewsPost::where('post_date',$formatDate)->latest()->get();
        return view('frontend.news.search_by_date',compact('news','formatDate','newnewspost','newspopular'));

    }// End Method

    public function NewsSearch(Request $request){


        $request->validate(['search' => "required"]);

        $item = $request->search;

        $news = NewsPost::where('news_title','LIKE',"%$item%")->orWhere('category_id','LIKE',"%$item%")->get();
        
        $newnewspost = NewsPost::orderBy('id','DESC')->limit(8)->get();
        
        $newspopular = NewsPost::orderBy('view_count','DESC')->limit(8)->get();

        return view('frontend.news.search',compact('news','newnewspost','newspopular','item'));


    }// End Method

    public function ReporterNews($id){
        $reporter = User::findOrFail($id);

        $news = NewsPost::where('user_id',$id)->get();
        return view('frontend.reporter.reporter_news_post',compact('reporter','news'));

    }
///Footer section //
    public function AboutUs(){
        $about = About::all();
        return view('frontend.about.about_us',compact('about'));
    }

    public function PrivacyPolicy(){
        $privacy_policy = PrivacyPolicy::all();
        return view('frontend.privacy.privacy_policy',compact('privacy_policy'));
    }

    public function CareerApply(){
        $job_post = CreateJobDesignation::get();
        $career = Carrer::all();
        return view('frontend.carrer.carrer_all',compact('career','job_post'));
    }

    public function SeeDetailsApplyJobs($id){
        $crate_designation = CreateJobDesignation::get();
        $job_desc = Carrer::all();
        $apply_job = CandidateApply::all();
        return view('frontend.carrer.see_details_apply_jobs', compact('job_desc','crate_designation','apply_job'));
    }

    public function StoreCandidateApply(Request $request){
        $can_apply = new CandidateApply();

        $can_apply->candidate_name = $request->candidate_name;
        $can_apply->candidate_address1 = $request->candidate_address1;
        $can_apply->candidate_address2 = $request->candidate_address2;
        $can_apply->candidate_email = $request->candidate_email;
        $can_apply->candidate_qualification = $request->candidate_qualification;
        $can_apply->candidate_no_of_vacancy = $request->candidate_no_of_vacancy;
        $can_apply->gender = $request->gender;
        $can_apply->job_role_designation = $request->job_role_designation;
        $can_apply->candidate_phone = $request->candidate_phone;

        $can_apply->candidate_exprience = $request->candidate_exprience;
        $can_apply->job_id = $request->job_id;
        $can_apply->job_posted_by = $request->job_posted_by;
       

        if($request->hasfile('image'))
        {
            $file = $request->file('image');
            @unlink(public_path('upload/candidate_images/'.$data->image));
            $filename = date('YmdHi').$file->getClientOriginalName();
            $file->move(public_path('upload/candidate_images'),$filename);
            $can_apply->image = $filename;
           
        }

        
            if($request->file('resume')) {
                $file = $request->file('resume');
                $filename = time().'_'.$file->getClientOriginalName();

                // File upload location
                $location = 'upload/candidate_resume/';

                // Upload file
                $file->move($location,$filename);
                $can_apply->resume = $filename;

                Session::flash('message','Upload Successfully.');
                Session::flash('alert-class', 'alert-success');
          }else{
                Session::flash('message','File not uploaded.');
                Session::flash('alert-class', 'alert-danger');
          }
        
          
        
        $can_apply->message = $request->message;
       $can_apply->save();


        
//dd($can_apply);
        return redirect()->back()->with('message',' Data with Image Upload Successfully');
       
       
    }


 
}
