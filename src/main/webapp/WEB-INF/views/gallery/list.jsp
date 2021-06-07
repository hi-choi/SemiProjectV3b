<%@ page pageEncoding="UTF-8"%>
<div id ="main">

<!-- Page Title -->
            <div style="margin-top:20px;">

                <i class="fa fa-image fa-2x">갤러리</i>
                <hr>
            </div>


<!-- 상단 버튼-->
            <div class="row">
                <div class="col-5 offset-1">
                    <div class="form-group row">
                        <select class="form-control col-3 border-dark" name="findtype" id="findtype">
                            <option value="title">제목</option>
                            <option value="titcont">제목+내용</option>
                            <option value="userid">작성자</option>
                            <option value="contents">내용</option>
                        </select>&nbsp;
                        <input type="text" name="findkey" id="findkey" class="form-control col-4 border-dark">&nbsp;
                        <button type="button" id="findbtn" class="btn btn-dark"><i class="fa fa-search"></i>&nbsp;검색하기</button>
                    </div>
                </div>
                <div class="col-5 text-right">
                <button type="button" class="btn btn-light" id="addimgbtn"><i class="fa fa-plus-circle"></i>&nbsp;사진올리기</button>
                </div>
            </div>


<!-- 이미지 리스트 -->
            <div class="row">
                <div class="col-12">
                <!--<div class="col-10 offset-1 d-flex justify-content-center">-->
                    <ul class="list-inline moveright">
                        <li class="list-inline-item pushdown">
                            <div class="card cdwide" id="glist_img">
                                <img class="imgsize card-img-top"
                                     onclick="showimg('123');">
                                <div class="card-body">
                                    <h5 class="card-title">My Pretty Cat...</h5>
                                    <p class="card-text">hi-choi
                                        <span class="pushright">2021.05.19</span>
                                    </p>
                                    <p class="card-text">
                                       <i class="fa fa-eye"></i> 148
                                       <span class="pushright"><i class="fa fa-thumbs-up"></i> 39</span>
                                    </p>
                                </div><!-- card body-->
                            </div><!-- card-->
                        </li>
                         <li class="list-inline-item">
                            <div class="card cdwide" id="glist_img">
                                <img class="imgsize card-img-top" >
                                <div class="card-body">
                                    <h5 class="card-title">My Pretty Cat...</h5>
                                    <p class="card-text">hi-choi
                                        <span class="pushright">2021.05.19</span>
                                    </p>
                                    <p class="card-text">
                                       <i class="fa fa-eye"></i> 148
                                       <span class="pushright"><i class="fa fa-thumbs-up"></i> 39</span>
                                    </p>
                                </div><!-- card body-->
                            </div><!-- card-->
                        </li>
                         <li class="list-inline-item">
                            <div class="card cdwide" id="glist_img">
                                <img class="imgsize card-img-top" >
                                <div class="card-body">
                                    <h5 class="card-title">My Pretty Cat...</h5>
                                    <p class="card-text">hi-choi
                                        <span class="pushright">2021.05.19</span>
                                    </p>
                                    <p class="card-text">
                                       <i class="fa fa-eye"></i> 148
                                       <span class="pushright"><i class="fa fa-thumbs-up"></i> 39</span>
                                    </p>
                                </div><!-- card body-->
                            </div><!-- card-->
                        </li>
                         <li class="list-inline-item">
                            <div class="card cdwide" id="glist_img">
                                <img class="imgsize card-img-top" >
                                <div class="card-body">
                                    <h5 class="card-title">My Pretty Cat...</h5>
                                    <p class="card-text">hi-choi
                                        <span class="pushright">2021.05.19</span>
                                    </p>
                                    <p class="card-text">
                                       <i class="fa fa-eye"></i> 148
                                       <span class="pushright"><i class="fa fa-thumbs-up"></i> 39</span>
                                    </p>
                                </div><!-- card body-->
                            </div><!-- card-->
                        </li>
                         <li class="list-inline-item">
                            <div class="card cdwide" id="glist_img">
                                <img class="imgsize card-img-top" >
                                <div class="card-body">
                                    <h5 class="card-title">My Pretty Cat...</h5>
                                    <p class="card-text">hi-choi
                                        <span class="pushright">2021.05.19</span>
                                    </p>
                                    <p class="card-text">
                                       <i class="fa fa-eye"></i> 148
                                       <span class="pushright"><i class="fa fa-thumbs-up"></i> 39</span>
                                    </p>
                                </div><!-- card body-->
                            </div><!-- card-->
                        </li>
                         <li class="list-inline-item">
                            <div class="card cdwide" id="glist_img">
                                <img class="imgsize card-img-top" >
                                <div class="card-body">
                                    <h5 class="card-title">My Pretty Cat...</h5>
                                    <p class="card-text">hi-choi
                                        <span class="pushright">2021.05.19</span>
                                    </p>
                                    <p class="card-text">
                                       <i class="fa fa-eye"></i> 148
                                       <span class="pushright"><i class="fa fa-thumbs-up"></i> 39</span>
                                    </p>
                                </div><!-- card body-->
                            </div><!-- card-->
                        </li>
                         <li class="list-inline-item">
                            <div class="card cdwide" id="glist_img">
                                <img class="imgsize card-img-top" >
                                <div class="card-body">
                                    <h5 class="card-title">My Pretty Cat...</h5>
                                    <p class="card-text">hi-choi
                                        <span class="pushright">2021.05.19</span>
                                    </p>
                                    <p class="card-text">
                                       <i class="fa fa-eye"></i> 148
                                       <span class="pushright"><i class="fa fa-thumbs-up"></i> 39</span>
                                    </p>
                                </div><!-- card body-->
                            </div><!-- card-->
                        </li>
                         <li class="list-inline-item">
                            <div class="card cdwide" id="glist_img">
                                <img class="imgsize card-img-top" >
                                <div class="card-body">
                                    <h5 class="card-title">My Pretty Cat...</h5>
                                    <p class="card-text">hi-choi
                                        <span class="pushright">2021.05.19</span>
                                    </p>
                                    <p class="card-text">
                                       <i class="fa fa-eye"></i> 148
                                       <span class="pushright"><i class="fa fa-thumbs-up"></i> 39</span>
                                    </p>
                                </div><!-- card body-->
                            </div><!-- card-->
                        </li>
                    </ul>
    <!--


-->
            </div>
            </div>

<!-- Page Navigation-->
            <div class="row">
                <div class="col-12">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled"><a href="#" class="page-link">이전</a></li>
                    <li class="page-item active "><a href="#" class="page-link bg-dark border-dark">1</a></li>
                    <li class="page-item"><a href="#" class="page-link text-dark">2</a></li>
                    <li class="page-item"><a href="#" class="page-link text-dark">3</a></li>
                    <li class="page-item"><a href="#" class="page-link text-dark">4</a></li>
                    <li class="page-item"><a href="#" class="page-link text-dark">5</a></li>
                    <li class="page-item"><a href="#" class="page-link text-dark">6</a></li>
                    <li class="page-item"><a href="#" class="page-link text-dark">7</a></li>
                    <li class="page-item"><a href="#" class="page-link text-dark">8</a></li>
                    <li class="page-item"><a href="#" class="page-link text-dark">9</a></li>
                    <li class="page-item"><a href="#" class="page-link text-dark">10</a></li>
                    <li class="page-item"><a href="#" class="page-link text-dark">다음</a></li>
                    </ul>
                </div>
            </div>


          </div>