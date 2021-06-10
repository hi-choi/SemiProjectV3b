<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id ="main">
<script src="https://www.google.com/recaptcha/api.js"></script>
<!-- Page Title -->
            <div style="margin-top:20px;">
                <i class="fa fa-comments fa-2x">자유 게시판</i>
                <hr>
            </div>

<!-- Section Title-->
            <div class="row">
                <div class="col-5 offset-1">
                    <h3><i class="fa fa-plus-circle"></i>&nbsp;새글 쓰기</h3>
                </div>
                <div class="col-5 text-right">
                <button type="button" class="btn btn-light" id="listbdbtn"><i class="fa fa-list"></i>&nbsp;목록으로</button>
                </div>
            </div>

<!-- Section Body-->

                <div class="card card-body bg-light col-10 offset-1">
                    <form id="boardfrm" class="boardfrm">
                        <!-- 제목 -->
                        <div class="form-group row">
                            <label for="title" class="col-form-label col-2 text-right text-danger">제목</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="text" name="title" id="title" class="form-control border-danger col-9 rounded">
                        </div>
                        <!-- 작성자 -->
                        <div class="form-group row">
                            <label for="userid" class="col-form-label col-2 text-right text-danger" >작성자</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="text" name="userid" id="userid" class="form-control border-danger col-9 rounded"
                             readonly value="${UID}">
                        </div>

                        <!-- 본문내용 -->
                        <div class="form-group row">
                            <label for="contents" class="col-form-label col-2 text-right text-danger">본문내용</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <textarea name="contents" id="contents" class="form-control border-danger col-9 rounded" rows="15"></textarea>
                        </div>

                        <!-- 자동입력방지 -->
                        <div class="form-group row">

                            <label class="col-2 col-form-label text-danger text-right">자동<br>입력방지</label>
                            <div class="g-recaptcha" data-sitekey="6LfaIwgbAAAAAEVrujfQ72ArOe5Ru4YCjVW1GBSl"
                                 data-callback="onSubmit">
                            </div>
                            <input type="hidden" id="g-recaptcha" name="g-recaptcha" />
                        </div>

                        <!-- 버튼들 -->
                        <div class="form-group row">
                            <hr class="col-10">
                            <div class="col-12 text-center">
                                <button type="button" class="btn btn-primary" id="savebdbtn">
                                <i class="fa fa-check-circle"></i>&nbsp;입력완료</button>
                                <button type="reset" class="btn btn-danger">
                                <i class="fa fa-times-circle"></i>&nbsp;다시입력</button>
                            </div>
                        </div>




                    </form>
                </div>



          </div>