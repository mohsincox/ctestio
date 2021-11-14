<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Models\Ticket;
use App\Models\TicketDetail;
use App\User;
use Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;

class DBAssignedController extends Controller
{
    public function dbAssignedEdit(Request $request, $id)
    {
    	if (Auth::check()) {
	    	$ticket = Ticket::find($id);
	    	$appUserList  = User::where('role', 'app_user')->orderBy('depot_app_user', 'asc')->pluck('depot_app_user', 'id');

	        return view('db_assigned.edit', compact('ticket', 'appUserList'));
        } else {
        	return redirect('/login');
        }
    }

    public function dbAssignedUpdate(Request $request, $id)
    {
        $input = Input::all();
        $rules = [
            'app_user_id' => 'required',
        ];
        $messages = [
            'app_user_id.required' => 'The Delivery Boy field is required.'
        ];
        
        $validator = Validator::make($input, $rules, $messages);
        if ($validator->fails()) {
            flash()->error('Something Wrong!');
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }

        $ticket = Ticket::find($id);
        $ticket->db_assigned_id = $request->app_user_id;
        $ticket->ticket_status_id = 2;
        $ticket->updated_by = Auth::id();
        $ticket->save();

        $dbUser = User::find($request->app_user_id);

        $ticketDetail = new TicketDetail;
        $ticketDetail->ticket_id = $ticket->id;
        $ticketDetail->ticket_status_id = 2;
        $ticketDetail->remarks = 'Assign to: '.$dbUser->depot_app_user;
        $ticketDetail->app_user = $request->app_user_id;
        $ticketDetail->created_by = Auth::id();
        $ticketDetail->save();


        // $smsPhoneNumber = $dbUser->phone_number;
        // $smsBody = "You have received a new order. ID: " . $ticket->id . ", Name: " . $ticket->customer_name . ", Mob: " . $ticket->phone_number . ", Add:" . $ticket->customer_address . ". Please open App";

        // $client = new \GuzzleHttp\Client();
        // $res = $client->request('GET', 'http://sms.sslwireless.com/pushapi/dynamic/server.php?user=igloo&pass=12134A92&sid=iglooEng&sms=' . $smsBody . '&msisdn=' . $smsPhoneNumber . '&csmsid=123456789');

        // $a = $res->getBody();
        
        flash()->success('Successfully Updated');
        return redirect()->back();
    }
}
