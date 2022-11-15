<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FinalResult extends Model
{
    use HasFactory;

    protected $table = 'finalresult';
    protected $fillable = [
      'id_user',
      'final_points',
      'hasil_survei',
      'rekomendasi',
    ];

    public function user(){
      return $this->belongsTo(DataUser::class);
    }
}
