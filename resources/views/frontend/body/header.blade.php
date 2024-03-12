<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<header class="themesbazar_header">
<div class="container">
<div class="row">
<div class="col-lg-5 col-md-5">

<div class="row">
        <div class="col-md-6">

            <div class="date">
<i class="lar la-calendar"></i>

India, 
 @php date_default_timezone_set('Asia/Kolkata');
 
 echo date('l jS \of M Y'); 
 
 echo ", Time is: ".date("H:i:s A");

 @endphp

</div>
            
        </div>  

           <div class="col-md-5" style="margin-left:20px;">

            <select class="form-select changeLang">
                <option value="en" {{ session()->get('locale') == 'en' ? 'selected' : '' }}  >English</option>

                <option value="bn" {{ session()->get('locale') == 'bn' ? 'selected' : '' }}>Bangla</option>
                
                <option value="hi" {{ session()->get('locale') == 'hi' ? 'selected' : '' }} >Hindi</option>
                
                <option value="de" {{ session()->get('locale') == 'de' ? 'selected' : '' }} >German</option>
            </select>
            
        </div> 

    </div>


</div>



<div class="col-lg-3 col-md-3">
<form class="header-search" action="{{route('news.search')}}" method="post">
@csrf 
<input type="text" value="" name="search" placeholder=" Search Here " required="">
<button type="submit" value="Search"> <i class="las la-search"></i> </button>
</form>
</div>
<div class="col-lg-4 col-md-4">
<div class="header-social">
<ul>
<li> <a href="https://www.facebook.com/" target="_blank" title="facebook"><i class="lab la-facebook-f"></i> </a> </li>
<li><a href="https://twitter.com/" target="_blank" title="twitter"><i class="lab la-twitter"> </i> </a></li>  


@auth
<li><a href="{{ route('user.logout') }}"><b> Logout </b></a> </li>
@else
<li><a href="{{ route('login') }}"><b> Login </b></a> </li>
<li> <a href="{{ route('register') }}"> <b>Register</b> </a> </li>
@endauth
</ul>
</div>
</div>
</div>
</div>
<section class="logo-banner">
<div class="container">
<div class="row">
<div class="col-lg-4 col-md-4">
<div class="logo">
<a href=" {{url('/')}}" title="NewsFlash">
<img src="{{asset('frontend/assets/images/jurnalism.png')}}" width=60px  alt="NewsFlash" title="NewsFlash">

<img src="{{asset('frontend/assets/images/logo4.png')}}" width=180px alt="NewsFlash" title="NewsFlash">
<p style="margin-left:65px; margin-top:-15px; color:black;">Know your</p>
<p style="margin-left:145px; margin-top:-40px; color:red;">times (24*7)</p>

</a>
</div>
</div>
<div class="col-lg-8 col-md-8">
<div class="banner">
<a href=" " target="_blank">
 
</a>
</div>
</div>
</div>
</div>
</section>

</header>


<div class="menu_section sticky" id="myHeader">
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12">
<div class="mobileLogo">
 <a href=" " title="NewsFlash">
<img src="{{asset('frontend/assets/images/footer_logo.gif')}}" alt="Logo" title="Logo">
</a>
</div>
<div class="stellarnav dark desktop"><a href="https://newssitedesign.com/newsflash/#" class="menu-toggle full"><span class="bars"><span></span><span></span><span></span></span> </a>
<ul id="menu-main-menu" class="menu"><li id="menu-item-89" 
class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-89">
<a href="{{ url('/') }} " aria-current="page"> <i class="fa-solid fa-house-user"></i>  Home</a></li>

@php
 $categories = App\Models\Category::orderBy('category_name','ASC')->limit(8)->get();

 @endphp

@foreach($categories as $category)
<li id="menu-item-291" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-291 has-sub">
    <a href="{{ url('news/category/'.$category->id.'/'.$category->category_slug) }} ">{{  GoogleTranslate::trans($category->category_name, app()->getLocale() )  }}</a>

 @php
 $subcategories = App\Models\Subcategory::where('category_id',$category->id)->orderBy('subcategory_name','ASC')->get(); 
 @endphp

<ul class="sub-menu">
@foreach($subcategories as $subcategory)
<li id="menu-item-294" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-294">
    <a href="{{ url('news/subcategory/'.$subcategory->id.'/'.$subcategory->subcategory_slug) }} ">{{GoogleTranslate::trans($subcategory->subcategory_name, app()->getLocale() )}}</a></li> 
@endforeach


<!-- <li id="menu-item-277" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-277"><a href=" ">ARCRIVE</a></li> -->
</ul>



<a class="dd-toggle" href=" "><span class="icon-plus"></span></a></li>
@endforeach


<!-- <li id="menu-item-277" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-277"><a href=" ">ARCRIVE</a></li>
 
<ul>
<a class="dd-toggle" href=" "><span class="icon-plus"></span></a></li>
</ul> -->
<!-- Sports End-->
<!-- Business -->
<!-- <li id="menu-item-291" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-291 has-sub"><a href=" ">Business</a>
    <ul class="sub-menu">
        <li id="menu-item-294" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-294"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-292" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-293" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-293"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-295" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-295"><a href=" ">Sub Sports</a></li>
    </ul>
    <a class="dd-toggle" href=" "><span class="icon-plus"></span></a>
</li> -->
 <!-- Business End-->

<!-- <li id="menu-item-277" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-277"><a href=" ">International</a></li> -->

<!-- Enviornmental -->
<!-- <li id="menu-item-291" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-291 has-sub"><a href=" ">Environmental</a>
    <ul class="sub-menu">
        <li id="menu-item-294" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-294"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-292" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-293" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-293"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-295" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-295"><a href=" ">Sub Sports</a></li>
    </ul>
    <a class="dd-toggle" href=" "><span class="icon-plus"></span></a>
</li> -->
<!-- Enviornmental End-->

<!-- <li id="menu-item-267" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-267"><a href=" ">Youth</a></li> -->
<!-- Lifestyle -->
<!-- <li id="menu-item-284" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-284 has-sub"><a href=" ">Lifestyle</a>
    <ul class="sub-menu">
        <li id="menu-item-294" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-294"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-292" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-292"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-293" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-293"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-295" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-295"><a href=" ">Sub Sports</a></li>
    </ul>
    <a class="dd-toggle" href=" "><span class="icon-plus"></span></a>
</li> -->
<!-- Lifestyle End-->

<!-- Education -->
<!-- <li id="menu-item-291" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-291 has-sub"><a href=" ">Education</a>
    <ul class="sub-menu">
        <li id="menu-item-294" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-294"><a href=" ">Sub Sports</a></li>
    </ul>
    <a class="dd-toggle" href=" "><span class="icon-plus"></span></a>
</li> -->
<!-- Education End-->
<!-- Si-Tech -->
<!-- <li id="menu-item-301" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-301 has-sub"><a href=" ">Si-Tech</a>
    <ul class="sub-menu">
        <li id="menu-item-269" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-269"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-273" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-273"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-275" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-275"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-296" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-276"><a href=" ">Sub Sports</a></li>
    </ul>
    <a class="dd-toggle" href=" "><span class="icon-plus"></span></a>
</li> -->
<!-- Si-Tech End-->

<!-- Politics -->
<!-- <li id="menu-item-291" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-291 has-sub"><a href=" ">Politics</a>
    <ul class="sub-menu">
        <li id="menu-item-294" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-294"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-294" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-294"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-294" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-294"><a href=" ">Sub Sports</a></li>
        <li id="menu-item-294" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-294"><a href=" ">Sub Sports</a></li>
    </ul>
    <a class="dd-toggle" href=" "><span class="icon-plus"></span></a>
</li> -->
<!-- Politics End-->

<!-- <li id="menu-item-274" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-274"><a href=" ">Entertainment</a></li>
<li id="menu-item-284" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-284"><a href=" ">Lifestyle</a></li>
<li id="menu-item-278" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-278"><a href=" ">EDUCATION  </a></li>
 
<li id="menu-item-301" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-301 has-sub"><a href=" ">SCI-TECH</a>
<ul class="sub-menu">
<li id="menu-item-269" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-269"><a href=" ">SCI-TECH</a></li>
<li id="menu-item-273" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-273"><a href=" ">SCI-TECH</a></li>
<li id="menu-item-275" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-275"><a href=" ">SCI-TECH</a></li>
 
 
 
</ul> 
<a class="dd-toggle" href=" "><span class="icon-plus"></span></a></li>-->
</ul></div> </div>
</div>
</div>
</div>
<script type="text/javascript">
    
    var url = "{{ route('changeLang') }}";
    $(".changeLang").change(function(){
        window.location.href = url + "?lang="+$(this).val();
    });
</script>