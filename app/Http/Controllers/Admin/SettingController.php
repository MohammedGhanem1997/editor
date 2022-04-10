<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\SEO;
use App\Models\SiteControl;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    public function seo( ){

            return view('admin.pages.seo.index');
    }
    public function siteControl( ){

        $site=SiteControl::first();
        return view('admin.pages.sitecontrol.index',compact('site'));
    }

    public function siteControlPost( Request $request){

        $site=SiteControl::updateOrCreate(    ['id' => 1],$request->all());


        return redirect()->back()->with('message','done');
    }



        public function socialPost(Request $request)
    {
        $i=0;
        foreach ($request->meta as $item){
            $element= SEO::where('meta',$item)->first();
            $element->description=$request->description[$i];


            $element->save();
            $i++;
        }

        return redirect()->back()->with('message','done');

    }

    private function checkForUpdateOrCreate ($key,$request,$settingType) {
        $setting = Setting::where('type',$settingType)->where('key',$key)->first();
        if (!$setting) {
            Setting::create([
                'type' => $settingType,
                'key' => $key,
                'value' => $request->$key,
            ]);
        }
        else {
            $setting->value = $request->$key;
            $setting->save();
        }
    }

}
