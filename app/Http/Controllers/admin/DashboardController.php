<?php

namespace App\Http\Controllers\Admin;
use App\Models\VendorModel;
use App\Models\ProductModel;
use App\Models\OrderModel;
use App\Models\User;
use App\Models\Maintainance;
use App\Models\Contracting;
use App\Models\Service;
use Carbon\Carbon;
use DateTime;
use App\Models\OrderServiceModel;
use App\Models\OrderProductsModel;
use DB;

use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function dashboard()
    {
        $page_heading = "Dashboard";

        return view('admin.blank', compact('page_heading'));
    }

}
