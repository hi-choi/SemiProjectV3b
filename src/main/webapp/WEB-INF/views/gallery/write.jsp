<%@ page pageEncoding="UTF-8"%>
<div id ="main">
<script src="https://www.google.com/recaptcha/api.js"></script>
<!-- Page Title -->
            <div style="margin-top:20px;">
                <i class="fa fa-image fa-2x">갤러리</i>
                <hr>
            </div>

<!-- Section Title-->
            <div class="row">
                <div class="col-5 offset-1">
                    <h3><i class="fa fa-plus-circle"></i>&nbsp;새글 쓰기</h3>
                </div>
                <div class="col-5 text-right">
                <button type="button" class="btn btn-light"><i class="fa fa-list"></i>&nbsp;목록으로</button>
                </div>
            </div>

<!-- Section Body-->

                <div class="card card-body bg-light col-10 offset-1">
                    <form id="galfrm" class="galfrm">
                        <!-- 제목 -->
                        <div class="form-group row">
                            <label for="title" class="col-form-label col-2 text-right text-danger">제목</label>
                            <input type="text" name="title" id="title" class="form-control border-danger col-9 rounded">
                        </div>
                        <!-- 작성자 -->
                        <div class="form-group row">
                            <label for="userid" class="col-form-label col-2 text-right text-danger" readonly>작성자</label>
                            <input type="text" name="userid" id="userid" class="form-control border-danger col-9 rounded" readonly value="${UID}">
                        </div>

                        <!-- 본문내용 -->
                        <div class="form-group row">
                            <label for="contents" class="col-form-label col-2 text-right text-danger">본문내용</label>
                            <textarea name="contents" id="contents" class="form-control border-danger col-9 rounded" rows="15"></textarea>
                        </div>

                        <div class="form-group row">
                            <label for="file1" class="col-form-label col-2 text-right text-danger">파일첨부</label>
                            <div class="custom-file col-9">
                                <input type="file" name="img" id="file1" class="custom-file-input">
                                <label class="custom-file-label">
                                    첨부할 파일을 선택하세요.
                                </label>
                            </div>
                             <div class="custom-file col-9 offset-2">
                                <input type="file" name="img" id="file2" class="custom-file-input">
                                <label class="custom-file-label">
                                    첨부할 파일을 선택하세요.
                                </label>
                            </div>
                             <div class="custom-file col-9 offset-2">
                                <input type="file" name="img" id="file3" class="custom-file-input">
                                <label class="custom-file-label">
                                    첨부할 파일을 선택하세요.
                                </label>
                            </div>
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
                                <button type="button" class="btn btn-primary" id="newgal">
                                <i class="fa fa-check-circle"></i>&nbsp;입력완료</button>
                                <button type="reset" class="btn btn-danger">
                                <i class="fa fa-times-circle"></i>&nbsp;다시입력</button>
                            </div>
                        </div>




                    </form>
                </div>



          </div>