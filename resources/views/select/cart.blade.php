<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

	<?php //echo Cart::content(); die(); ?>
  



<div class="shopping_cart_area mt-60">
        @if(Cart::count() > 0)
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="table_desc">
                            <div class="cart_page table-responsive">
                                 <table>
                                    <thead>
                                    <tr>
                                        <th class="product_remove">Delete</th>
                                        
                                        <th class="product_name">Product</th>
                                        <th class="product-price">Price</th>
                                        <th class="product_quantity" style="width: 300px !important;">Quantity</th>
                                        <th class="product_total">Total</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach(Cart::content() as $row)
                                        <tr>
                                            <td class="product_remove"><a href="{{ url('remove.item', $row->rowId) }}"><i class="fa fa-trash-o"></i>Del</a></td>
                                            
                                            <td class="product_name"><a href="{{ url('product-details', $row->id) }}">{{ $row->name }}</a></td>
                                            <td class="product-price">Tk {{ $row->price }}</td>
                                            <td class="product_quantity" style="width: 300px !important;">
                                                <form action="{{ url('update-cart')  }}" method="post">
                                                    {{ csrf_field() }}
                                                    <label>Quantity</label>
                                                    <input type="hidden" name="rowId" value="{{ $row->rowId }}">
                                                    <a class="btn btn-dark" name="add-to-cart-modal-minus">-</a>
                                                    <input type="number" name="qty" min="1" value="{{ $row->qty }}">
                                                    <a class="btn btn-info" name="add-to-cart-modal-plus">+</a>
                                                    <button type="submit" class="d-none"><i class="fa fa-check" aria-hidden="true"></i> submit</button>
                                                </form>


                                            </td>
                                            <td class="product_total">Tk {{ $row->subtotal }}</td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!--coupon code area start-->
                <div class="coupon_area">
                    <div class="row">
                        
                        <div class="col-lg-6 col-md-6">
                            <div class="coupon_code right">
                                <div class="coupon_inner">
                                    <div class="cart_subtotal">
                                        <p>Subtotal</p>
                                        <p class="cart_amount">Tk {{ Cart::subtotal() }}</p>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--coupon code area end-->
            </div>
        @else
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="text-center mb-5 checkout_btn">
                            You don't have any item in your cart. Go to Shop.
                        </div>
                    </div>
                </div>
            </div>
        @endif

        
    </div>




<script>
        $(document).ready(function () {
          $('input[name="qty"]').change(function (e) {
            $(this).parent('form').find('button').removeClass('d-none')
          })
          // clicking on modal plus btn
          $(document).on('click', 'a[name="add-to-cart-modal-plus"]', function () {
            var qu = (Number($(this).parent('form').find('input[name="qty"]').val())+1);
            $(this).parent('form').find('input[name="qty"]').val(qu)
            $(this).parent('form').find('button').removeClass('d-none')
          })
          // clicking on modal minus btn
          $(document).on('click', 'a[name="add-to-cart-modal-minus"]', function () {
            const qu = (Number($(this).parent('form').find('input[name="qty"]').val())-1);
            if(qu > 0) {
              $(this).parent('form').find('input[name="qty"]').val(qu)
              $(this).parent('form').find('button').removeClass('d-none')
            }
          })
        });
    </script>

</body>
</html>

















