<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;

class OrderDetail extends Model
{
	protected $table = 'order_details';

    public function createdBy()
    {
        return $this->belongsTo(User::class, 'created_by');
    }
}
