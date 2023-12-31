<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class View extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'by',
        'track'
    ];

    public function tracks(){
        return $this->belongsTo(Track::class, 'track');
    }
    public function users(){
        return $this->belongsTo(User::class, 'by');
    }
}
