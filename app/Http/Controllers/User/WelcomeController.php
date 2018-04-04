<?php

namespace App\Http\Controllers\User;

use App\Model\user\Category;
use App\Model\user\Post;
use App\Model\user\Tag;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class WelcomeController extends Controller
{
    
	public function index()
	{
		//$posts = Post::where('status', 1)->get();
		$posts = Post::where('status', 1)->orderBy('created_at', 'DESC')->paginate(5);
		//return $posts;
		return view('front.blog.blog', ['posts' => $posts]);
	}

	public function category(Category $category)
	{
		//return $category = Category::where('slug',$slug)->get();
		//return $request->all();
		$posts = $category->posts();
		return view('front.blog.blog', ['posts' => $posts]);
	}

	public function tag(Tag $tag)
	{
		$posts = $tag->posts();
		return view('front.blog.blog', ['posts' => $posts]);
		//return view('front.blog.blog', compact('posts'));
	}



}
