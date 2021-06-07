<%@ page pageEncoding="UTF-8"%>
<div id ="main">

<!-- Page Title -->
            <div style="margin-top:20px;">
                <i class="fa fa-users fa-2x">회원가입</i>
                <hr>
            </div>

<!-- Breadcrumb -->
            <nav>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item active">
                        <button type="button" disabled class="btn btn-success">이용약관</button></li>
                    <li class="breadcrumb-item active">
                        <button type="button" disabled class="btn btn-success">가입인증</button></li>
                    <li class="breadcrumb-item">
                        <button type="button" disabled class="btn btn-light">정보입력</button></li>
                    <li class="breadcrumb-item">
                        <button type="button" disabled class="btn btn-light">가입완료</button></li>
                </ul>
            </nav>

<!-- Section Title -->
            <div>
                <h2>가입인증</h2>
                <small class="text-muted">회원가입으로 가입하는 방법에는 2가지 방법이 있습니다. 아래에서 원하는 방법을 선택해주세요.<br> 입력하신 정보는 가입완료 전까지 본 사이트에 저장되지 않습니다.
                </small>
                <hr>
            </div>

<!-- 회원가입 -->
              <div class="card card-body bg-light">
                <h3>회원가입</h3>
                <form id="checkfrm1" name="checkfrm1">
                    <!-- contents -->
                    <div class="row">
                        <!-- contents 좌측 영역 -->
                        <div class="col-5 offset-1">
                            <div class="form-group row">
                                <label class="col-4 col-form-label text-warning text-right" for="name">이름</label>
                                <input type="text" name="name" id="name" class="form-control col-6 border-warning">
                            </div>
                            <div class="form-group row">
                                <label class="col-4 col-form-label text-warning text-right" for="byear">생년월일</label>
                                <select id="byear" name="byear" class="form-control col-3 border-warning">
                                    <option>년도</option>
                                    <option>2021</option>
                                    <option>2020</option>
                                    <option>2019</option>
                                </select>&nbsp;
                                <select id="bmonth" name="bmonth" class="form-control col-2 border-warning">
                                    <option>월</option>
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                </select> &nbsp;
                                <select id="bday" name="bday" class="form-control col-2 border-warning">
                                    <option>일</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                </select>
                            </div>
                            <div class="form-group row">
                                <label class="col-4 text-warning text-right" for="gender">성별</label>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="gmale" name="gender" value="m" class=" custom-control-input">
                                    <label for="gmale" class="custom-control-label text-warning">남자</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="gfmale" name="gender" value="w" class=" custom-control-input">
                                    <label for="gfmale" class="custom-control-label text-warning">여자</label>
                                </div>
                            </div>
                        </div>
                        <!-- contents 우측 영역 -->
                        <div class="col-5">
                            <ul style="color:blue; font-weight:bold">
                                <li>주민등록번호 입력 없이 전화번호로 회원가입이 가능합니다. </li>
                                <li>이름, 생년월일과 성별은 <span class="text-danger">추후 변경할 수 없습니다.</span></li>
                                <li> <span class="text-danger">휴대폰 가입인증</span>을 하셔야 공개 게시판 이용이 가능합니다.</li>
                            </ul>
                        </div><!-- 실명확인 입력폼 -->
                    </div>
                    <!-- 버튼들 -->
                    <div class="row">
                        <div class="col text-center">
                        <hr>
                            <button type="button" id="chk1btn" class="btn btn-primary"> <i class="fa fa-check"></i>확인하기</button>
                            <button type="button" id="cancel1btn" class="btn btn-danger"><i class="fa fa-times"></i>취소하기</button>
                        </div>
                    </div>
                </form>
              </div>

<!-- 실명 회원가입 -->
              <br>
              <div class="card card-body bg-light">
                <h3>실명확인 회원가입</h3>
                <form id="checkfrm2" name="checkfrm2">
                    <!-- contents -->
                    <div class="row">
                        <!-- contents 좌측 영역 -->
                        <div class="col-5 offset-1">
                            <div class="form-group row">
                                <label for="name2" class="col-4 col-form-label text-warning text-right">이름</label>
                                <input type="text" name="name" id="name2" class="form-control col-6 border-warning">
                            </div>

                            <div class="form-group row">
                                <label for="jumin1" class="col-4 col-form-label text-warning text-right">주민번호</label>
                                <input type="text" name="jumin1" id="jumin1" class="form-control col-3 border-warning">
                                <span class="col-form-label">&nbsp;&mdash;&nbsp;</span>
                                <input type="text" name="jumin2" id="jumin2" class="form-control col-3 border-warning">
                            </div>

                            <div class="form-group row">
                                <label class="col-4"></label>
                                <div class="custom-control custom-checkbo">
                                    <input type="checkbox" id="chkjumin" name="chkjumin" class="custom-control-input" value="y">
                                    <label for="chkjumin" class="custom-control-label text-warning">주민등록번호 처리에 동의합니다.</label>
                                </div>

                            </div>

                        </div>
                        <!-- contents 우측 영역 -->
                        <div class="col-5">
                            <ul style="color:blue; font-weight:bold">
                                <li>실명확인 회원가입시 공개 게시판 이용이 가능합니다.</li>
                                <li>타인의 주민등록번호를 임의로 사용하면 <span style="color:red">'주민등록법'에 의해 3년 이하의 징역 또는 1천만원 이하의 벌금</span>이 부과될 수 있습니다.</li>
                                <li>입력하신 주민등록번호는 <span style="color:red">별도 저장되지 않으며, 신용평가기관을 통한 실명확인용</span>으로만 이용됩니다.</li>
                                <li>개인정보보호법에 따라 <span style="color:red">이용 동의</span>를 받습니다.</li>
                            </ul>
                        </div>

                    </div>

                    <!-- 버튼들 -->
                    <div class="row">
                        <div class="col text-center">
                        <hr>
                            <button type="button" id="chk1btn" class="btn btn-primary"> <i class="fa fa-check">확인하기</i></button>
                            <button type="button" id="cancel1btn" class="btn btn-danger"><i class="fa fa-times"></i>취소하기</button>

                        </div>

                    </div>
                </form>

              </div>
          </div>