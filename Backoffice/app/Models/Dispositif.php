<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Dispositif extends Model {

    protected $table = 'dispositifs';
    protected $primaryKey = 'id';
    public $timestamps = false;

    protected $fillable = ['nom', 'description', 'lieu', 'id_sequence', 'token'];
}