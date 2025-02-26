<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Payment;
use App\Models\Admission;
use App\Models\Education;
use App\Models\Certificate;
use App\Models\Registation;
use Illuminate\Http\Request;

class AdmissionController extends Controller
{
    public function index()
    {
        $admissions = Admission::all();
        $users = User::all();
        $payments = Payment::all();
        $educations = Education::all();
        $registrations = Registation::all();
        $certificates = Certificate::all();
        return view('students.index', compact('users', 'admissions', 'payments', 'educations', 'registrations', 'certificates'));
    }
}
