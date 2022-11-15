<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ResultBigCategories extends Model
{
    use HasFactory;

    protected $table = 'result_big_categories';

    public $timestamps = false;

    protected $primaryKey = 'id';

    protected $fillable = [
        'id_user',
        'id_big_categories',
        'total_result',
        'kesimpulan'
    ];
}
