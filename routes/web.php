<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\Frontend\IndexController;
use App\Http\Controllers\Frontend\ReviewController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\NewsPostController;
use App\Http\Controllers\Backend\BannerController;
use App\Http\Controllers\Backend\PhotoGalleryController;
use App\Http\Controllers\Backend\VideoGalleryController;
use App\Http\Controllers\Backend\SeoSettingController;
use App\Http\Controllers\Backend\RoleController;

use App\Http\Middleware\RedirectIfAuthenticated;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
//Start User Section All Route //
Route::get('/', [IndexController::class,'Index']);

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/dashboard', [UserController::class, 'UserDashboard'])->name('dashboard');
    Route::post('/user/profile/store',[UserController::class,'UserProfileStore'])->name('user.profile.store');
    Route::get('/user/logout',[UserController::class,'UserLogout'])->name('user.logout');
    Route::get('/user/change/password',[UserController::class,'UserChangePassword'])->name('user.change.password');
    Route::post('/user/update/password', [UserController::class, 'UserUpdatePassword'])->name('user.update.password');
});



Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';




Route::middleware(['auth','role:admin'])->group(function() {

Route::get('/admin/dashboard',[AdminController::class,'AdminDashboard'])->name('admin.dashboard');
Route::get('/admin/logout',[AdminController::class,'AdminLogout'])->name('admin.logout');
Route::get('/admin/profile',[AdminController::class,'AdminPofile'])->name('admin.profile');
Route::post('/admin/profile/store',[AdminController::class,'AdminProfileStore'])->name('admin.profile.store');
Route::get('/admin/change/password',[AdminController::class,'AdminChangePassword'])->name('admin.change.password');
Route::post('/admin/update/password', [AdminController::class, 'AdminUpdatePassword'])->name('admin.update.password');
});
//End  middleware admin dashboard //

//Admin Dashboard route //
Route::get('/admin/login',[AdminController::class,'AdminLogin'])->middleware(RedirectIfAuthenticated::class)->name('admin.login');
Route::get('/admin/logout/page',[AdminController::class,'AdminLogoutPage'])->name('admin.logout.page');


//category route//
Route::middleware(['auth','role:admin'])->group(function () {

Route::controller(CategoryController::class)->group(function () {

    Route::get ('/all/category',[CategoryController::class, 'AllCategory'])->name('all.category');
    Route::get('/add/category',[CategoryController::class, 'AddCategory'])->name('add.category');
    Route::post('/store/category',[CategoryController::class, 'StoreCategory'])->name('store.category');
    Route::get('/edit/category/{id}',[CategoryController::class, 'EditCategory'])->name('edit.category');
    Route::post('/update/category',[CategoryController::class, 'UpdateCategory'])->name('update.category');
    Route::get('/delete/category/{id}',[CategoryController::class, 'DeleteCategory'])->name('delete.category');
});

//subcategory route//
Route::controller(CategoryController::class)->group(function () {

    Route::get ('/all/sub/category', 'AllSubCategory')->name('all.subcategory');
    Route::get('/add/sub/category', 'AddSubCategory')->name('add.subcategory');
    Route::post('/store/subcategory','StoreSubCategory')->name('store.subcategory');
    Route::get('/edit/subcategory/{id}','EditSubCategory')->name('edit.subcategory');
    Route::post('/update/subcategory','UpdateSubCategory')->name('update.subcategory');
    Route::get('/delete/subcategory/{id}','DeleteSubCategory')->name('delete.subcategory');
    Route::get('/subcategory/ajax/{category_id}','GetSubCategory');
});

// Admin User all Route
Route::controller(AdminController::class)->group(function(){

    Route::get('/all/admin','AllAdmin')->name('all.admin');
    Route::get('/add/admin','AddAdmin')->name('add.admin');
    Route::post('/store/admin','StoreAdmin')->name('admin.store');
    Route::get('/edit/admin/{id}','EditAdmin')->name('edit.admin');
    Route::post('/update/admin','UpdateAdmin')->name('admin.update');
    Route::get('/delete/admin/{id}','DeleteAdmin')->name('delete.admin');
    Route::get('/inactive/admin/user/{id}','InactiveAdminUser')->name('inactive.admin.user');
    Route::get('/active/admin/user/{id}','ActiveAdminUser')->name('active.admin.user');
    //Footer//
    //about us//
    Route::get ('/admin/about/us/','AdminAboutUs')->name('admin.about.us');
    Route::get('admin/add/about','AdminAddAbout')->name('admin.add.about');
    Route::post('store/about/us','StoreAboutUs')->name('store.about.us');
    Route::get('/delete/about/us/{id}','DeleteAboutUs')->name('delete.about.us');

    //privacy Policy//
    
     Route::get ('/all/privacy/policy/','AllPrivacyPolicy')->name('all.privacy.policy');
     Route::get('add/privacy/policy/','AdminPrivacyPolicy')->name('add.privacy.policy');
     Route::post('store/privacy/policy/','StorePrivacyPolicy')->name('store.privacy.policy');
     Route::get('/delete/privacy/policy/{id}','DeletePrivacyPolicy')->name('delete.privacy.policy');
    
    //Admin carrer section //
    //create job description //
    Route::get ('create/all/job/designation','CreateAllJobDesignation')->name('create.all.job.designation');
    Route::get ('create/add/job/designation','CreateAddJobDesignation')->name('create.add.job.designation');
    Route::post ('create/store/job/designation','CreateStoreJobDesignation')->name('create.store.job.designation');
    Route::get ('edit/job/designation/{id}','EditJobDesignation')->name('edit.job.designation');
    Route::post('/update/job/designation','UpdateJobDesignation')->name('update.job.designation');
    Route::get ('delete/job/designation/{id}','DeleteJobDesignation')->name('delete.job.designation');

    //Show job Application //
    Route::get ('all/show/job/application','AllShowJobApplication')->name('all.show.job.application');
    // Route::get ('create/add/job/designation','CreateAddJobDesignation')->name('create.add.job.designation');
    // Route::post ('create/store/job/designation','CreateStoreJobDesignation')->name('create.store.job.designation');
    Route::get ('download/application/{id}','DownloadApplication')->name('download.application');
    // Route::post('/update/job/designation','UpdateJobDesignation')->name('update.job.designation');
    Route::get ('delete/application/{id}','DeleteApplication')->name('delete.application');

    //Job post Route//
     Route::get ('admin/carrer','AdminCarrer')->name('admin.carrer');
     Route::get ('add/carrer','AdminAddCarrer')->name('add.carrer');
     Route::post ('store/carrer','AdminStoreCarrer')->name('store.carrer');
     Route::get ('edit/carrer/{id}','EditCarrer')->name('edit.carrer');
     Route::post('/update/carrer','UpdateCarrer')->name('update.carrer');
     Route::get ('delete/carrer/{id}','DeleteCarrer')->name('delete.carrer');
     Route::get('/inactive/job/details/{id}','InactiveJobDetails')->name('inactive.job.details');
     Route::get('/active/job/details/{id}','ActiveJobDetails')->name('active.job.details');
});

//News POST ALL ROUTE//
Route::controller(NewsPostController::class)->group(function(){

    Route::get('/all/newspost','AllNewsPost')->name('all.news.post');
    Route::get('/add/newspost','AddNewsPost')->name('add.news.post');
    Route::post('/store/newspost','StoreNewsPost')->name('store.news.post');
    Route::get('/edit/newspost/{id}','EditNewsPost')->name('edit.news.post');
    Route::post('/update/newspost','UpdateNewsPost')->name('update.news.post');
    Route::get('/delete/newspost/{id}','DeleteNewsPost')->name('delete.news.post');
    Route::get('/inactive/newspost/{id}','InactiveNewsPost')->name('inactive.news.post');
    Route::get('/active/newspost/{id}','ActiveNewsPost')->name('active.news.post');

});

// Admin Banner all Route
Route::controller(BannerController::class)->group(function(){

    Route::get('/all/banners','AllBanners')->name('all.banners');
    Route::post('/update/banners','UpdateBanners')->name('update.banners');
  
});
//Photo Gallery Route//
Route::controller(PhotoGalleryController::class)->group(function(){

    Route::get('/all/photo/gallery','AllPhotoGallery')->name('all.photo.gallery');
    Route::get('/add/photo/gallery','AddPhotoGallery')->name('add.photo.gallery');
    Route::post('/store/photo/gallery','StorePhotoGallery')->name('store.photo.gallery');
    Route::get('/edit/photo/gallery/{id}','EditPhotoGallery')->name('edit.photo.gallery');
    Route::post('/update/photo/gallery','UpdatePhotoGallery')->name('update.photo.gallery');
    Route::get('/delete/photo/gallery/{id}','DeletePhotoGallery')->name('delete.photo.gallery');
  
  
});
///video gallery all route//
Route::controller(VideoGalleryController::class)->group(function(){

    Route::get('/all/video/gallery','AllVideoGallery')->name('all.video.gallery');
    Route::get('/add/video/gallery','AddVideoGallery')->name('add.video.gallery');
    Route::post('/store/video/gallery','StoreVideoGallery')->name('store.video.gallery');
    Route::get('/edit/video/gallery/{id}','EditVideoGallery')->name('edit.video.gallery');
    Route::post('/update/video/gallery','UpdateVideoGallery')->name('update.video.gallery');
    Route::get('/delete/vidoe/gallery/{id}','DeleteVideoGallery')->name('delete.video.gallery');
    Route::get('/update/live/tv','UpdateLiveTv')->name('update.live.tv');
    Route::post('/update/live','UpdateLiveData')->name('update.live');
  
});

// Review all Route
Route::controller(ReviewController::class)->group(function(){

    Route::get('/pending/review','PendingReview')->name('pending.review');
    Route::get('/review/approve/{id}','ReviewApprove')->name('review.approve'); 
    Route::get('/approve/review','ApproveReview')->name('approve.review'); 
    Route::get('/delete/review/{id}','DeleteReview')->name('delete.review');
});

///seo setting//
Route::controller(SeoSettingController::class)->group(function(){

    Route::get('/seo/setting','SeoSetting')->name('seo.setting');
    Route::post('/update/seo/setting','UpdateSeoSetting')->name('update.seo.setting'); 
    
});

// Permission//
Route::controller(RoleController::class)->group(function(){

    Route::get('/all/permission','AllPermission')->name('all.permission');
    Route::get('/add/permission','AddPermission')->name('add.permission');
    Route::post('/store/permission','StorePermission')->name('permission.store');
    Route::get('/edit/permission/{id}','EditPermission')->name('edit.permission');
    Route::post('/update/permission','UpdatePermission')->name('permission.update'); 
    Route::get('/delete/permission/{id}','DeletePermission')->name('delete.permission');
});



// Roles//
Route::controller(RoleController::class)->group(function(){

    Route::get('/all/roles','AllRoles')->name('all.roles');
    Route::get('/add/roles','AddRoles')->name('add.roles');
    Route::post('/store/roles','StoreRoles')->name('roles.store');
    Route::get('/edit/roles/{id}','EditRoles')->name('edit.roles');
    Route::post('/update/roles','UpdateRoles')->name('roles.update'); 
    Route::get('/delete/roles/{id}','DeleteRoles')->name('delete.roles');
    Route::get('/add/roles/permission','AddRolesPermission')->name('add.roles.permission');
    Route::post('/role/permission/store','RolePermisssionStore')->name('role.permission.store');
    Route::get('/all/roles/permission','AllRolesPermission')->name('all.roles.permission');
    Route::get('/admin/edit/roles/{id}','AdminEditRoles')->name('admin.edit.roles');
    Route::get('/admin/delete/roles/{id}','AdminDeleteRoles')->name('admin.delete.roles');

    Route::post('/role/permission/update/{id}','RolePermissionUpdate')->name('role.permission.update');
});







}); // End Admin Middleware 




//End Admin //



///Frontend Access For all Route//
Route::get ('/news/details/{id}/{slug}',[IndexController::class, 'NewsDetails']);
Route::get ('/news/category/{id}/{slug}',[IndexController::class, 'CatWiseNews']);
Route::get ('/news/subcategory/{id}/{slug}',[IndexController::class, 'SubCatWiseNews']);
Route::get('/lang/change', [IndexController::class, 'Change'])->name('changeLang');
Route::post('/news', [IndexController::class, 'NewsSearch'])->name('news.search');
Route::get('/reporter/{id}', [IndexController::class, 'ReporterNews'])->name('reporter.all.news');
Route::post('/search', [IndexController::class, 'SearchByDate'])->name('search-by-date');

//Footer Section//
Route::get ('/about/us/',[IndexController::class, 'AboutUs'])->name('about.us');
Route::get ('/privacy/policy/',[IndexController::class, 'PrivacyPolicy'])->name('privacy.policy');
Route::get ('/career/apply/',[IndexController::class, 'CareerApply'])->name('career.apply');
Route::get ('/see/details/apply/jobs/{id}',[IndexController::class, 'SeeDetailsApplyJobs'])->name('see.details.apply.jobs');
Route::post ('store/candidate/apply/',[IndexController::class, 'StoreCandidateApply'])->name('store.candidate.apply');



//End///

///Review route //

Route::post('/store.review', [ReviewController::class, 'StoreReview'])->name('store.review');

//End //
