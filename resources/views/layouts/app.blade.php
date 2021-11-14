<!DOCTYPE html>
<html>
<head>
  	<meta charset="utf-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<title>MYOL</title>
  	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  	<link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">
  	<link rel="stylesheet" href="{{ asset('assets/css/font-awesome.min.css') }}">
  	<link rel="stylesheet" href="{{ asset('assets/css/ionicons.min.css') }}">
  	<link rel="stylesheet" href="{{ asset('assets/css/style.min.css') }}">
  	<link rel="stylesheet" href="{{ asset('assets/css/_all-skins.min.css') }}">
  	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  	<style type="text/css">
        .alert {
            padding: 2px; 
            margin-bottom: 5px;
        }

        .required:after{ 
	        content:'*'; 
	        color:red; 
	        padding-left:5px;
	    }

      .skin-red .main-header .navbar {
        background-color: #EA0000;
      }

      .dropdown-menu>.active>a, .dropdown-menu>.active>a:focus, .dropdown-menu>.active>a:hover {
        color: #fff;
        text-decoration: none;
        background-color: #EA0000;
        outline: 0;
      }
    </style>

     @yield('style')
</head>

<!-- <body class="hold-transition skin-purple layout-top-nav"> -->
<body class="hold-transition skin-red layout-top-nav">
	<div class="wrapper">
  		<header class="main-header">
    		<nav class="navbar navbar-static-top">
      			<div class="container">

        			<div class="navbar-header">
          				<!-- <a href="{{ url('/') }}" class="navbar-brand"><b>SR</b> OMS</a> -->
                  <a href="{{ url('/') }}" class="navbar-brand"><img src="{{ asset('assets/images/secret_recipe.png') }}" width="170" height="46" style="margin-top: -16px;"></a>
                  <!-- <a href="{{ url('/') }}" class="navbar-brand"><img src="{{ asset('assets/images/sr_favicon.png') }}" style="margin-top: -26px;"></a> -->
          				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            				<i class="fa fa-bars"></i>
          				</button>
        			</div>
        			@if (Auth::guest())
			        <div class="collapse navbar-collapse pull-right" id="navbar-collapse">
			          	<ul class="nav navbar-nav">
                    <li class="active"><a href="{{ url('/login') }}"> <i class="fa fa-sign-in"></i> Login <span class="sr-only">(current)</span></a></li> 
			            	<!-- <li class="active"><a href="{{ url('/register') }}"> <i class="fa fa-sign-in"></i> Registration <span class="sr-only">(current)</span></a></li>  -->
			          	</ul>
			        </div>
        			@else
        			<div class="collapse navbar-collapse pull-right" id="navbar-collapse">
          				<ul class="nav navbar-nav">

                    <!-- <li><a href="#"><b>Inventory</b></a></li> -->

                    <li class="dropdown open">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Inventory</b><span class="caret"></span></a>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Stock In</a></li>
                        <li class="active"><a href="#">Outlet Stock</a></li>
                        <li><a href="#">Stock Out</a></li>
                      </ul>
                    </li>
            				
                    <li {{ ( Request::is('user') || Request::is('user/*') || Request::is('user-registration') || Request::is('user-registration/*')  ? 'class=active' : '' ) }} class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">User <span class="caret"></span></a>
                      <ul class="dropdown-menu" role="menu">
                        <li {{ ( Request::is('user') || Request::is('user/*') ? 'class=active' : '' ) }} ><a href="{{ url('/user') }}">Web User</a></li>
                        <!-- <li {{ ( Request::is('user-registration') || Request::is('user-registration/*') ? 'class=active' : '' ) }} ><a href="{{ url('/user-registration') }}">Rider User</a></li> -->
                      </ul>
                    </li>

                    <li {{ ( Request::is('outlet') || Request::is('outlet/*') ? 'class=active' : '' ) }} ><a href="{{ url('/outlet') }}">Outlet</a></li>

                    <li {{ ( Request::is('category') || Request::is('category/*') ? 'class=active' : '' ) }} ><a href="{{ url('/category') }}">Product Category</a></li>
                    <li {{ ( Request::is('product') || Request::is('product/*') ? 'class=active' : '' ) }} ><a href="{{ url('/product') }}">Product Detail</a></li>

                    <!-- <li {{ ( Request::is('category') || Request::is('category/*') || Request::is('product') || Request::is('product/*')  ? 'class=active' : '' ) }} class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Product <span class="caret"></span></a>
                      <ul class="dropdown-menu" role="menu">
                        <li {{ ( Request::is('category') || Request::is('category/*') ? 'class=active' : '' ) }} ><a href="{{ url('/category') }}">Product Category</a></li>
                        <li {{ ( Request::is('product') || Request::is('product/*') ? 'class=active' : '' ) }} ><a href="{{ url('/product') }}">Product Detail</a></li>
                        <li {{ ( Request::is('group') || Request::is('group/*') ? 'class=active' : '' ) }} ><a href="{{ url('/group') }}">Product Group</a></li>
                        <li {{ ( Request::is('modification') || Request::is('modification/*') ? 'class=active' : '' ) }} ><a href="{{ url('/modification') }}">Product Modification</a></li>
                        <li {{ ( Request::is('add-on') || Request::is('add-on/*') ? 'class=active' : '' ) }} ><a href="{{ url('/add-on') }}">Product Add On's</a></li>
                      </ul>
                    </li> -->

                    <!-- <li {{ ( Request::is('category') || Request::is('category/*') || Request::is('product') || Request::is('product/*')  ? 'class=active' : '' ) }} class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Product <span class="caret"></span></a>
                      <ul class="dropdown-menu" role="menu">
                        <li {{ ( Request::is('category') || Request::is('category/*') ? 'class=active' : '' ) }} ><a href="{{ url('/category') }}">Product Category</a></li>
                        <li {{ ( Request::is('group') || Request::is('group/*') ? 'class=active' : '' ) }} ><a href="{{ url('/group') }}">Product Group</a></li>
                        <li {{ ( Request::is('modification') || Request::is('modification/*') ? 'class=active' : '' ) }} ><a href="{{ url('/modification') }}">Product Modification</a></li>
                        <li {{ ( Request::is('product') || Request::is('product/*') ? 'class=active' : '' ) }} ><a href="{{ url('/product') }}">Product Detail</a></li>
                        <li {{ ( Request::is('add-on') || Request::is('add-on/*') ? 'class=active' : '' ) }} ><a href="{{ url('/add-on') }}">Product Add On's</a></li>
                      </ul>
                    </li> -->

                   

                    <li {{ ( Request::is('order-status') || Request::is('order-status/*') ? 'class=active' : '' ) }} ><a href="{{ url('/order-status') }}">Order Status</a></li>
                    <li {{ ( Request::is('select') || Request::is('select/*') ? 'class=active' : '' ) }} ><a href="{{ url('/select') }}">Menu</a></li>
                    <li {{ ( Request::is('option') || Request::is('option/*') ? 'class=active' : '' ) }} ><a href="{{ url('/option') }}">Menu Option</a></li>
                    
                    <li {{ ( Request::is('order') || Request::is('order/*') ? 'class=active' : '' ) }} ><a href="{{ url('/order') }}">Order</a></li>
                    
                    <!-- <li {{ ( Request::is('report') || Request::is('report/*') ? 'class=active' : '' ) }} class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Report <span class="caret"></span></a>
                      <ul class="dropdown-menu" role="menu">
                        
                        <li><a href="{{ url('/report/ticket-form') }}">Order Report</a></li>
                        <li><a href="{{ url('/report/ticket-type-form') }}">Outlet Wise Report</a></li>
                      </ul>
                    </li> -->




                    
                     <!--
                    <li {{ ( Request::is('report') || Request::is('report/*') ? 'class=active' : '' ) }} class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Report <span class="caret"></span></a>
                      <ul class="dropdown-menu" role="menu">
                        
                        <li><a href="{{ url('/report/ticket-form') }}">Order Report</a></li>
                        <li><a href="{{ url('/report/delivery-status-form') }}">Delivery Status Report</a></li>
                        <li><a href="{{ url('/report/online-payment-form') }}">Online Payment Report</a></li>
                        <li><a href="{{ url('/report/ticket-id-form') }}">Order ID Search</a></li>
                        <li><a href="{{ url('/report/ticket-type-form') }}">Type Wise Report</a></li>
                        @can('ticket_admin-access')
                        <li><a href="{{ url('/report/sku-form') }}">SKU Report</a></li>
                        @endcan
                        <li><a href="{{ url('/report/ticket-form-excel') }}"> Report Download (xlsx, csv, xls)</a></li>
                        @can('ticket_admin-access')
                        <li><a href="{{ url('/report/crm-form-excel') }}">CRM Report Download (xlsx, csv, xls)</a></li>
                        @endcan
                        <li><a href="{{ url('/dashboard') }}">Dashboard</a></li>
                        <li><a href="{{ url('/own/ticket-form') }}">Own Order</a></li>
                        @if(Auth::id() == 1)
                          <li><a href="{{ url('/BNS-daily-dashboard') }}">Dashboard Refresh</a></li>
                        @endif
                      </ul>
                    </li>
                    @can('agent-access')
                      <li {{ ( Request::is('crm') || Request::is('crm/*') ? 'class=active' : '' ) }} ><a href="{{ url('/crm') }}">CRM</a></li>
                    @endcan
                    @if(Auth::id() == 1)
                      <li {{ ( Request::is('crm') || Request::is('crm/*') ? 'class=active' : '' ) }} ><a href="{{ url('/crm') }}">CRM</a></li>
                    @endif 

                    <li {{ ( Request::is('created-by/*') ? 'class=active' : '' ) }} ><a href="{{ url('/created-by/ticket-form') }}">Created By</a></li> -->

            				<li class="dropdown user user-menu">
              					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
                          @if(isset(Auth::user()->image))
                              <img src="{{ asset('public/uploads/'.Auth::user()->image) }}" class="user-image" alt="User Image">
                          @else
                              <img src="{{ asset('assets/images/user.png') }}" class="user-image" alt="User Image">
                          @endif
                					
                					<span class="hidden-xs">{{ Auth::user()->name }}</span>
              					</a>
              					<ul class="dropdown-menu">
                					<li class="user-header">
                              @if(isset(Auth::user()->image))
                                <img src="{{ asset('public/uploads/'.Auth::user()->image) }}" class="img-circle" alt="User Image">
                              @else
                                  <img src="{{ asset('assets/images/user.png') }}" class="img-circle" alt="User Image">
                              @endif
	                  					
	                  					<p>
	                    					{{ Auth::user()->name }}
	                  					</p>
                					</li>
					                <li class="user-footer">
					                  <div class="pull-left">
					                    <!-- <a href="{{ url('/profile') }}" class="btn btn-default btn-flat">Profile</a> -->
                              <a href="{{ url('/logout') }}" class="btn btn-danger btn-flat">Sign out</a>
					                  </div>
					                  <div class="pull-right">
					                    <!-- <a href="{{ url('/logout') }}" class="btn btn-danger btn-flat">Sign out</a> -->
					                  </div>
					                </li>
              					</ul>
            				</li>
          				</ul>
                  
        			</div>
         			@endif
      			</div>
    		</nav>
  		</header>

  		

  		<div class="content-wrapper">
  			<div class="container">
		        <div class="col-sm-8 col-sm-offset-2">
		            @include('flash::message')
		        </div>
		    </div>

    		
       		@yield('content')
    		
  		</div>
  
 		<footer class="main-footer">
    		<div class="container">
      			<div class="pull-right hidden-xs">
        			<b>Version</b> 1.0
      			</div>
      			<strong>Copyright &copy; {{ date('Y') }} <a href="http://myolbd.com" target="_blank">MY Outsourcing Limited</a>.</strong> All rights reserved.
    		</div>
  		</footer>
	</div>

	<script src="{{ asset('assets/js/jquery.min.js') }}"></script>
	<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
	<script src="{{ asset('assets/js/jquery.slimscroll.min.js') }}"></script>
	<script src="{{ asset('assets/js/fastclick.js') }}"></script>
	<script src="{{ asset('assets/js/script.min.js') }}"></script>
	<!-- <script src="{{ asset('assets/js/demo.js') }}"></script> -->
	@yield('script')
</body>
</html>
