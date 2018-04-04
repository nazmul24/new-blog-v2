@extends('admin.master')
@section('main-content')
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
  CleanBlog Page
  <small>Lets create something awesome</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="#">Examples</a></li>
    <li class="active">Blank page</li>
  </ol>
</section>
<!-- Main content -->
<section class="content">
  <!-- Default box -->
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Permissions</h3>
      <a class="col-lg-offset-5 btn btn-success" href="{{ route('permission.create') }}">Add New</a>
      <div class="box-tools pull-right">
        <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
        title="Collapse">
        <i class="fa fa-minus"></i></button>
        <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
        <i class="fa fa-times"></i></button>
      </div>
    </div>
    <div class="box-body">
      <div class="box">
        <div class="box-header">
          <h3 class="box-title">Data Table With Full Features</h3>
          @include('admin.layouts.messages')
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>S.No</th>
                <th>Permission Name</th>
                <th>Permission For</th>
                <th>Edit</th>
                <th>Delete</th>
              </tr>
            </thead>
            <tbody>
              @foreach($permissions as $permission)
              <tr>
                <td>{{ $loop->index + 1 }}</td>
                <td>{{ $permission->name }}</td>
                <td>{{ $permission->for }}</td>
                <td><a href="{{ route('permission.edit',$permission->id) }}"><span class="glyphicon glyphicon-edit"></span></a></td>
                <td>
                  <form id="delete-form-{{ $permission->id }}" action="{{ route('permission.destroy',$permission->id) }}" method="POST" style="display: none;">
                    {{ csrf_field() }}
                    {{ method_field('DELETE') }}
                  </form>
                  <a href="" onclick="if(confirm('Are you sure, You Want to Delete This?'))
                    {
                    event.preventDefault();
                    document.getElementById('delete-form-{{ $permission->id }}').submit();
                    }else{
                    event.preventDefault();
                    }"><span class="glyphicon glyphicon-trash"></span>
                  </a>
                </td>
              </tr>
              @endforeach
            </tbody>
            <tfoot>
            <tr>
              <th>S.No</th>
              <th>Permission Name</th>
              <th>Permission For</th>
              <th>Edit</th>
              <th>Delete</th>
            </tr>
            </tfoot>
          </table>
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->
    </div>
    <!-- /.box-body -->
    <!-- <div class="box-footer">
      Footer
    </div> -->
    <!-- /.box-footer-->
  </div>
  <!-- /.box -->
</section>
<!-- /.content -->
@endsection