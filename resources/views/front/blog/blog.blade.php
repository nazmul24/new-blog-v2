@extends('front.master')

@section('bg-img',asset('front/img/home-bg.jpg'))
@section('title','Clean Blog')
@section('sub-heading','A Blog Theme by Start Bootstrap')

@section('main-content')
    <!-- Main Content -->
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
            @foreach ($posts as $post)
              <div class="post-preview">
                  <a href="{{ url('/post',$post->slug) }}" target="_blank">
                  <h2 class="post-title">
                    {{ $post->title }}
                  </h2>
                  <h3 class="post-subtitle">
                    {{ $post->subtitle }}
                  </h3>
                </a>
                <p class="post-meta">Posted by
                  <a href="#">Start Bootstrap</a>
                  Created at {{ $post->created_at->diffForHumans() }}</p>
              </div>
              <hr>
            @endforeach
          <!-- Pager -->
          <div class="clearfix">
            {{ $posts->links('pagination::bootstrap-4') }}
          <!-- <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a> -->
          </div>
        </div>
      </div>
    </div>

    <hr>
@endsection