@extends('layouts.app')

@section('content')
<div class="container">
    <section class="content">
        <div class="row">
        	<div class="col-md-12">
            	<div class="box box-primary">
                	<div class="box-header">
                    	<h3 class="box-title">Modification List</h3> 
                    	<div class="box-tools pull-right">
                    		<!-- <a href="{{ url('#') }}" class="btn btn-primary btn-flat"> <i class="fa fa-plus"></i> Create Modification</a> -->
                    	</div>
                	</div>
                	<div class="box-body">
                        <div class="table-responsive"> 
                            <table id="example" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>SL</th>
                                        <th>Name</th>
                                        <th>Status</th>
                                        <!-- <th>Edit</th> -->
                                    </tr>
                                </thead>
                                <tbody>
                                <?php
                                    $i = 0;
                                ?>
                                
                                    <tr>
                                        <td>1</td>
                                        <td>No Sugar</td>
                                        <td>Active</td>
                                        <!-- <td>{!! Html::link("#",' Edit', ['class' => 'fa fa-edit btn btn-success btn-xs btn-flat']) !!}</td> -->
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Regular Sugar</td>
                                        <td>Active</td>
                                        <!-- <td>{!! Html::link("#",' Edit', ['class' => 'fa fa-edit btn btn-success btn-xs btn-flat']) !!}</td> -->
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Extra Sugar</td>
                                        <td>Active</td>
                                        <!-- <td>{!! Html::link("#",' Edit', ['class' => 'fa fa-edit btn btn-success btn-xs btn-flat']) !!}</td> -->
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>No Ice (Chill)</td>
                                        <td>Active</td>
                                        <!-- <td>{!! Html::link("#",' Edit', ['class' => 'fa fa-edit btn btn-success btn-xs btn-flat']) !!}</td> -->
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Less Ice</td>
                                        <td>Active</td>
                                        <!-- <td>{!! Html::link("#",' Edit', ['class' => 'fa fa-edit btn btn-success btn-xs btn-flat']) !!}</td> -->
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>More Ice</td>
                                        <td>Active</td>
                                        <!-- <td>{!! Html::link("#",' Edit', ['class' => 'fa fa-edit btn btn-success btn-xs btn-flat']) !!}</td> -->
                                    </tr>
                                
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