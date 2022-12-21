<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\passport\HasApiTokens;

class Product extends Model
{
    use HasFactory, HasApiTokens;
    // fillable fields
    protected $fillable = [
        'name',
        'price',
        'category_id',
        'description',
        'avatar'
    ];

    // get category of the product.
    public function category()
    {
        return $this->belongsTo('App\Models\Category');
    }
}
