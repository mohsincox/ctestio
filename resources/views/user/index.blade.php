@extends('layouts.app')

@section('content')
<!-- <meta http-equiv="refresh" content="10" /> -->
<div class="container">
    <section class="content">
        <div class="row">
        	<div class="col-md-12">
            	<div class="box box-primary">
                	<div class="box-header">
                    	<h3 class="box-title">User List</h3> 
                    	<!-- <div class="box-tools pull-right">
                    		<a href="{{ url('ticket-status/create') }}" class="btn btn-primary btn-flat"> <i class="fa fa-plus"></i> Create Ticket Status</a>
                    	</div> -->
                	</div>
                	<div class="box-body">
                        <div class="table-responsive"> 
                            <table id="example" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>SL</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Role</th>
                                        <!-- <th>Department or Ticket Status</th> -->
                                        <th>Phone Number</th>
                                        <th>Address</th>
                                        {{-- @can('ticket_admin-access') --}}
                                            <th>Edit</th>
                                        {{-- @endcan --}}
                                    </tr>
                                </thead>
                                <tbody>
                                <?php
                                    $i = 0;
                                ?>
                                @foreach($users as $user)
                                    <?php
                                        if ($user->role == 'super_admin') {
                                            $role = "Super Admin";
                                        } else if ($user->role == 'ticket_admin') {
                                            $role = "Order Admin";
                                        } else if ($user->role == 'agent') {
                                            $role = "Agent";
                                        }else {
                                            $role = "User";
                                        }
                                    ?>
                                    <tr>
                                        <td>{{ ++$i }}</td>
                                        <td>{{ $user->name }}</td>
                                        <td>{{ $user->email }}</td>
                                        <td>{{ $role }}</td>
                                        <td>{{ $user->phone_number }}</td>
                                        <td>{{ $user->address }}</td>
                                        {{-- @can('ticket_admin-access') --}}
                                            <td><a href='{{"user/$user->id/edit"}}' class="btn btn-success btn-sm">Change Role</a></td>
                                        {{-- @endcan --}}
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
    <script src="{{ asset('assets/js/easyNotify.js') }}"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#example').DataTable();
        } );
    </script>

    <script>
        // var myFunction = function() {
        //     alert('Click function');
        // };
        // var myImg = "https://unsplash.it/600/600?image=777";

        // var options = {
        //     title: 'mohsin',
        //     options: {
        //         body: 'iqbal',
        //         icon: myImg,
        //         lang: 'en-US',
        //         onClick: myFunction
        //     }
        // };
        // console.log(options);
        // $("#easyNotify").easyNotify(options);
    </script>

    <script type="text/javascript">
        // var _gaq = _gaq || [];
        // _gaq.push(['_setAccount', 'UA-36251023-1']);
        // _gaq.push(['_setDomainName', 'jqueryscript.net']);
        // _gaq.push(['_trackPageview']);

        // (function() {
        //     var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        //     ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        //     var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        // })();
    </script>
@endsection