@extends('layouts.app')

@section('content')
<div class="container">
    <section class="content">
        <div class="row">
            <div class="col-md-12 col-sm-offset-0">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Order</h3> 
                    </div>
                    <div class="box-body">

                        <div class="col-sm-12">
                            
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="text-center"><i class="fa fa-pencil"></i> Create Form of <code><b>Order</b></code> </h3>
                                </div>
                               
                                <div class="card-body">
                                   
                                    <div class="row">

                                        <div class="col-xs-12 col-sm-6">

                                            {!! Form::open(['url' => 'ticket', 'method' => 'post', 'class' => 'form-horizontal', 'id' => 'ticketForm']) !!}

                                            <div class="form-group {{ $errors->has('ticket_type_id') ? 'has-error' : ''}}">
                                                {!! Form::label('ticket_type_id', 'Outlet', ['class' => 'required col-xs-3 col-sm-3 control-label']) !!}
                                                <div class="col-xs-9 col-sm-9" id="ticket_type_disable">
                                                    {!! Form::select('ticket_type_id', $ticketTypeList, null, ['class' => 'form-control','placeholder' => 'Select Outlet', 'id' => 'ticket_type_id']) !!}
                                                    <span class="text-danger">
                                                        {{ $errors->first('ticket_type_id') }}
                                                    </span>
                                                </div>
                                            </div>

                                            <div class="form-group {{ $errors->has('assigned_id') ? 'has-error' : ''}}">
                                                {!! Form::label('assigned_id', 'Assign Mail To', ['class' => 'required col-xs-3 col-sm-3 control-label']) !!}
                                                <div class="col-xs-9 col-sm-9" style="pointer-events: none;">
                                                    <span id="type_to_assign_show">
                                                        {!! Form::select('assigned_id', [], null, ['class' => 'form-control','placeholder' => 'Select Assign Mail To', 'id' => 'assigned_id']) !!}
                                                    </span>
                                                    <span class="text-danger">
                                                        {{ $errors->first('assigned_id') }}
                                                    </span>
                                                </div>
                                            </div>

                                            <div class="form-group {{ $errors->has('cc_to') ? 'has-error' : ''}}">
                                                {!! Form::label('cc_to', 'Assign CC To', ['class' => 'required col-xs-3 col-sm-3 control-label']) !!}
                                                <div class="col-xs-9 col-sm-9" style="pointer-events: none;">
                                                    {!! Form::select('cc_to[]', [], null, ['class' => 'form-control select2', 'id' => 'cc_to', 'multiple' => 'multiple']) !!}
                                                    <span class="text-danger">
                                                        {{ $errors->first('cc_to') }}
                                                    </span>
                                                </div>
                                            </div>

                                            <div class="form-group {{ $errors->has('phone_number') ? 'has-error' : ''}}">
                                                {!! Form::label('phone_number', 'Phone Number', ['class' => 'required col-3 col-sm-3 control-label']) !!}
                                                <div class="col-xs-9 col-sm-9">
                                                    {!! Form::text('phone_number', null, ['class' => 'form-control', 'placeholder' => 'Enter Customer Phone Number', 'autocomplete' => 'off']) !!}
                                                    <span class="text-danger">
                                                        {{ $errors->first('phone_number') }}
                                                    </span>
                                                </div>
                                            </div>

                                            <div class="form-group {{ $errors->has('subject') ? 'has-error' : ''}}">
                                                {!! Form::label('subject', 'Subject', ['class' => 'required col-xs-3 col-sm-3 control-label']) !!}
                                                <div class="col-xs-9 col-sm-9">
                                                    {!! Form::select('subject', $subjectList, null, ['class' => 'form-control','placeholder' => 'Select Subject']) !!}
                                                    <span class="text-danger">
                                                        {{ $errors->first('subject') }}
                                                    </span>
                                                </div>
                                            </div>

                                            <div class="form-group {{ $errors->has('customer_name') ? 'has-error' : ''}}">
                                                {!! Form::label('customer_name', 'Customer Name', ['class' => 'required col-3 col-sm-3 control-label']) !!}
                                                <div class="col-xs-9 col-sm-9">
                                                    {!! Form::text('customer_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Customer Name', 'autocomplete' => 'off']) !!}
                                                    <span class="text-danger">
                                                        {{ $errors->first('customer_name') }}
                                                    </span>
                                                </div>
                                            </div>

                                            <div class="form-group {{ $errors->has('customer_address') ? 'has-error' : ''}}">
                                                {!! Form::label('customer_address', 'Customer Address', ['class' => 'required col-3 col-sm-3 control-label']) !!}
                                                <div class="col-xs-9 col-sm-9">
                                                    {!! Form::text('customer_address', null, ['class' => 'form-control', 'placeholder' => 'Enter Customer Address', 'autocomplete' => 'off']) !!}
                                                    <span class="text-danger">
                                                        {{ $errors->first('customer_address') }}
                                                    </span>
                                                </div>
                                            </div>

                                            <div class="form-group {{ $errors->has('delivery_time') ? 'has-error' : ''}}">
                                                {!! Form::label('delivery_time', 'Delivery Time', ['class' => 'required col-3 col-sm-3 control-label']) !!}
                                                <div class="col-xs-9 col-sm-9">
                                                    {!! Form::text('delivery_time', null, ['class' => 'form-control', 'placeholder' => 'Enter Delivery Time', 'autocomplete' => 'off']) !!}
                                                    <span class="text-danger">
                                                        {{ $errors->first('delivery_time') }}
                                                    </span>
                                                </div>
                                            </div>

                                            <div class="form-group {{ $errors->has('discount_per') ? 'has-error' : ''}}">
                                                {!! Form::label('discount_per', 'Discount (%)', ['class' => 'col-3 col-sm-3 control-label']) !!}
                                                <div class="col-xs-9 col-sm-9">
                                                    {!! Form::number('discount_per', null, ['class' => 'form-control', 'placeholder' => 'Enter Discount in Percentage', 'autocomplete' => 'off', 'min' => '0', 'max' => '100']) !!}
                                                    <span class="text-danger">
                                                        {{ $errors->first('discount_per') }}
                                                    </span>
                                                </div>
                                            </div>

                                            <div class="form-group {{ $errors->has('payment_method') ? 'has-error' : ''}}">
                                                {!! Form::label('payment_method', 'Payment Method', ['class' => 'required col-3 col-sm-3 control-label']) !!}
                                                <div class="col-xs-9 col-sm-9">
                                                     {!! Form::select('payment_method', $paymentMethodList, null, ['class' => 'form-control', 'placeholder' => 'Select Payment Method']) !!}
                                                    <span class="text-danger">
                                                        {{ $errors->first('payment_method') }}
                                                    </span>
                                                </div>
                                            </div>

                                            <div class="form-group {{ $errors->has('remarks') ? 'has-error' : ''}}">
                                                {!! Form::label('remarks', 'Remarks', ['class' => 'required col-xs-3 col-sm-3 control-label']) !!}
                                                <div class="col-xs-9 col-sm-9">
                                                    {!! Form::textarea('remarks', null, ['class' => 'form-control', 'placeholder' => 'Enter Verbatim or Issue (Conversation Details)', 'autocomplete' => 'off', 'rows' => 3]) !!}
                                                    <span class="text-danger">
                                                        {{ $errors->first('remarks') }}
                                                    </span>
                                                </div>
                                            </div>



                                            <div class="box-footer">
                                                <a href="{{ url('/ticket') }}" class="btn btn-default">Cancel</a>
                                       
                                                {!! Form::button('Submit', ['class' => 'btn btn-primary pull-right', 'data-toggle' => 'modal', 'data-target' => '#ticket_create']) !!}
                                            </div>

                                            <div class="modal modal-info fade" id="ticket_create">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                            <h4 class="modal-title">Confirmation Message</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <h3>Want to Create Ticket?</h3>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn btn-outline submitBtnTicket">Create Ticket</button>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>

                                            {!! Form::close() !!}

                                        </div>

                                        <!-- -->

                                        <div class="col-xs-12 col-sm-6">
                                            <div>
                                                {!! Form::open(['url' => 'product-item/add-to-cart', 'method' => 'post']) !!}

                                                <div class="col-sm-12">
                                                    <div class="input-group" style="margin-top: 5px;">
                                                        <span class="input-group-addon" style="background-color: #28a745; color: #FFFFFF; min-width:100px;">Category <span style="color: red; font-size: 18px;">*</span></span>
                                                        {!! Form::select('category_id', $categoryList, null, ['class' => 'form-control', 'placeholder' => 'Select Category for add to Cart', 'required', 'id' => 'category_id']) !!}
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="input-group" style="margin-top: 5px;">
                                                        <span class="input-group-addon" style="background-color: #28a745; color: #FFFFFF; min-width:100px;">Product <span style="color: red; font-size: 18px;">*</span></span>
                                                        {!! Form::select('product_id', [], null, ['class' => 'form-control select2', 'placeholder' => 'Select Product for add to Cart', 'required', 'id' => 'product_id']) !!}
                                                    </div>
                                                </div>

                                                <span id="quantity_error" class="text-danger"></span>
                                                
                                                <div class="col-sm-12">
                                                    <div class="input-group" style="margin-top: 5px;">
                                                        <span class="input-group-addon" style="background-color: #28a745; color: #FFFFFF; min-width:100px;">Group</span>
                                                        {!! Form::select('group', $productGroupList, null, ['class' => 'form-control', 'placeholder' => 'Select Group', 'id' => 'group']) !!}
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="input-group" style="margin-top: 5px;">
                                                        <span class="input-group-addon" style="background-color: #28a745; color: #FFFFFF; min-width:100px;">Quantiry <span style="color: red; font-size: 18px;">*</span></span>
                                                        {!! Form::number('quantity', 1, ['class' => 'form-control', 'placeholder' => 'Enter Quantiry for add to Cart', 'step' => 'any', 'required', 'id' => 'quantity', 'min' => '1']) !!}
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="input-group" style="margin-top: 5px;">
                                                        <span class="input-group-addon" style="background-color: #28a745; color: #FFFFFF; min-width:100px;">Sweetness</span>
                                                        {!! Form::select('level_of_sweetness', $sweetnessList, null, ['class' => 'form-control', 'placeholder' => 'Select Level of Sweetness', 'id' => 'level_of_sweetness']) !!}
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="input-group" style="margin-top: 5px;">
                                                        <span class="input-group-addon" style="background-color: #28a745; color: #FFFFFF; min-width:100px;">Ice</span>
                                                        {!! Form::select('level_of_ice', $iceList, null, ['class' => 'form-control', 'placeholder' => 'Select Level of Ice', 'id' => 'level_of_ice']) !!}
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="input-group" style="margin-top: 5px;">
                                                        <span class="input-group-addon" style="background-color: #28a745; color: #FFFFFF; min-width:100px;">Add On's</span>
                                                        {!! Form::select('add_on_id', $addOnList, null, ['class' => 'form-control', 'placeholder' => 'Select Add On\'s for add to Cart', 'required', 'id' => 'add_on_id']) !!}
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="input-group" style="margin-top: 5px;">
                                                        <span class="input-group-addon" style="background-color: #28a745; color: #FFFFFF; min-width:100px;">Extra AddOn </span>
                                                        {!! Form::text('ex_add', null, ['class' => 'form-control', 'placeholder' => 'Enter Extra Add On\'s for add to Cart', 'id' => 'ex_add']) !!}
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="input-group" style="margin-top: 5px;">
                                                        <span class="input-group-addon" style="background-color: #28a745; color: #FFFFFF; min-width:100px;">Extra Price </span>
                                                        {!! Form::number('ex_price', null, ['class' => 'form-control', 'placeholder' => 'Enter Extra Add On\'s Price for add to Cart', 'id' => 'ex_price']) !!}
                                                    </div>
                                                </div>
                            
                                                <center>{!! Form::button('<i class="fa fa-plus"></i> Submit for add to Cart', ['class' => 'btn btn-success btn-sm add-cart-item-create', 'style' => 'margin-top: 10px']) !!}</center>
                                

                                                {!! Form::close() !!}

                                            </div>





                    <div class="card-body" style="padding: 5px;">
                        <div id="product_info_create">
                            <div class="table-responsive"> 
                                <table class="table table-bordered table-striped table-hover table-sm">
                                    <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Product Name</th>
                                            <th>Group</th>
                                            <th>Qty</th>
                                            <th>Price</th>
                                            <th>Subtotal</th>
                                            <th>Sweet</th>
                                            <th>Ice</th>
                                            <th>Add On</th>
                                            <th>Price</th>
                                            <th>Extra</th>
                                            <th>Price</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    <?php
                                        $i=1;
                                        $allTotal = 0;
                                        $addOnTotal = 0;
                                        $exTotal = 0;
                                    ?>
                                    @foreach($addedList as $key=>$item)
                                        <tr>
                                            <td>{{ $i++ }}</td>
                                            <td>{{ $item->name }}</td>
                                            <td>{{ $item->options->group }}</td>
                                            <td>{{ $item->qty }}</td>
                                            <td>{{ $item->price }}</td>
                                            <td>{{ $item->subtotal }}</td>
                                            <td>{{ $item->options->level_of_sweetness }}</td>
                                            <td>{{ $item->options->level_of_ice }}</td>
                                            <td>{{ $item->options->add_on_name }}</td>
                                            <td>{{ $item->options->add_on_subtotal }}</td>
                                            <td>{{ $item->options->ex_add }}</td>
                                            <td>{{ $item->options->ex_price }}</td>
                                            <td>
                                                <button type="button" class="delete-cart-item btn btn-danger btn-xs fa fa-trash" id="{{ $key }}"> Delete</button>
                                            </td>

                                            <?php
                                                $allTotal = $allTotal + $item->subtotal;
                                                $addOnTotal = $addOnTotal + $item->options->add_on_subtotal;
                                                $exTotal = $exTotal + $item->options->ex_price;
                                            ?>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                    
                            <p class="text-center" style="margin-bottom: 0px;">Product Price: <b>{{ $allTotal }}</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add On's Price: <b>{{ $addOnTotal }}</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Extra Price: <b>{{ $exTotal }}</b></p>
                            <p class="text-center" style="margin-bottom: 0px;">Total Price: <b>{{ $allTotal + $addOnTotal + $exTotal }}</b></p>
                        </div>
                    </div>

                                            
                                        </div>


                                    <!-- -->



                                    </div>




                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection

@section('style')
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap-datepicker.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/select2.min.css') }}">
    <style type="text/css">
        .select2-container--default .select2-selection--multiple .select2-selection__choice {
            background-color: #3c8dbc;
            border-color: #367fa9;
            padding: 1px 10px;
            color: #fff;
        }
    </style>
@endsection

@section('script')
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
            var url = '{{ url("ticket/get-product")}}';
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

        $(document).ready(function() {
            $("#ticket_type_id").change(function() {
                
                $('#ticket_type_disable').attr("style", "pointer-events: none;");
                var ticketTypeId = $("#ticket_type_id").val();
                var url = '{{ url("/ticket/get-assigned")}}';
                $.get(url+'?ticket_type_id='+ticketTypeId, function (data) {  
                    $('#type_to_assign_show').html('<select name="assigned_id" class="form-control"><option value="' + data.id + '">' + data.name + '</option></select>');
                });

                var url2 = '{{ url("/ticket/get-cc")}}';
                $.get(url2+'?ticket_type_id='+ticketTypeId, function (response) {
                    $.map( response, function( name, id ) {
                        $('#cc_to').append('<option selected  value="'+ id +'">' + name + '</option>');
                    });
                });
            });
        });

        $(function () {
            $('.select2').select2();
        });

        $(document).ready(function () {
            $("#ticketForm").submit(function () {
                $(".submitBtnTicket").attr("disabled", true);
                return true;
            });
        });



        $(function() {
            $(document).on('click', '.add-cart-item-create', function(e){
                e.preventDefault();
                var productId = $("#product_id").val();
                var group = $("#group").val();
                console.log(group);
                var quantity = $("#quantity").val();
                var levelOfSweetness = $("#level_of_sweetness").val();
                var levelOfIce = $("#level_of_ice").val();
                var addOnId = $("#add_on_id").val();
                var exAdd = $("#ex_add").val();
                var exPrice = $("#ex_price").val();

                if ((quantity == '') || (productId == '')) {
                    $("#quantity_error").html('Product and Quantity can not be blank');
                    return;
                }

                $("#quantity_error").html('');

                // var baseUrl = "{{ url('/') }}";
                // console.log(baseUrl);
                // var url = baseUrl + "/product-item/add-to-cart";

                var url = '{{ url("/ticket-cart/add-to-cart")}}'

                $.post(url, { product_id: productId, group: group, quantity: quantity, level_of_sweetness: levelOfSweetness, level_of_ice: levelOfIce, add_on_id: addOnId, ex_add: exAdd, ex_price: exPrice, _token: $('input[name="_token"]').val() }, function(data){
                    $('#product_info_create').html(data);
                    // console.log(data);
                    $("#product_id").val('');
                    $("#group").val('');
                    $("#quantity").val('');
                    $("#level_of_sweetness").val('');
                    $("#level_of_ice").val('');
                    $("#add_on_id").val('');
                    $("#ex_add").val('');
                    $("#ex_price").val('');
                });
            });
        });

        $(function() {
            $(document).on('click', '.delete-cart-item', function(){
              
                var key_id = this.id 

                var url2  = '{{ url("/ticket-cart/remove-one-item")}}' + "/" + key_id;

                $.get(url2, function (data) {
                    $('#product_info_create').html(data);
                });
            });
        });
        
    </script>
@endsection