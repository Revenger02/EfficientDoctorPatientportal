@extends('patient_layout')
@section('content1')
<style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1000px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
      width: 25%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }


 </style>
 <link rel="stylesheet" href="{{ asset('css/bootstrap-datetimepicker.min.css') }}">
 <script type="text/javascript" src="{{ URL::asset('js/date/jquery-1.8.3.min.js') }}"></script>
 <script type="text/javascript" src="{{ URL::asset('js/date/bootstrap-datetimepicker.js') }}">  
 </script>
 <script type="text/javascript" src="{{ URL::asset('js/date/bootstrap-datetimepicker.fr.js') }}">
 </script>


  @stop

@section('content2')
</body>

<body id="op_background">
<div class="container-fluid">
   <div class="row content">
      <div class="col-sm-2 sidenav">
            <div class="container-fluid" style="margin: 3%">
                          <div class="table-responsive">
                                     <table class="table" border="0" align="left" style="width: 20%">
            
                                        <col width="10%">
             
  <thead class="thead-inverse" style="color:black"><tr><th>DoctorName</th><th>DoctorFees</th>
  <th>Book</th></tr>
  </thead>

                                          @foreach($users as $value)
                      
                           <tr>
 <td> <a href='page/{{ $value->doctor_id}}'>  {{$value->username}}</a></td>
                    <td>{{$value->Fees}}</td>
                    <td> <a href='book/{{ $value->doctor_id}}'>  Book</a></td>
                            </tr>
                                    
                                            @endforeach
                                          </tbody>
                                   </table>
                          </div>    


          </div>

   </div>
<div class="col-sm-9">
 <h4><small>Event </small></h4>
 <form action="/do_check" method="post" enctype="multipart/form-data">
                {{ csrf_field() }} 
    <p>Select Department :
    <select name="speciality" class="button1"  id="speciality" >
        <option value="Cardiology">Cardiology</option>
        <option value="Dentistry">Dentistry</option>
        <option value="Neurology">Neurology</option>
        <option value="Urology">Urology</option>
        <option value="Surgery">Surgery</option>
        <option value="Dermatalogy">Dermatalogy</option>
        <option value="Gastrology">Gastrology</option>
        <option value="Bone">Bone</option>

    </select></p>


    <label for="dtp_input1" class="col-md-2 control-label">DateTime Picking</label>
            <div class="input-group date form_datetime col-md-5" data-date="2017-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                    <input class="form-control" size="16" type="text" name="start_date" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                   <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
            </div>
                </br>
    <label for="dtp_input1" class="col-md-2 control-label">DateTime Picking</label> <div class="input-group date form_datetime col-md-5" data-date="2017-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                  <input class="form-control" size="16" type="text" name="end_date" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                   <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                </div>             
            </br>


                        <input type="submit" name="Add new Problem">
                        <input type="reset" name="Reset">
                   </br>

        </form>
   


 </div>
          </div>
        </div>
     
  <script type="text/javascript">

    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
    
    
</script>
            
@stop
