<?php

namespace App\Http\Controllers\Company;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Package;
use App\Models\Company;
use App\Models\CompanyLocation;
use App\Models\CompanyIndustry;
use App\Models\CompanySize;
use App\Models\CompanyPhoto;
use App\Models\CompanyVideo;
use App\Models\Job;
use App\Models\JobCategory;
use App\Models\JobLocation;
use App\Models\JobType;
use App\Models\JobExperience;
use App\Models\JobGender;
use App\Models\JobSalaryRange;
use App\Models\Candidate;
use App\Models\CandidateApplication;
use App\Models\CandidateBookmark;
use App\Models\CandidateEducation;
use App\Models\CandidateExperience;
use App\Models\CandidateSkill;
use App\Models\CandidateAward;
use App\Models\CandidateResume;
use App\Mail\WebsiteMail;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Srmklive\PayPal\Services\PayPal as PayPalClient;


class CompanyController extends Controller
{
    public function dashboard()
    {
        $total_opened_jobs = Job::where('company_id',Auth::guard('company')->user()->id)->count();
        $total_featured_jobs = Job::where('company_id',Auth::guard('company')->user()->id)->where('is_featured',1)->count();
        $jobs = Job::with('rJobCategory')->where('company_id',Auth::guard('company')->user()->id)->orderBy('id','desc')->take(2)->get();
        return view('company.dashboard', compact('jobs','total_opened_jobs','total_featured_jobs'));
    }

    public function orders()
    {
        $orders = Order::with('rPackage')->orderBy('id', 'desc')->where('company_id',Auth::guard('company')->user()->id)->get();
        return view('company.orders', compact('orders'));
    }

    public function edit_profile()
    {
        $company_locations = CompanyLocation::orderBy('name', 'asc')->get();
        $company_industries = CompanyIndustry::orderBy('name', 'asc')->get();
        $company_sizes = CompanySize::get();
        return view('company.edit_profile', compact('company_locations','company_industries','company_sizes'));
    }

    public function edit_profile_update(Request $request)
    {
        $obj = Company::where('id',Auth::guard('company')->user()->id)->first();
        $id = $obj->id;

        $request->validate([
            'company_name' => 'required',
            'person_name' => 'required',
            'username' => ['required','alpha_dash',Rule::unique('companies')->ignore($id)],
            'email' => ['required','email',Rule::unique('companies')->ignore($id)],
        ]);

        if($request->hasFile('logo')) {
            $request->validate([
                'logo' => 'image|mimes:jpg,jpeg,png,gif'
            ]);

            if(Auth::guard('company')->user()->logo != '') {
                unlink(public_path('uploads/'.$obj->logo));
            }

            $ext = $request->file('logo')->extension();
            $final_name = 'company_logo_'.time().'.'.$ext;

            $request->file('logo')->move(public_path('uploads/'),$final_name);

            $obj->logo = $final_name;
        }

        $obj->company_name = $request->company_name;
        $obj->person_name = $request->person_name;
        $obj->username = $request->username;
        $obj->email = $request->email;
        $obj->phone = $request->phone;
        $obj->address = $request->address;
        $obj->company_location_id = $request->company_location_id;
        $obj->company_industry_id = $request->company_industry_id;
        $obj->company_size_id = $request->company_size_id;
        $obj->founded_on = $request->founded_on;
        $obj->website = $request->website;
        $obj->description = $request->description;
        $obj->oh_mon = $request->oh_mon;
        $obj->oh_tue = $request->oh_tue;
        $obj->oh_wed = $request->oh_wed;
        $obj->oh_thu = $request->oh_thu;
        $obj->oh_fri = $request->oh_fri;
        $obj->oh_sat = $request->oh_sat;
        $obj->oh_sun = $request->oh_sun;
        $obj->map_code = $request->map_code;
        $obj->facebook = $request->facebook;
        $obj->twitter = $request->twitter;
        $obj->linkedin = $request->linkedin;
        $obj->instagram = $request->instagram;
        $obj->update();

        return redirect()->back()->with('success', 'Profile is updated successfully.');

    }

    public function edit_password()
    {
        return view('company.edit_password');
    }

    public function edit_password_update(Request $request)
    {
        $request->validate([
            'password' => 'required',
            'retype_password' => 'required|same:password'
        ]);

        $obj = Company::where('id',Auth::guard('company')->user()->id)->first();
        $obj->password = Hash::make($request->password);
        $obj->update();

        return redirect()->back()->with('success', 'Password is updated successfully.');
    }

    public function photos()
    {
        // Check if a person buy a package
        $order_data = Order::where('company_id',Auth::guard('company')->user()->id)->where('currently_active',1)->first();

        if(!$order_data) {
            return redirect()->back()->with('error', 'You must have to buy a package first to access this page');
        }

        // Check if a person has access to this page under the current package
        $package_data = Package::where('id',$order_data->package_id)->first();

        if($package_data->total_allowed_photos == 0) {
            return redirect()->back()->with('error', 'Your current package does not allow to access the photo section');
        }

        $photos = CompanyPhoto::where('company_id',Auth::guard('company')->user()->id)->get();
        return view('company.photos', compact('photos'));
    }

    public function photos_submit(Request $request)
    {
        $order_data = Order::where('company_id',Auth::guard('company')->user()->id)->where('currently_active',1)->first();
        $package_data = Package::where('id',$order_data->package_id)->first();
        $existing_photo_number = CompanyPhoto::where('company_id',Auth::guard('company')->user()->id)->count();

        if($package_data->total_allowed_photos == $existing_photo_number) {
            return redirect()->back()->with('error', 'Maximum number of allowed photos are uploaded. So you have to upgrade your package if you want to add more photos.');
        }

        if(date('Y-m-d') > $order_data->expire_date) {
            return redirect()->back()->with('error', 'Your package is expired!');
        }

        $request->validate([
            'photo' => 'required|image|mimes:jpg,jpeg,png,gif'
        ]);

        $obj = new CompanyPhoto();

        $ext = $request->file('photo')->extension();
        $final_name = 'company_photo_'.time().'.'.$ext;
        $request->file('photo')->move(public_path('uploads/'),$final_name);

        $obj->photo = $final_name;
        $obj->company_id = Auth::guard('company')->user()->id;
        $obj->save();

        return redirect()->back()->with('success', 'Photo is uploaded successfully.');
    }

    public function photos_delete($id)
    {
        $single_data = CompanyPhoto::where('id',$id)->first();
        unlink(public_path('uploads/'.$single_data->photo));
        CompanyPhoto::where('id',$id)->delete();
        return redirect()->back()->with('success', 'Photo is deleted successfully.');
    }


    public function videos()
    {
        // Check if a person buy a package
        $order_data = Order::where('company_id',Auth::guard('company')->user()->id)->where('currently_active',1)->first();

        if(!$order_data) {
            return redirect()->back()->with('error', 'You must have to buy a package first to access this page');
        }

        // Check if a person has access to this page under the current package
        $package_data = Package::where('id',$order_data->package_id)->first();
        if($package_data->total_allowed_videos == 0) {
            return redirect()->back()->with('error', 'Your current package does not allow to access the video section');
        }

        $videos = CompanyVideo::where('company_id',Auth::guard('company')->user()->id)->get();
        return view('company.videos', compact('videos'));
    }

    public function videos_submit(Request $request)
    {
        $order_data = Order::where('company_id',Auth::guard('company')->user()->id)->where('currently_active',1)->first();
        $package_data = Package::where('id',$order_data->package_id)->first();
        $existing_video_number = CompanyVideo::where('company_id',Auth::guard('company')->user()->id)->count();

        if($package_data->total_allowed_videos == $existing_video_number) {
            return redirect()->back()->with('error', 'Maximum number of allowed videos are uploaded. So you have to upgrade your package if you want to add more videos.');
        }

        if(date('Y-m-d') > $order_data->expire_date) {
            return redirect()->back()->with('error', 'Your package is expired!');
        }

        $request->validate([
            'video_id' => 'required'
        ]);

        $obj = new CompanyVideo();
        $obj->company_id = Auth::guard('company')->user()->id;
        $obj->video_id = $request->video_id;
        $obj->save();

        return redirect()->back()->with('success', 'Video is uploaded successfully.');
    }

    public function videos_delete($id)
    {
        CompanyVideo::where('id',$id)->delete();
        return redirect()->back()->with('success', 'Video is deleted successfully.');
    }


    public function make_payment()
    {
        $current_plan = Order::with('rPackage')->where('company_id',Auth::guard('company')->user()->id)->where('currently_active',1)->first();
        $packages = Package::get();
        return view('company.make_payment', compact('current_plan','packages'));
    }

    public function paypal(Request $request)
    {
        $single_package_data = Package::where('id',$request->package_id)->first();

        $provider = new PayPalClient;
        $provider->setApiCredentials(config('paypal'));
        $paypalToken = $provider->getAccessToken();

        $response = $provider->createOrder([
            "intent" => "CAPTURE",
            "application_context" => [
                "return_url" => route('company_paypal_success'),
                "cancel_url" => route('company_paypal_cancel')
            ],
            "purchase_units" => [
                [
                    "amount" => [
                        "currency_code" => "USD",
                        "value" => $single_package_data->package_price
                    ]
                ]
            ]
        ]);

        if(isset($response['id']) && $response['id']!=null) {
            foreach($response['links'] as $link) {
                if($link['rel'] === 'approve') {

                    session()->put('package_id', $single_package_data->id);
                    session()->put('package_price', $single_package_data->package_price);
                    session()->put('package_days', $single_package_data->package_days);

                    return redirect()->away($link['href']);
                }
            }
        } else {
            return redirect()->route('company_paypal_cancel');
        }
    }

    public function paypal_success(Request $request)
    {
        $provider = new PayPalClient;
        $provider->setApiCredentials(config('paypal'));
        $paypalToken = $provider->getAccessToken();
        $response = $provider->capturePaymentOrder($request->token);

        if(isset($response['status']) && $response['status'] == 'COMPLETED') {

            $data['currently_active'] = 0;
            Order::where('company_id', Auth::guard()->user()->id)->update($data);

            $obj = new Order();
            $obj->company_id = Auth::guard()->user()->id;
            $obj->package_id = session()->get('package_id');
            $obj->order_no = time();
            $obj->paid_amount = session()->get('package_price');
            $obj->payment_method = 'PayPal';
            $obj->start_date = date('Y-m-d');
            $days = session()->get('package_days');
            $obj->expire_date = date('Y-m-d', strtotime("+$days days"));
            $obj->currently_active = 1;
            $obj->save();

            session()->forget('package_id');
            session()->forget('package_price');
            session()->forget('package_days');

            return redirect()->route('company_make_payment')->with('success', 'Payment is successful!');
        } else {
            return redirect()->route('company_paypal_cancel');
        }
    }

    public function paypal_cancel()
    {
        return redirect()->route('company_make_payment')->with('error', 'Payment is cancelled!');
    }


    public function stripe(Request $request)
    {
        $single_package_data = Package::where('id',$request->package_id)->first();

        \Stripe\Stripe::setApiKey(config('stripe.stripe_sk'));
        $response = \Stripe\Checkout\Session::create([
            'line_items' => [
                [
                    'price_data' => [
                        'currency' => 'usd',
                        'product_data' => [
                            'name' => $single_package_data->package_name
                        ],
                        'unit_amount' => $single_package_data->package_price * 100,
                    ],
                    'quantity' => 1,
                ],
            ],
            'mode' => 'payment',
            'success_url' => route('company_stripe_success'),
            'cancel_url' => route('company_stripe_cancel'),
        ]);

        session()->put('package_id', $single_package_data->id);
        session()->put('package_price', $single_package_data->package_price);
        session()->put('package_days', $single_package_data->package_days);

        return redirect()->away($response->url);

    }

    public function stripe_success()
    {
        $data['currently_active'] = 0;
        Order::where('company_id', Auth::guard()->user()->id)->update($data);

        $obj = new Order();
        $obj->company_id = Auth::guard()->user()->id;
        $obj->package_id = session()->get('package_id');
        $obj->order_no = time();
        $obj->paid_amount = session()->get('package_price');
        $obj->payment_method = 'Stripe';
        $obj->start_date = date('Y-m-d');
        $days = session()->get('package_days');
        $obj->expire_date = date('Y-m-d', strtotime("+$days days"));
        $obj->currently_active = 1;
        $obj->save();

        session()->forget('package_id');
        session()->forget('package_price');
        session()->forget('package_days');

        return redirect()->route('company_make_payment')->with('success', 'Payment is successful!');
    }

    public function stripe_cancel()
    {
        return redirect()->route('company_make_payment')->with('error', 'Payment is cancelled!');
    }

    public function jobs_create()
    {
        // Check if a person buy a package
        $order_data = Order::where('company_id',Auth::guard('company')->user()->id)->where('currently_active',1)->first();
        if(!$order_data) {
            return redirect()->back()->with('error', 'You must have to buy a package first to access this page');
        }
        if(date('Y-m-d') > $order_data->expire_date) {
            return redirect()->back()->with('error', 'Your package is expired!');
        }

        // Check if a person has access to this page under the current package
        $package_data = Package::where('id',$order_data->package_id)->first();
        if($package_data->total_allowed_jobs == 0) {
            return redirect()->back()->with('error', 'Your current package does not allow to access the job section');
        }

        // How many jobs this company posted
        $total_jobs_posted = Job::where('company_id',Auth::guard('company')->user()->id)->count();
        if($package_data->total_allowed_jobs == $total_jobs_posted) {
            return redirect()->back()->with('error', 'You already have posted the maximum number of allowed jobs');
        }

        $job_categories = JobCategory::orderBy('name','asc')->get();
        $job_locations = JobLocation::orderBy('name','asc')->get();
        $job_types = JobType::orderBy('name','asc')->get();
        $job_experiences = JobExperience::orderBy('id','asc')->get();
        $job_genders = JobGender::orderBy('id','asc')->get();
        $job_salary_ranges = JobSalaryRange::orderBy('id','asc')->get();
        return view('company.jobs_create', compact('job_categories','job_locations','job_types','job_experiences','job_genders','job_salary_ranges'));
    }


    public function jobs_create_submit(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'deadline' => 'required',
            'vacancy' => 'required'
        ]);

        $order_data = Order::where('company_id',Auth::guard('company')->user()->id)->where('currently_active',1)->first();
        $package_data = Package::where('id',$order_data->package_id)->first();

        $total_featured_jobs = Job::where('company_id',Auth::guard('company')->user()->id)->where('is_featured',1)->count();
        if($total_featured_jobs == $package_data->total_allowed_featured_jobs) {
            if($request->is_featured == 1) {
                return redirect()->back()->with('error', 'You already have added the total number of featured jobs');
            }
        }

        $obj = new Job();
        $obj->company_id = Auth::guard('company')->user()->id;
        $obj->title = $request->title;
        $obj->description = $request->description;
        $obj->responsibility = $request->responsibility;
        $obj->skill = $request->skill;
        $obj->education = $request->education;
        $obj->benefit = $request->benefit;
        $obj->deadline = $request->deadline;
        $obj->vacancy = $request->vacancy;
        $obj->job_category_id = $request->job_category_id;
        $obj->job_location_id = $request->job_location_id;
        $obj->job_type_id = $request->job_type_id;
        $obj->job_experience_id = $request->job_experience_id;
        $obj->job_gender_id = $request->job_gender_id;
        $obj->job_salary_range_id = $request->job_salary_range_id;
        $obj->map_code = $request->map_code;
        $obj->is_featured = $request->is_featured;
        $obj->is_urgent = $request->is_urgent;
        $obj->save();

        return redirect()->back()->with('success', 'Job is posted successfully!');
    }


    public function jobs()
    {
        $jobs = Job::with('rJobCategory')->where('company_id',Auth::guard('company')->user()->id)->get();
        return view('company.jobs', compact('jobs'));
    }

    public function jobs_edit($id)
    {
        $jobs_single = Job::where('id',$id)->first();
        $job_categories = JobCategory::orderBy('name','asc')->get();
        $job_locations = JobLocation::orderBy('name','asc')->get();
        $job_types = JobType::orderBy('name','asc')->get();
        $job_experiences = JobExperience::orderBy('id','asc')->get();
        $job_genders = JobGender::orderBy('id','asc')->get();
        $job_salary_ranges = JobSalaryRange::orderBy('id','asc')->get();

        return view('company.jobs_edit', compact('jobs_single','job_categories','job_locations','job_types','job_experiences','job_genders','job_salary_ranges'));
    }

    public function jobs_update(Request $request,$id)
    {
        $obj = Job::where('id',$id)->first();

        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'deadline' => 'required',
            'vacancy' => 'required'
        ]);

        $obj->title = $request->title;
        $obj->description = $request->description;
        $obj->responsibility = $request->responsibility;
        $obj->skill = $request->skill;
        $obj->education = $request->education;
        $obj->benefit = $request->benefit;
        $obj->deadline = $request->deadline;
        $obj->vacancy = $request->vacancy;
        $obj->job_category_id = $request->job_category_id;
        $obj->job_location_id = $request->job_location_id;
        $obj->job_type_id = $request->job_type_id;
        $obj->job_experience_id = $request->job_experience_id;
        $obj->job_gender_id = $request->job_gender_id;
        $obj->job_salary_range_id = $request->job_salary_range_id;
        $obj->map_code = $request->map_code;
        $obj->is_featured = $request->is_featured;
        $obj->is_urgent = $request->is_urgent;
        $obj->update();

        return redirect()->back()->with('success', 'Job is updated successfully!');
    }

    public function jobs_delete($id)
    {
        Job::where('id',$id)->delete();
        CandidateApplication::where('job_id',$id)->delete();
        CandidateBookmark::where('job_id',$id)->delete();

        return redirect()->route('company_jobs')->with('success', 'Job is deleted successfully.');
    }

    public function candidate_applications()
    {
        $jobs = Job::with('rJobCategory','rJobLocation','rJobType','rJobGender','rJobExperience','rJobSalaryRange')->where('company_id',Auth::guard('company')->user()->id)->get();
        return view('company.applications', compact('jobs'));
    }

    public function applicants($id)
    {
        $applicants = CandidateApplication::with('rCandidate')->where('job_id',$id)->get();
        $job_single = Job::where('id',$id)->first();

        return view('company.applicants', compact('applicants','job_single'));
    }

    public function applicant_resume($id)
    {
        $candidate_single = Candidate::where('id',$id)->first();
        $candidate_educations = CandidateEducation::where('candidate_id',$id)->get();
        $candidate_experiences = CandidateExperience::where('candidate_id',$id)->get();
        $candidate_skills = CandidateSkill::where('candidate_id',$id)->get();
        $candidate_awards = CandidateAward::where('candidate_id',$id)->get();
        $candidate_resumes = CandidateResume::where('candidate_id',$id)->get();

        return view('company.applicant_resume', compact('candidate_single','candidate_educations','candidate_experiences','candidate_skills','candidate_awards','candidate_resumes'));
    }

    public function application_status_change(Request $request)
    {
        $obj = CandidateApplication::with('rCandidate')->where('candidate_id',$request->candidate_id)->where('job_id',$request->job_id)->first();
        $obj->status = $request->status;
        $obj->update();

        $candidate_email = $obj->rCandidate->email;

        if($request->status == 'Approved') {
            // Sending email to candidates
            $detail_link = route('candidate_applications');
            $subject = 'Congratulation! Your application is approved';
            $message = 'Please check the detail: <br>';
            $message .= '<a href="'.$detail_link.'">Click here to see the detail</a>';

           // \Mail::to($candidate_email)->send(new Websitemail($subject,$message));
        }

        return redirect()->back()->with('success', 'Status is changed successfully!');
    }

}
