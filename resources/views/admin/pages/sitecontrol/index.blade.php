@extends('admin.layout.main')
@include('admin.layout.sidebar')


@section('content')

    <div class="Container add-blog">

        <form method="post" action="{{ route('admin.setting.site-control.post') }}" enctype="multipart/form-data">
            @csrf
            <h3>site control </h3>
            <div class="row">




                <div class="col-md-6">
                    <div class="col-md-3">
                        <label class="form-label mt-2">site name </label>
                    </div>
                    <div class="col-md-12">
                        <div class="d-flex">
                            <a href="#"><i class="icon icon-question ml-4 mt-3 d-block"></i></a>
                            <input type="text"  name="site_name"  class="form-control" value="{{$site?$site->site_name:''}}">

                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="col-md-3">
                        <label class="form-label mt-2">phone </label>
                    </div>
                    <div class="col-md-12">
                        <div class="d-flex">
                            <a href="#"><i class="icon icon-question ml-4 mt-3 d-block"></i></a>
                            <input type="text"  name="phone"  class="form-control" value="{{$site?$site->phone:''}}">

                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="col-md-3">
                        <label class="form-label mt-2">mobile </label>
                    </div>
                    <div class="col-md-12">
                        <div class="d-flex">
                            <a href="#"><i class="icon icon-question ml-4 mt-3 d-block"></i></a>
                            <input type="text"  name="mobile"  class="form-control" value="{{$site?$site->mobile:''}}">

                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="col-md-3">
                        <label class="form-label mt-2">address </label>
                    </div>
                    <div class="col-md-12">
                        <div class="d-flex">
                            <a href="#"><i class="icon icon-question ml-4 mt-3 d-block"></i></a>
                            <input type="text"  name="address"  class="form-control" value="{{$site?$site->address:''}}">

                        </div>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="col-md-3">
                        <label class="form-label mt-2">email </label>
                    </div>
                    <div class="col-md-12">
                        <div class="d-flex">
                            <a href="#"><i class="icon icon-question ml-4 mt-3 d-block"></i></a>
                            <input type="text"  name="email"  class="form-control" value="{{$site?$site->email:''}}">

                        </div>
                    </div>
                </div>

                <button class="btn btn-success mt-4  ">save</button>
            </div>
        </form>

    </div>
    <hr>










    {{--    <div class="modal fade" id="confirm" tabindex="-2" aria-labelledby="exampleModalLabel2" aria-hidden="true">--}}
    {{--        <div class="modal-dialog">--}}
    {{--            <div class="modal-content">--}}
    {{--                <div class="modal-header">--}}
    {{--                    <p>?????????? ??????????</p>--}}
    {{--                </div>--}}
    {{--                <div class="modal-body">--}}
    {{--                    <h3>???? ?????? ?????????? ???? ?????? ??????????????</h3>--}}
    {{--                </div>--}}
    {{--                <div class="modal-footer">--}}
    {{--                    <button  class="btn btn-danger "  id="delete"  onclick="submit_form()" data-bs-dismiss="modal" >     ?????????? ??????????  </button>--}}
    {{--                    <button   class="btn btn-info " id="cancel" data-bs-dismiss="modal" >   ??????????  </button>--}}
    {{--                </div>--}}
    {{--            </div>--}}
    {{--        </div>--}}
    {{--    </div>--}}



@endsection


