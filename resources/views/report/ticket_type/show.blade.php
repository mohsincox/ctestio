@extends('layouts.app')

@section('content')
<div class="container">
	<section class="content">
	    <div class="row">
	    	<div class="col-md-12">
	        	<div class="box box-primary">
	            	<div class="box-header">
	                	<h3 class="box-title">Order Information From <i>{{ $startDate }}</i> To <i>{{ $endDate }}</i></h3>
	            	</div>
	            	<div class="box-body">
	                    <div class="table-responsive"> 
	                        <table id="example" class="table table-bordered table-striped">
	                            <thead>
	                                <tr>
	                                    <th>SL</th>
			                            <th>OID</th>
			                            <th>Assigned</th>
			                            <th>Subject</th>
			                            <th>Outlet</th>
			                            <th>Order Status</th>
			                            <th>Cus. Name</th>
			                            <th>Phone No</th>
			                            <th>Cus. Address</th>
			                            <th>CreatedBy</th>
			                            <th>CreatedAt</th>
			                            <th>OrderAge</th>
			                            <th>Edit</th>
		                            </tr>
	                            </thead>
	                            <tbody>
	                            <?php
	                                $i = 0;
	                            ?>
	                            @foreach($tickets as $ticket)
	                            	<?php
										$interval = date_diff(date_create(), date_create($ticket->created_at));
										$ticketAge = $interval->format("%yy, %mm, %dd");
									?>
	                                <tr>
	                                    <td>{{ ++$i }}</td>
			                            <td><b><a href="{{ url('/ticket/' . $ticket->id) }}">{{ $ticket->id }}</a></b></td>
			                            @if(isset($ticket->assigned->name))
	                                        <td>{{ $ticket->assigned->name }}</td>
	                                    @else
	                                        <td></td>
	                                    @endif
			                            <td>{{ $ticket->subject }}</td>
			                            @if(isset($ticket->ticketType->name))
	                                        <td>{{ $ticket->ticketType->name }}</td>
	                                    @else
	                                        <td></td>
	                                    @endif
			                            @if(isset($ticket->ticketStatus->name))
	                                        <td>{{ $ticket->ticketStatus->name }}</td>
	                                    @else
	                                        <td></td>
	                                    @endif
			                            <td>{{ $ticket->customer_name }}</td>
			                            <td>{{ $ticket->phone_number }}</td>
			                            <td>{{ $ticket->customer_address }}</td>
			                            @if(isset($ticket->createdBy->name))
	                                        <td>{{ $ticket->createdBy->name }}</td>
	                                    @else
	                                        <td></td>
	                                    @endif
			                            <td>{{ $ticket->created_at }}</td>
			                            <td>{{ $ticketAge }}</td>
			                            <td>{!! Html::link("db-assigned/$ticket->id/edit",' DB Assign', ['class' => 'fa fa-edit btn btn-success btn-xs btn-flat']) !!}</td>
	                                </tr>
	                            @endforeach
	                            </tbody>
	                        </table>
	                    </div>
	            	</div>
	      		</div>
	    	</div>
	  	</div>
	</section>
</div>
@endsection

@section('style')
    <link rel="stylesheet" href="{{ asset('assets/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('script')
    <script src="{{ asset('assets/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('assets/js/dataTables.bootstrap.min.js') }}"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#example').DataTable();
        } );
    </script>
@endsection