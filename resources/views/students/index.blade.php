<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Student Management</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1>Student List</h1>
        <a href="{{ route('students.create') }}" class="btn btn-primary mb-3">Add Student</a>
        <h2>Users</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                <tr>
                    <td>{{ $user->id }}</td>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                    <td>{{ $user->mobile }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
        <h2>Admissions</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Ad ID</th>
                    <th>User ID</th>
                    <th>Admission YSC ID</th>
                    <th>Father's Name</th>
                    <th>Mother's Name</th>
                    <th>Guardian Mobile</th>
                    <th>Course Fee</th>
                    <th>Student Type</th>
                    <th>Class Days </br> time  </th>
                    <th>Class Group </br> Batch No  </th>
                    <th>NID/BOD Reg. No  </th>
                    <th>Blood Group </br> status  </th>
                </tr>
            </thead>
            <tbody>
                @foreach ($admissions as $admission) <!-- Changed from $years to $admissions -->
                <tr>
                    <td>{{ $admission->id }}</td>
                    <td>{{ $admission->user_id }}</td>
                    <td>{{ $admission->year_adsession_courses_id  }}</td>
                    <td>{{ $admission->fathers_name }}</td>
                    <td>{{ $admission->mothers_name }}</td>
                    <td>{{ $admission->guardian_mobile }}</td>
                    <td>{{ $admission->course_fee }}</td>
                    <td>{{ $admission->student_type }}</td>
                    <td>
                        {{ $admission->class_day }} </br>
                        {{ $admission->class_time }}
                    </td>
                    <td>
                        {{ $admission->student_group }} </br>
                        {{ $admission->batch_no }}
                    </td>
                    <td>
                        {{ $admission->student_nid }} </br>
                        {{ $admission->student_dobreg }}
                    </td>
                    <td>
                        {{ $admission->blood_group }} </br>
                        <?php
                            if ($admission->admission_status === 'confirmed') {?>
                                <button type="button" class="btn btn-primary">Confiremd</button>
                            <?php  }else{?>
                                <button type="button" class="btn btn-warning">Pending</button>
                            <?php }
                        ?>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>

        <h2>Payment</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>user_id </th>
                    <th>admission_id </th>
                    <th>payment_type</th>
                    <th>payment_amount</th>
                    <th>payment_memo</th>
                    <th>payment_date</th>
                    <th>payment_status</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($payments as $payment)
                <tr>
                    <td>{{ $payment->id }}</td>
                    <td>{{ $payment->user_id }}</td>
                    <td>{{ $payment->admission_id }}</td>
                    <td>{{ $payment->payment_type }}</td>
                    <td>{{ $payment->payment_amount }}</td>
                    <td>{{ $payment->payment_memo }}</td>
                    <td>{{ $payment->payment_date }}</td>
                    <td>
                        <?php
                        if ($payment->payment_status === 'Completed') {?>
                            <button type="button" class="btn btn-primary">Confiremd</button>
                        <?php }
                        else{?>
                            <button type="button" class="btn btn-danger">Pending</button>
                        <?php }
                        ?>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>

        <h2>Educations</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>User ID </th>
                    <th>Education Type </th>
                    <th>Roll</th>
                    <th>Passing Year</th>
                    <th>GPA</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($educations as $education)
                <tr>
                    <td>{{ $education->id }}</td>
                    <td>{{ $education->user_id }}</td>
                    <td>{{ $education->education_type }}</td>
                    <td>{{ $education->roll }}</td>
                    <td>{{ $education->passing_year }}</td>
                    <td>{{ $education->gpa }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>

        <h2>Registrations</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>User ID </th>
                    <th>Payment ID  </th>
                    <th>Registation Type </th>
                    <th>Registation No</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($registrations as $registration)
                <tr>
                    <td>{{ $registration->id }}</td>
                    <td>{{ $registration->user_id }}</td>
                    <td>{{ $registration->payment_id }}</td>
                    <td>
                        <?php
                        if ($registration->registation_type === 'Yes') {?>
                            <button type="button" class="btn btn-primary">Confiremd</button>
                        <?php }
                        else{?>
                            <button type="button" class="btn btn-danger">Pending</button>
                        <?php }
                        ?>
                    </td>
                    <td>{{ $registration->registation_no }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>

        <h2>Certificate</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>User Name </th>
                    <th>Admission Session   </th>
                    <th>Registration No </th>
                    <th>Received Date</th>
                    <th>Certificate Status</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($certificates as $certificate)
                <tr>
                    <td>{{ $certificate->id }}</td>
                    <td>{{ $certificate->user_id }}</td>
                    <td>{{ $certificate->admission_id }}</td>
                    <td>{{ $certificate->registration_id }}</td>
                    <td>{{ $certificate->received_date }}</td>
                    <td>
                        <?php
                        if ($certificate->certificate_status === 'Completed') {?>
                            <button type="button" class="btn btn-primary">Confiremd</button>
                        <?php }
                        else{?>
                            <button type="button" class="btn btn-danger">Pending</button>
                        <?php }
                        ?>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>

    </div>
    <!-- Bootstrap JS and dependencies (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
