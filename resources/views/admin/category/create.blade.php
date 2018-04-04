@extends('admin.master')
@section('main-content')
<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Text Editors
        <small>Advanced form element</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Forms</a></li>
        <li class="active">Editors</li>
      </ol>
    </section>
<!-- Main content -->
<section class="content">
   <div class="row">
      <div class="col-md-12">
         <!-- general form elements -->
         <div class="box box-primary">
            <div class="box-header with-border">
               <h3 class="box-title">Add Category</h3>
            </div>
            @include('admin.layouts.messages')
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" action="{{ route('category.store') }}" method="POST">
               {{ csrf_field() }}
               <div class="box-body">
                  <div class="row">
                     <div class="col-md-offset-3 col-md-6">
                        <div class="form-group">
                           <label for="name">Category Title</label>
                           <input type="text" class="form-control" id="name" name="name" placeholder="Category Title">
                        </div>
                        <div class="form-group">
                           <label for="slug">Category Slug</label>
                           <input type="text" class="form-control" id="slug" name="slug" placeholder="Slug">
                        </div>
                        <div class="form-group">
                           <button type="submit" class="btn btn-primary">Submit</button>
                           <a class="btn btn-warning" href="{{ route('category.index') }}">Back</a>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- /.box-body -->
            </form>
         </div>
      </div>
      <!-- /.col-->
   </div>
   <!-- ./row -->
</section>
<!-- /.content -->
@endsection