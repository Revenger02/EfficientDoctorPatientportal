@extends('doctor_layout')
@section('content2')
</body>

<body id="op_background">
@foreach($users as $value)
</br>
<p><b>AppointmentId : </b>{{ $value->appointment_id}}</p>
<p><b>PatientName : </b>{{ $value->patient_name}}</p>
<p><b>DoctorName : </b>{{ $value->doctor_id}}</p>
 @endforeach


<form action="/updateTreatment/{{ $value->appointment_id}}" method="post" enctype="multipart/form-data" >
                {{ csrf_field() }} 
    
 </br>
<p>Write Treatment Details</p>
<textarea rows="5" cols="100" name="content" placeholder="Write Treatment Details">
</textarea> 
</br>
</br>
                        <input type="submit" name="Add new Problem">
                        
                   </br>

        </form>

@stop