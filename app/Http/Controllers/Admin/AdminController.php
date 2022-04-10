<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Folder;
use App\Models\Gallery;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware(['isadmin']);
    }
    public function index()
    {
        return view('admin.pages.admin.index');

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.pages.admin.create');

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'password' => 'required|min:5',
            'email' => 'required'
        ], [
            'name.required' => 'Name is required',
            'password.required' => 'Password is required'
        ]);


        $request->passwordverification ==$request->password ? $user= User::create([
            'name' => $request->name,
            'type' => 'user',
            'admin' => '1',
            'email' => $request->email,
            'email_verified_at' => Carbon::now(),


            'password' => Hash::make($request->password),
        ]):'';
// return $user;


        return redirect()->back()->with('message','admin has inserted successfully');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user=User::find($id);
        return view('admin.pages.admin.edit',compact('user'));


    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required'
        ], [
            'name.required' => 'Name is required',
            'password.required' => 'Password is required'
        ]);

        $user=User::find($id);
        $status =$request->status==1?1:0;
        $request->passwordverification ==$request->password ? $user->update([
            'name' => $request->name,
            'type' => 'user',
            'admin' => '1',
            'status' =>  $status,

            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]):'';
// return $user;


        return redirect()->back()->with('message','admin has updated successfully');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function sendMail(Request $request)
    {

        Mail::send('admin.emails.user', ['title' => $request->title,'containt'=>$request->message,'name'=>$request->name], function($message) use($request){
            $message->to($request->email);
            $message->subject('from ghanem project' );
        });
        return redirect()->back()->with('message','the email has sent');

    }
    public function delete($id)
    {

        User::find($id)->delete();
        return redirect()->back()->with('message','admin has been deleted');

    }
}
