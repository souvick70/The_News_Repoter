<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Subcategory;

class CategoryController extends Controller
{
    //
    public function AllCategory(){

        $categories = Category::latest()->get();
        return view('backend.category.category_all',compact('categories'));

    }

    public function AddCategory(){
        return view('backend.category.add_category');
   }// End Mehtod 

    public function StoreCategory(Request $request){


        $validated = $request->validate([
            'category_name' => 'required',
            
        ]);
        Category::insert([
                'category_name' => $request->category_name,
                'category_slug' => strtolower(str_replace('','-',$request->category_name)),

        ]);
        
        $notification = array(
            'message'=>'category Inserted Successfully',
            'alert-type' =>'success'
        );
        return redirect()->route('all.category')->with($notification);
    }

    public function EditCategory($id){
        $category = Category::findOrFail($id);
        return view('backend.category.category_edit',compact('category'));
    }

    public function UpdateCategory(Request $request){
        $request->validate([
            'category_name' => 'required',
            
        ]);

        $cat_id = $request->id;

        Category::findOrFail($cat_id)->update([
            'category_name' => $request->category_name,
            'category_slug' => strtolower(str_replace(' ', '-', $request->category_name)),

        ]); 


         $notification = array(
            'message' => 'Category Updated Successfully',
            'alert-type' => 'success'

        );

        return redirect()->route('all.category')->with($notification);


    }

    public function DeleteCategory($id){

        Category::findOrFail($id)->delete();

         $notification = array(
            'message' => 'Category Deleted Successfully',
            'alert-type' => 'success'

        );

        return redirect()->back()->with($notification);

    }// End Mehtod 


    public function AllSubCategory(){
       $subcategories = Subcategory::latest()
        ->join('categories', 'subcategories.category_id', '=', 'categories.id')
        ->select('subcategories.*', 'categories.category_name as category_name')
        ->get();
        //$subcategories = Subcategory::latest()->get();
       return view('backend.subcategory.subcategory_all',compact('subcategories'));

    }

//Add subcategory//
    public function AddSubCategory(){

        $categories = Category::latest()->get();
        return view('backend.subcategory.add_subcategory',compact('categories'));
    }

//store subcategory//
    public function StoreSubCategory(Request $request){

        
       
        $request->validate([
           
            'subcategory_name' => 'required',
            
        ]);
        Subcategory::insert([
                'category_id' =>  $request->category_id,
                'subcategory_name' => $request->subcategory_name,
                'subcategory_slug' => strtolower(str_replace('','-',$request->subcategory_name)),

        ]);

        
        $notification = array(
            'message'=>'SubCategory Added Successfully',
            'alert-type'=>'success'
        );
        return redirect()->route('all.subcategory')->with($notification);
}
public function EditSubCategory($id){
    $categories =  Category::latest()->get();
    $subcategories = Subcategory::findOrFail($id);
    return view('backend.subcategory.subcategory_edit',compact('categories','subcategories'));
}
public function UpdateSubCategory(Request $request){

    $subcat_id = $request->id;

     Subcategory::findOrFail($subcat_id)->update([
         'category_id' => $request->category_id,
         'subcategory_name' => $request->subcategory_name,
         'subcategory_slug' => strtolower(str_replace(' ', '-', $request->subcategory_name)),

     ]); 


      $notification = array(
         'message' => 'SubCategory Updated Successfully',
         'alert-type' => 'success'

     );

     return redirect()->route('all.subcategory')->with($notification);


 }// End Mehtod 



 public function DeleteSubCategory($id){

    Subcategory::findOrFail($id)->delete();

     $notification = array(
        'message' => 'SubCategory Deleted Successfully',
        'alert-type' => 'success'

    );

    return redirect()->back()->with($notification);

}// End Mehtod 
public function GetSubCategory($category_id){

    $subcat = Subcategory::where('category_id',$category_id)->orderBy('subcategory_name','ASC')->get();
        return json_encode($subcat);

}// End Mehtod 

}