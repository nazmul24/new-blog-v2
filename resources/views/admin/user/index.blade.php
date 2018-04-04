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
      <h3 class="box-title">Users</h3>
      <a class="col-lg-offset-5 btn btn-success" href="{{ route('user.create') }}">Add New</a>
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
                <th>User Name</th>
                <th>Assigned Roles</th>
                <th>Status</th>
                <th>Edit</th>
                <th>Delete</th>
              </tr>
            </thead>
            <tbody>
              @foreach($users as $user)
              <tr>
                <td>{{ $loop->index + 1 }}</td>
                <td>{{ $user->name }}</td>
                <td>
                  @foreach ($user->roles as $role)
                    {{ $role->name }},
                  @endforeach
                </td>
                <td>{{ $user->status? 'Active' : 'Not Active' }}</td>
                <td><a href="{{ route('user.edit',$user->id) }}"><span class="glyphicon glyphicon-edit"></span></a></td>
                <td>
                  <form id="delete-form-{{ $user->id }}" action="{{ route('user.destroy',$user->id) }}" method="POST" style="display: none;">
                    {{ csrf_field() }}
                    {{ method_field('DELETE') }}
                  </form>
                  <a href="" onclick="if(confirm('Are you sure, You Want to Delete This?'))
                    {
                    event.preventDefault();
                    document.getElementById('delete-form-{{ $user->id }}').submit();
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
              <th>User Name</th>
              <th>Assigned Roles</th>
              <th>Status</th>
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