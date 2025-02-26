<?php

namespace App\Http\Controllers;

use App\Models\Admission;
use App\Models\User;
use App\Models\Year;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function index()
    {
        // $users = User::all();
        // $admissions = Admission::all(); // Ensure you get the admissions data
        // return view('students.index', compact('users', 'admissions'));
    }
}




// public function create()
    // {
    //     return view('students.create');
    // }
    // public function store(Request $request)
    // {
    //     $request->validate([
    //         'name' => 'required',
    //         'email' => 'required|email|unique:students',
    //         'dob' => 'required|date',
    //     ]);
    //     Student::create($request->all());
    //     return redirect()->route('students.index');
    // }
