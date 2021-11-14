@extends('layouts.app')

@section('content')
<div class="container-fluid">
    <section class="content">
        <div class="row">
        	<div class="col-md-12">
            	<div class="box box-primary">
                	<div class="box-header">
                    	<h3 class="box-title">CRM List</h3> 
                    	<div class="box-tools pull-right">
                    		<!-- <a href="{{ url('select/create') }}" class="btn btn-primary btn-flat"> <i class="fa fa-plus"></i> Create Select Name</a> -->
                    	</div>
                	</div>
                	<div class="box-body">
                        <div class="table-responsive"> 
                            <table id="example" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>CID</th>
                                        <th>Number</th>
                                        <th>Name</th>
                                        <th>Address</th>
                                        <th>Area</th>
                                        <th>District</th>
                                        <!-- <th>Division</th> -->
                                        <th>Cus.Type</th>
                                        <th>Conversation Details</th>
                                        
                                        <th>Create Ticket</th>
                                        
                                        <th>Product Detail</th>
                                        <th>Total Price</th>
                                        <th>Special ins</th>
                                        <th>Order</th>
                                        
                                        <th>Call Remarks</th>
                                        <th>Agent</th>
                                        <th>Call Time</th>
                                        <th>Call Type</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php
                                    $i = 0;
                                ?>
                                @foreach($crms as $crm)
                                    <tr>
                                        <td>{{ $crm->id }}</td>
                                        <td>{{ $crm->phone_number }}</td>
                                        <td>{{ $crm->customer_name }}</td>
                                        <td>{{ $crm->customer_address }}</td>
                                        <td>{{ $crm->delivery_area }}</td>
                                        @if(isset($crm->district->name))
                                            <td>{{ $crm->district->name }}</td>
                                        @else
                                            <td></td>
                                        @endif
                                        <!-- @if(isset($crm->division->name))
                                            <td>{{ $crm->division->name }}</td>
                                        @else
                                            <td></td>
                                        @endif -->
                                        <td>{{ $crm->customer_type }}</td>
                                        <td>{{ $crm->remarks }}</td>
                                        
                                        <td>{{ $crm->create_ticket }}</td>
                                        
                                        <td>{{ $crm->product_detail }}</td>
                                        <td>{{ $crm->total_price }}</td>
                                        <td>{{ $crm->special_instruction }}</td>
                                        <td>{{ $crm->customer_order }}</td>
                                       
                                        <td>{{ $crm->call_remarks }}</td>
                                        <td>{{ $crm->agent }}</td>
                                        <td>{{ $crm->created_at }}</td>
                                        <td>{{ $crm->camp_in_or_out }}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                        {!! $crms->render() !!}
                	</div>
          		</div>
        	</div>
      	</div>
    </section>
</div>
@endsection

@section('style')
    <!-- <link rel="stylesheet" href="{{ asset('assets/css/dataTables.bootstrap.min.css') }}"> -->
@endsection

@section('script')
    <!-- <script src="{{ asset('assets/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('assets/js/dataTables.bootstrap.min.js') }}"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#example').DataTable();
        } );
    </script> -->
@endsection