<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BookController extends Controller
{
  public function index()
  {
    $rooms = \App\Room::where('status', 'ACTIVE')->paginate(9);
    $homeBanners = \App\Banner::first();
    $pageMeta = [
      // 'title' => $about->title,
      // 'meta_description' => $about->meta_description,
      // 'image' => $about->images
    ];

    return view('screens.book', compact('homeBanners', 'rooms'));
  }


  public function store(Request $request)
  {
    $quick = $request->input('quick', false);

    if (!$quick) {
      $validated = $request->validate([
        'name' => 'required|max:120',
        'phone' => 'required|numeric|min:10'
      ]);
    }

    try {
      $alert = [
        "type" => "success",
        "title" => __("Thành công"),
        "body" => __("Cảm ơn bạn đã đặt phòng, chúng tôi sẽ sớm phản hồi cho bạn!")
      ];

      $feedback = new \App\Book();
      $feedback->name = $request->name;
      $feedback->phone = $request->phone;
      $feedback->fromDate = $request->fromDate;
      $feedback->toDate = $request->toDate;
      $feedback->numbers = $request->numbers;
      $feedback->adult = $request->adult;
      $feedback->children = $request->children;
      $feedback->price = $request->price;
      $feedback->status = $request->status;
      $feedback->room = $request->room;
      //   dd($feedback);
      $feedback->save();
    } catch (\Exception $e) {
      $alert = [
        "type" => "error",
        "title" => __("Không thành công"),
        "body" => __("Có lỗi đã xảy ra, vui lòng thử lại!")
      ];
    }

    return redirect()->back()->with('alert', $alert);
  }
}
