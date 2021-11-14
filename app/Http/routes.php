<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::auth();

Route::post('login', 'Auth\AuthController@login');
Route::get('login',  'Auth\AuthController@showLoginForm');
Route::get('logout', 'Auth\AuthController@logout');
Route::get('show-reg-form', 'Auth\AuthController@showRegistrationForm');
Route::post('register', 'Auth\AuthController@register');

Route::get('cart',  'CartController@cart');
Route::post('update-cart',  'CartController@updateCart');

Route::post('/order-cart/add-to-cart', 'TicketController@addToCart');
Route::get('/order-cart/remove-one-item/{id?}', 'TicketController@removeOneItem');
Route::post('/crm-cart/add-to-cart', 'CrmController@addToCart');
Route::get('/crm-cart/remove-one-item/{id?}', 'CrmController@removeOneItem');

Route::get('/dashboard', 'HomeController@index');

Route::get('/', 'DashboardController@welcome');
// Route::get('/', 'DashboardController@dsDashboardOld');
Route::get('/old', 'DashboardController@dsDashboard');
Route::get('/north-dashboard', 'DashboardController@northDashboardOld');
Route::get('/south-dashboard', 'DashboardController@southDashboardOld');

Route::get('/north-dashboard-old', 'DashboardController@northDashboard');
Route::get('/south-dashboard-old', 'DashboardController@southDashboard');

Route::get('/SR-daily-dashboard', 'Dashboard2Controller@index');

Route::get('/user', 'UserController@index');

Route::get('/user-registration', 'UserRegistrationController@index');

Route::get('/outlet', 'TicketTypeController@index');

Route::get('/order-status', 'TicketStatusController@index');
Route::get('/group', 'TicketStatusController@groupIndex');
Route::get('/modification', 'TicketStatusController@modificationIndex');

Route::get('/category', 'CategoryController@index');

Route::get('/select', 'SelectController@index');

Route::get('/option', 'OptionController@index');

Route::get('/division', 'DivisionController@index');

Route::get('/district', 'DistrictController@index');

Route::get('/testing', 'PoliceStationController@testing');

Route::get('/police-station', 'PoliceStationController@index');

Route::get('/app-user', 'AppUserController@index');

Route::get('/order/get-product', 'TicketController@getProduct');
Route::get('/order/get-assigned', 'TicketController@getAssigned');
Route::get('/order/get-cc', 'TicketController@getCC');
Route::get('/order', 'TicketController@index');

Route::get('/order/create', 'TicketController@create');
Route::post('/order', 'TicketController@store');

Route::get('/order/{id}', 'TicketController@show');
Route::get('/order/{id}/edit', 'TicketController@edit');
Route::put('/order/{id}', 'TicketController@update');

Route::get('/crm/get-product', 'CrmController@getProduct');
Route::get('/crm/get-district', 'CrmController@getDistrict');
Route::get('/crm/create', 'CrmController@create');
Route::post('/crm', 'CrmController@store');

Route::get('/crm', 'CrmAuthController@index');

Route::get('/mail-test', 'MailTestController@index');

Route::get('/report/warranty-detail-form', 'ReportController@warrantyDetailForm');
Route::get('/report/warranty-detail-show', 'ReportController@warrantyDetailShow');
Route::get('/report/ticket-form', 'ReportController@ticketForm');
Route::get('/report/ticket-show', 'ReportController@ticketShow');

Route::get('/own/ticket-form', 'ReportController@ownTicketForm');
Route::get('/own/ticket-show', 'ReportController@ownTicketShow');
Route::get('/created-by/ticket-form', 'ReportController@createdByTicketForm');
Route::get('/created-by/ticket-show', 'ReportController@createdByTicketShow');
Route::get('/cc/ticket-form', 'ReportController@ccTicketForm');
Route::get('/cc/ticket-show', 'ReportController@ccTicketShow');
Route::get('/report/district-forms', 'ReportsController@districtForm');
Route::get('/report/ticket-type-form', 'ReportController@ticketTypeForm');
Route::get('/report/ticket-type-show', 'ReportController@ticketTypeShow');
Route::get('/report/sku-form', 'ReportController@skuForm');
Route::get('/report/sku-show', 'ReportController@skuShow');
Route::get('/report/delivery-status-form', 'ReportController@deliveryStatusForm');
Route::get('/report/delivery-status-show', 'ReportController@deliveryStatusShow');
Route::get('/report/online-payment-form', 'ReportController@onlinePaymentForm');
Route::get('/report/online-payment-show', 'ReportController@onlinePaymentShow');
Route::get('/report/ticket-id-form', 'ReportController@ticketIdForm');
Route::get('/report/ticket-id-show', 'ReportController@ticketIdShow');

Route::get('/report/district-form', 'ReportController@districtForm');
Route::get('/report/district-show', 'ReportController@districtShow');
Route::get('/report/not-done-form', 'ReportController@notDoneForm');
Route::get('/report/not-done-show', 'ReportController@notDoneShow');
Route::get('/report/done-form', 'ReportController@doneForm');
Route::get('/report/done-show', 'ReportController@doneShow');

Route::get('/report/crm-form-excel', 'ExcelReportController@crmFormExcel');
Route::post('/report/crm-show-excel', 'ExcelReportController@crmShowExcel');
Route::get('/report/ticket-form-excel', 'ExcelReportController@ticketFormExcel');
Route::post('/report/ticket-show-excel', 'ExcelReportController@ticketShowExcel');

Route::get('change-password-form', 'UserController@changePasswordForm');
Route::post('change-password-store', 'UserController@changePasswordStore');

Route::post('/search', 'ReportController@search');

Route::get('/api/get-ticket-information', 'ApiController@getTicketInfo');

Route::get('/payment-response', 'PaymentController@payment');

Route::get('/product', 'ProductController@index');

Route::get('/db-assigned/{id}/edit', 'DBAssignedController@dbAssignedEdit');
Route::put('/db-assigned/{id}', 'DBAssignedController@dbAssignedUpdate');

Route::group([ 'middleware' => 'can:ticket_admin-access'], function () {
	
	Route::get('/division/create', 'DivisionController@create');
	Route::post('/division', 'DivisionController@store');
	Route::get('/division/{id}/edit', 'DivisionController@edit');
	Route::put('/division/{id}', 'DivisionController@update');

	Route::get('/district/create', 'DistrictController@create');
	Route::post('/district', 'DistrictController@store');
	Route::get('/district/{id}/edit', 'DistrictController@edit');
	Route::put('/district/{id}', 'DistrictController@update');

	Route::get('/division-district-show', 'PoliceStationController@divisionDistrictShow');
	Route::get('/police-station/create', 'PoliceStationController@create');
	Route::post('/police-station', 'PoliceStationController@store');
	Route::get('/police-station/{id}/edit', 'PoliceStationController@edit');
	Route::put('/police-station/{id}', 'PoliceStationController@update');

	Route::get('/user/{id}/edit', 'UserController@edit');
	Route::put('/user/{id}', 'UserController@update');

	Route::get('/outlet/create', 'TicketTypeController@create');
	Route::post('/outlet', 'TicketTypeController@store');
	Route::get('/outlet/{id}/edit', 'TicketTypeController@edit');
	Route::put('/outlet/{id}', 'TicketTypeController@update');

	Route::get('/category/create', 'CategoryController@create');
	Route::post('/category', 'CategoryController@store');
	Route::get('/category/{id}/edit', 'CategoryController@edit');
	Route::put('/category/{id}', 'CategoryController@update');

	Route::get('/order-status/create', 'TicketStatusController@create');
	Route::post('/order-status', 'TicketStatusController@store');
	Route::get('/order-status/{id}/edit', 'TicketStatusController@edit');
	Route::put('/order-status/{id}', 'TicketStatusController@update');

	Route::get('/select/create', 'SelectController@create');
	Route::post('/select', 'SelectController@store');
	Route::get('/select/{id}/edit', 'SelectController@edit');
	Route::put('/select/{id}', 'SelectController@update');

	Route::get('/option/create', 'OptionController@create');
	Route::post('/option', 'OptionController@store');
	Route::get('/option/{id}/edit', 'OptionController@edit');
	Route::put('/option/{id}', 'OptionController@update');

	Route::get('/app-user/create', 'AppUserController@create');
	Route::post('/app-user', 'AppUserController@store');
	Route::get('/app-user/{id}/edit', 'AppUserController@edit');
	Route::put('/app-user/{id}', 'AppUserController@update');

	Route::get('/user-registration/create', 'UserRegistrationController@create');
	Route::post('/user-registration', 'UserRegistrationController@store');
	Route::get('/user-registration/{id}/edit', 'UserRegistrationController@edit');
	Route::put('/user-registration/{id}', 'UserRegistrationController@update');

	Route::get('/product/create', 'ProductController@create');
	Route::post('/product', 'ProductController@store');
	Route::get('/product/{id}/edit', 'ProductController@edit');
	Route::put('/product/{id}', 'ProductController@update');
});

Route::group([ 'middleware' => 'can:agent-access'], function () {

	

	Route::get('/sms-send', 'SmsSendController@index');
	Route::get('/sms-send/create', 'SmsSendController@create');
	Route::post('/sms-send', 'SmsSendController@store');
});

Route::group([ 'middleware' => 'can:user-access'], function () {

	
});