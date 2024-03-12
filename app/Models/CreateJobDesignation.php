<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CreateJobDesignation extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function AdminCarrer(){
        return $this->belongsTo(Carrer::class,'job_role','id');
        
       
    }
}
