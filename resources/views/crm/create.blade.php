<!DOCTYPE html>
<html>
<head>
	<title>MYOL</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">
	<link rel="stylesheet" href="{{ asset('assets/css/style.min.css') }}">
	<link rel="stylesheet" href="{{ asset('assets/css/bootstrap-datepicker.min.css') }}">
	<link rel="stylesheet" href="{{ asset('assets/css/select2.min.css') }}">
	<link rel="stylesheet" href="{{ asset('assets/css/font-awesome.min.css') }}">
   
	<style type="text/css">
		.box-header {
		    padding: 0px;
		}
		.box-body {
			padding: 0px;
		}
		.box-header .box-title {
			display: block;
		}
		.box-title {
			text-align: center;
		}

		.input-group-addon {
		    min-width:150px;
		    /*min-width:220px;*/
		    /*text-align:left;*/
		}
		.alert {
            padding: 2px; 
            margin-bottom: 5px;
        }

        .greenG {
        	background-color: #28a745; color: #FFFFFF;
        }
        .blue {
        	background-color: #007bff; color: #FFFFFF;
        	/*background-color: #59a3ef; color: #FFFFFF;*/
        }

        .select2-container--default .select2-selection--multiple .select2-selection__choice {
            background-color: #3c8dbc;
            border-color: #367fa9;
            padding: 1px 10px;
            color: #fff;
        }


      	.alert-danger {
        	background-color: #EA0000!important;
      	}
    
    	.Table
	    {
	        display: table;
	    }
	    .Title
	    {
	        display: table-caption;
	        text-align: center;
	        font-weight: bold;
	        font-size: larger;
	    }
	    .Heading
	    {
	        display: table-row;
	        font-weight: bold;
	        text-align: center;
	    }
	    .Row
	    {
	        display: table-row;
	    }
	    .Cell
	    {
	        display: table-cell;
	        border: solid;
	        border-width: thin;
	        padding-left: 5px;
	        padding-right: 5px;
	    }

	</style>
</head>
<body>
	<div class="container-fluid">

	    <div class="container">
	        <div class="col-sm-8 col-sm-offset-2">
	            @include('flash::message')
	        </div>
	    </div>

		<div class="box box-success alert alert-danger">
	    	<div class="box-header with-border">
	    		<img class="pull-left" src="{{ asset('assets/images/secret_recipe.jpg') }}" width="200" height="54">
	        	<h3 class="pull-right" style="color: #fff;">Secret Recipe CRM <small style="color: #fff;">Phone Number:</small><code>{{ $phoneNumber }}</code> <small style="color: #fff;">Agent:</small> <code>{{ $agent }}</code></h3> 
	    	</div>
	    	<div class="box-body">
	    		
				<div class="row">
					<div class="col-sm-6">

						{!! Form::model($crmLast, ['url' => 'crm', 'method' => 'post']) !!}

						<input type="hidden" name="phone_number" value="{{ $phoneNumber }}" class="form-control" required="required">
						<input type="hidden" name="agent" value="{{ $agent }}" class="form-control">

						<div class="col-sm-12">
							<div class="input-group" style="margin-top: 5px;">
				      			<span class="input-group-addon bg-navy">Customer Name</span>
				      			{!! Form::text('customer_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Customer Name', 'autocomplete' => 'off']) !!}
				    		</div>
						</div>
						<div class="col-sm-12">
							<div class="input-group" style="margin-top: 5px;">
				      			<span class="input-group-addon bg-navy">Customer Address</span>
				      			{!! Form::text('customer_address', null, ['class' => 'form-control', 'placeholder' => 'Enter Customer Address', 'autocomplete' => 'off']) !!}
				    		</div>
						</div>
						<div class="col-sm-12">
							<div class="input-group" style="margin-top: 5px;">
				      			<span class="input-group-addon bg-navy">District</span>
				      			{!! Form::select('district_id', $districtList, null, ['class' => 'form-control select2', 'placeholder' => 'Select District', 'id' => 'district_id']) !!}
				    		</div>
						</div>
						<div class="col-sm-12">
							<div class="input-group" style="margin-top: 5px;">
				      			<span class="input-group-addon bg-navy">Customer Email</span>
				      			{!! Form::text('customer_email', null, ['class' => 'form-control', 'placeholder' => 'Enter Customer Email', 'autocomplete' => 'off']) !!}
				    		</div>
						</div>
						<div class="col-sm-12">
							<div class="input-group" style="margin-top: 5px;">
				      			<span class="input-group-addon bg-navy">Facebook ID</span>
				      			{!! Form::text('facebook_id', null, ['class' => 'form-control', 'placeholder' => 'Enter Facebook Id', 'autocomplete' => 'off']) !!}
				    		</div>
						</div>
						<div class="col-sm-12">
							<div class="input-group" style="margin-top: 5px;">
				      			<span class="input-group-addon bg-navy">Query Type</span>
				      			{!! Form::select('query_type_blank', $queryTypeList, null, ['class' => 'form-control', 'placeholder' => 'Select Query Type']) !!}
				    		</div>
						</div>
						<div class="col-sm-12">
							<div class="input-group" style="margin-top: 5px;">
				      			<span class="input-group-addon bg-navy">Order</span>
				      			{!! Form::select('customer_order_blank', $yesNoList, null, ['class' => 'form-control', 'placeholder' => 'Select Order']) !!}
				    		</div>
						</div>
						<div class="col-sm-12">
							<div class="input-group" style="margin-top: 5px;">
				      			<span class="input-group-addon bg-navy">Payment Method</span>
				      			{!! Form::select('payment_method_blank', $paymentMethodList, null, ['class' => 'form-control', 'placeholder' => 'Select Payment Method']) !!}
				    		</div>
						</div>
						<div class="col-sm-12">
							<div class="input-group" style="margin-top: 5px;">
				      			<span class="input-group-addon bg-navy">Customer Query</span>
				      			{!! Form::text('customer_query_blank', null, ['class' => 'form-control', 'placeholder' => 'Enter Customer Query', 'autocomplete' => 'off']) !!}
				    		</div>
						</div>
			    		<div class="col-sm-12">
							<div class="input-group" style="margin-top: 5px;">
				      			<span class="input-group-addon bg-navy">Call Type <span style="color: red; font-size: 18px;">*</span></span>
				      			{!! Form::select('in_or_out', ['InboundCall' => 'InboundCall', 'OutboundCall' => 'OutboundCall'], null, ['class' => 'form-control', 'placeholder' => 'Select InboundCall or OutboundCall', 'required' => 'required']) !!}
				    		</div>
						</div>
						<div class="col-sm-12">
							<div class="input-group" style="margin-top: 5px;">
				      			<span class="input-group-addon bg-navy">Conversation Details</span>
				      			{!! Form::text('remarks_blank', null, ['class' => 'form-control', 'placeholder' => 'Enter Remarks', 'autocomplete' => 'off']) !!}
				    		</div>
						</div>
						<div class="col-sm-12">
							<div class="input-group" style="margin-top: 5px;">
				      			<span class="input-group-addon bg-navy">Create Order</span>
				      			{!! Form::select('create_order_blank', $yesNoList, null, ['class' => 'form-control', 'placeholder' => 'Select Create Order Ticket']) !!}
				    		</div>
						</div>
						<div class="col-sm-12">
				    		<div class="input-group" style="margin-top: 5px;">
				      			<span class="input-group-addon bg-navy">Call Remarks</span>
				      			{!! Form::select('call_remarks_blank', $callRemarksList, null, ['class' => 'form-control', 'placeholder' => 'Select Call Remarks']) !!}
				    		</div>
						</div>

						<div class="col-sm-12">
							@if($phoneNumber != '')
							{!! Form::button('Submit', ['class' => 'btn bg-navy btn-outline btn-block btn-xs btn-flat', 'data-toggle' => 'modal', 'data-target' => '#crm_create', 'style' => 'margin-top: 10px;']) !!}
							@else
							{!! Form::button('Phone Number is required', ['class' => 'btn btn-default btn-block btn-xs btn-flat', 'data-toggle' => 'modal', 'data-target' => '#crm_create', 'style' => 'margin-top: 10px;', 'disabled' => 'disabled']) !!}
							@endif
							<div class="modal modal-info fade" id="crm_create">
			                    <div class="modal-dialog">
			                        <div class="modal-content">
			                            <div class="modal-header">
			                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			                                    <span aria-hidden="true">&times;</span>
			                                </button>
			                                <h4 class="modal-title">Confirmation Message</h4>
			                            </div>
			                            <div class="modal-body">
			                                <h3>Want to Store CRM Information?</h3>
			                            </div>
			                            <div class="modal-footer">
			                                <!-- <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button> -->
			                                <button type="submit" class="btn btn-outline btn-block">Submit CRM Information</button>
			                            </div>
			                        </div>
			                    </div>
			                </div>

						</div>

						{!! Form::close() !!}
					</div>


					<div class="col-xs-12 col-sm-6">
                                            <div>
                                                {!! Form::open(['url' => 'product-item/add-to-cart', 'method' => 'post']) !!}

                                             	<div class="col-sm-12">
                                                    <div class="input-group" style="margin-top: 5px;">
                                                        <span class="input-group-addon" style="background-color: #28a745; color: #FFFFFF; min-width:150px;">Category <span style="color: red; font-size: 18px;">*</span></span>
                                                        {!! Form::select('category_id', $categoryList, null, ['class' => 'form-control', 'placeholder' => 'Select Category for add to Cart', 'required', 'id' => 'category_id']) !!}
                                                    </div>
                                                </div>



                                                <div class="col-sm-12">
                                                    <div class="input-group" style="margin-top: 5px;">
                                                        <span class="input-group-addon" style="background-color: #28a745; color: #FFFFFF; min-width:150px;">Product <span style="color: red; font-size: 18px;">*</span></span>
                                                        {!! Form::select('product_id', [], null, ['class' => 'form-control select2', 'placeholder' => 'Select Product for add to Cart', 'required', 'id' => 'product_id']) !!}
                                                    </div>
                                                </div>


                                                <span id="quantity_error" class="text-white"></span>


                                                <div class="col-sm-12">
													<div class="input-group" style="margin-top: 5px;">
										      			<span class="input-group-addon" style="background-color: #28a745; color: #FFFFFF; min-width:150px;">Quantiry <span style="color: red; font-size: 18px;">*</span></span>
										      			{!! Form::number('quantity', 1, ['class' => 'form-control', 'placeholder' => 'Enter Quantiry for add to Cart', 'step' => 'any', 'required', 'id' => 'quantity', 'min' => '1']) !!}
										    		</div>
												</div>
                            

                                                
                            
                                                <center>{!! Form::button('<i class="fa fa-plus"></i> Submit for add to Cart', ['class' => 'btn bg-navy btn-outline btn-sm add-cart-item-create', 'style' => 'margin-top: 10px']) !!}</center>
                                

                                                {!! Form::close() !!}

                                            </div>





                    <div class="card-body" style="padding: 5px;">
                        <div id="product_info_create">
                            <div class="table-responsive"> 
                                <table class="table table-bordered table-sm">
                                    <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Product Name</th>
                                            <th>Qty</th>
                                            <th>Price</th>
                                            <th>Subtotal</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    <?php
                                        $i=1;
                                        $allTotal = 0;
                                    ?>
                                    @foreach($addedList as $key=>$item)
                                        <tr>
                                            <td>{{ $i++ }}</td>
                                            <td>{{ $item->name }}</td>
                                            <td>{{ $item->qty }}</td>
                                            <td>{{ $item->price }}</td>
                                            <td>{{ $item->subtotal }}</td>
                                            <td>
                                                <button type="button" class="delete-cart-item btn btn-danger btn-xs btn-outline fa fa-trash" id="{{ $key }}"> Delete</button>
                                            </td>

                                            <?php
                                                $allTotal = $allTotal + $item->subtotal;
                                            ?>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                    
                            <p class="text-center" style="margin-bottom: 0px;">Total Price: <b>{{ $allTotal }}</b></p>
                        </div>
                    </div>

                                            
                                        </div>

					<!-- <div class="col-sm-6">
						<p>Others</p>
					</div> -->
				</div>


				
				<div class="box box-success alert alert-danger" style="margin-top: 5px;">
				<div class="row">
					<div class="col-sm-12">
						<table class="table table-condensed table-bordered">
    						<thead>
      							<tr>
      								<th>Cart</th>
							        <th>Total Price</th>
							        <th>Query Type</th>
							        <th>Customer Query</th>
							        <!-- <th>Product Detail</th> -->
							        <th>Remarks</th>
							        <th>Call Time</th>
      							</tr>
    						</thead>
    						<tbody>
    							@foreach($crms as $crm)
    							<?php
    								$productDetail = str_replace( ['[', ']', '{', '}', '"'], "", $crm->product_detail );
    							?>
      							<tr>
      								<td><button type="button" class="btn btn-success btn-xs fa fa-eye" data-toggle="modal" data-target="#myModal{{ $crm->id }}"> Show</button></td>
							        <td>{{ $crm->total_price }}</td>
							        <td>{{ $crm->query_type }}</td>
							        <td>{{ $crm->customer_query }}</td>
							        <!-- <td>{{ $productDetail }}</td> -->
							        <td>{{ $crm->remarks }}</td>
							        <td>{{ $crm->created_at }}</td>
      							</tr>


      							<div id="myModal{{ $crm->id }}" class="modal fade modal-danger" role="dialog">
  									<div class="modal-dialog">

    									<div class="modal-content">
      										<div class="modal-header">
        										<button type="button" class="close" data-dismiss="modal">&times;</button>
        										<h4 class="modal-title">Product Details</h4>
      										</div>
      										<div class="modal-body">
        										<div class="row">
			                                        <div class="col-md-offset-1 col-md-10">
			                                            @if(isset($crm->product_detail))

			                                                <?php
			                                                    $productDecode = json_decode($crm->product_detail);
			                                                ?>

			                                                @if(json_last_error() == JSON_ERROR_NONE)
															<div class="Table">
															    <!-- <div class="Title">
															        <p>Product Details</p>
															    </div> -->
															    <div class="Heading">
															        <div class="Cell">
															            <p>Name</p>
															        </div>
															        <div class="Cell">
															            <p>Price</p>
															        </div>
															        <div class="Cell">
															            <p>Qty</p>
															        </div>
															        <div class="Cell">
															            <p>Subtotal</p>
															        </div>
															    </div>
															    @foreach($productDecode as $value)
															    <div class="Row">
															        <div class="Cell">
															            <p>{{ $value->Name }}</p>
															        </div>
															        <div class="Cell">
															            <p>{{ $value->Price }}</p>
															        </div>
															        <div class="Cell">
															            <p>{{ $value->Qty }}</p>
															        </div>
															        <div class="Cell">
															            <p>{{ $value->Subtotal }}</p>
															        </div>
															    </div>
															    @endforeach
															</div>
			                                                @endif
			                                            @endif
			                                        </div>
                                    			</div>
      										</div>
      										<div class="modal-footer">
      											<h4 class="pull-left">Total Price: <b>{{ $crm->total_price }} Taka</b></h4>
        										<button type="button" class="btn btn-outline" data-dismiss="modal">Close</button>
      										</div>
    									</div>

  									</div>
								</div>
      							@endforeach
    						</tbody>
  						</table>
					</div>
				</div>

				</div>

				

				

				

				
	    	</div>
	    </div>
	        	
	    
	</div>

	<script src="{{ asset('assets/js/jquery.min.js') }}"></script>
	<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
	<!-- <script src="{{ asset('assets/js/jquery.slimscroll.min.js') }}"></script> -->
	<script src="{{ asset('assets/js/bootstrap-datepicker.min.js') }}"></script>
	<script src="{{ asset('assets/js/select2.full.min.js') }}"></script>

	

	<script type="text/javascript">
		$('#delivery_date').datepicker({
            format:'yyyy-mm-dd',
            autoclose: true
        });

        $(function() {
            $('#category_id').change(function() {
                var categoryId = $(this).val();
                getProduct(categoryId);
            });
        });

        function getProduct(categoryId) {
            
            resetField('product_id', 'Select PRODUCT for add to Cart');
            var url = '{{ url("crm/get-product")}}';
            $.get(url+'?category_id='+categoryId, function (response) {
                $.map( response, function( name, id ) {
                    $('#product_id').append('<option value="'+ id +'">' + name + '</option>');
                });
            });
        }

        function resetField(id, placeholder) {
            $('#' + id).empty();
            $('#' + id).append('<option value="">'+ placeholder +'</option>');
        }

		$(function() {
            $(document).on('click', '.add-cart-item-create', function(e){
                e.preventDefault();
                var productId = $("#product_id").val();
                var quantity = $("#quantity").val();

                if ((quantity == '') || (productId == '')) {
                    $("#quantity_error").html('Product and Quantity can not be blank');
                    return;
                }

                $("#quantity_error").html('');

                // var baseUrl = "{{ url('/') }}";
                // console.log(baseUrl);
                // var url = baseUrl + "/product-item/add-to-cart";

                var url = '{{ url("/crm-cart/add-to-cart")}}'

                $.post(url, { product_id: productId, quantity: quantity, _token: $('input[name="_token"]').val() }, function(data){
                    $('#product_info_create').html(data);
                    // console.log(data);
                    $("#product_id").val('');
                    $("#quantity").val('');
                });
            });
        });

        $(function() {
            $(document).on('click', '.delete-cart-item', function(){
              
                var key_id = this.id 

                var url2  = '{{ url("/crm-cart/remove-one-item")}}' + "/" + key_id;
                console.log(url2);

                $.get(url2, function (data) {
                    $('#product_info_create').html(data);
                });
            });
        });
        

        // $(function() {
        //     $('#division_id').change(function() {
        //         var divisionId = $(this).val();
        //         getDistrict(divisionId);
        //     });
        // });


        // function getDistrict(divisionId) {
            
        //     resetField('district_id', 'Select District');
        //     var url = '{{ url("crm/get-district")}}';
        //     $.get(url+'?division_id='+divisionId, function (response) {
        //         $.map( response, function( name, id ) {
        //             $('#district_id').append('<option value="'+ id +'">' + name + '</option>');
        //         });
        //     });
        // }

        // function resetField(id, placeholder) {
        //     $('#' + id).empty();
        //     $('#' + id).append('<option value="">'+ placeholder +'</option>');
        // }


  //       @if(isset($crmLast))

		// 	var customerDivisionId = '{{ $crmLast->division_id }}';
		// 	var customerDistrictId = '{{ $crmLast->district_id }}';

		// 	jQuery.ajaxSetup({async:false});
			
		// 	getDistrict(customerDivisionId);
		// 	$('#district_id').val(customerDistrictId);

		// 	 jQuery.ajaxSetup({async:true});

		// @endif

		$(function () {
            $('.select2').select2();
        });

	</script>
</body>
</html>