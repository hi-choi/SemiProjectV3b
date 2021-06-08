<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id ="main">
<script src="https://www.google.com/recaptcha/api.js"></script>

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
                        <button type="button" disabled class="btn btn-success">정보입력</button></li>
                    <li class="breadcrumb-item">
                        <button type="button" disabled class="btn btn-light">가입완료</button></li>
                </ul>
              </nav>
<!-- Section Title -->
            <div>
                <h2>회원정보 입력</h2>
                <small class="text-muted">회원정보는 개인정보 취급방침에 따라 안전하게 보호되며, 회원님의 명백한 동의없이 공개 또는 제3자에게 제공되지 않습니다.
                </small>
                <hr>
            </div>

<!-- 회원정보 입력 -->
            <div class="card card-body bg-light">
                <h3>일반회원</h3>

                <form id="joinfrm" name="joinfrm">
                    <!-- contents -->
                    <div class="row">
                        <div class="col-11 offset-1">
                            <!-- 이름 -->
                            <div class="form-group row">
                                <label for="name" class="col-2 col-form-label text-danger text-right">이름</label>
                                <input type="text" name="name" id="name" class="form-control col-2 border-danger" readonly value="${param.name}">
                            </div>
                            <!-- 주민등록번호 -->
                            <div class="form-group row">
                                <label for="jumin1" class="col-2 col-form-label text-danger text-right">주민등록번호</label>
                                <input type="text" name="jumin1" id="jumin1" class="form-control col-2 border-danger" readonly value="${param.jumin1}">
                                <span class="col-form-label">&nbsp;&mdash;&nbsp;</span>
                                <input type="text" name="jumin2" id="jumin2" class="form-control col-2 border-danger" readonly value="${param.jumin2}">
                            </div>
                            <!-- 아이디 -->
                            <div class="form-group row">
                                <label for="userid" class="col-2 col-form-label text-danger text-right">아이디</label>
                                <input type="text" name="userid" id="userid" class="form-control col-3 border-danger">
                                <span class="col-form-label">&nbsp;8~16 자의 영문 소문자, 숫자와 특수기호(-)만 사용할 수 있습니다.</span>

                            </div>
                            <!-- 비밀번호 -->
                            <div class="form-group row">
                                <label for="passwd" class="col-2 col-form-label text-danger text-right">비밀번호</label>
                                <input type="password" name="passwd" id="passwd" class="form-control col-3 border-danger">
                                <span class="col-form-label">&nbsp;8~16 자의 영문 대소문자, 숫자 및 특수문자 사용할 수 있습니다.</span>
                            </div>
                             <!-- 비밀번호 확인 -->
                            <div class="form-group row">
                                <label for="pwdck" class="col-2 col-form-label text-danger text-right">비밀번호확인</label>
                                <input type="password" name="pwdck" id="pwdck" class="form-control col-3 border-danger">
                                <span class="col-form-label">&nbsp;이전 항목에서 입력했던 비밀번호를 한번 더 입력하세요.</span>
                            </div>

                            <!-- 우편번호 -->
                            <div class="form-group row">
                                <label for="zip1" class="col-2 col-form-label text-danger text-right">우편번호</label>
                                <input type="text" name="zip1" id="zip1" class="form-control col-1 border-danger bg-light" readonly>
                                <span class="col-form-label">&nbsp;&mdash;&nbsp;</span>
                                <input type="text" name="zip2" id="zip2" class="form-control col-1 border-danger bg-light" readonly>
                                &nbsp;
                                <button type="button" class="btn btn-dark text-white"  data-toggle="modal"
                     data-target="#zipmodal"><i class="fa fa-question-circle"></i>&nbsp;우편번호 찾기</button>
                            </div>

                            <!-- 주소 -->
                            <div class="form-group row">
                                <label for="addr1" class="col-2 col-form-label text-danger text-right">주소</label>
                                <input type="text" name="addr1" id="addr1" class="form-control col-4 border-danger">
                                <span class="col-form-label">&nbsp;&nbsp;</span>
                                <input type="text" name="addr2" id="addr2" class="form-control col-4 border-danger">
                            </div>

                            <!-- 전자우편 주소 -->
                            <div class="form-group row">
                                <label for="email1" class="col-2 col-form-label text-danger text-right">전자우편주소</label>
                                <input type="email" name="email1" id="email1" class="form-control col-3 border-danger">
                                <div class="input-group-append"><span class="input-group-text border-danger">@</span></div>
                                <input type="email" name="email2" id="email2" class="form-control col-2 border-danger" readonly>
                                &nbsp;
                                <select class="form-control col-2 border-danger" id="email3">
                                <option>-선택하세요-</option>
                                <option>직접 입력하기</option>
                                <option>naver.com</option>
                                <option>gmail.com</option>
                                <option>hotmail.com</option>
                                </select>
                            </div>

                            <!-- 개인연락처 -->
                            <div class="form-group row">
                                <label for="tel1" class="col-2 col-form-label text-danger text-right">개인연락처</label>
                                <select class="form-control col-2 border-danger" name="tel1" id="tel1">
                                    <option>-국번-</option>
                                    <option>010</option>
                                    <option>011</option>
                                </select>
                                <span class="col-form-label">&nbsp;&mdash;&nbsp;</span>
                                <input type="text" name="tel2" id="tel2" class="form-control col-2 border-danger">
                                <span class="col-form-label">&nbsp;&mdash;&nbsp;</span>
                                <input type="text" name="tel3" id="tel3" class="form-control col-2 border-danger">
                            </div>

                            <!-- 자동 가입방지 -->
                            <div class="form-group row">
                                <label class="col-2 col-form-label text-danger text-right">자동가입방지</label>

                                <div class="g-recaptcha" data-sitekey="6LfaIwgbAAAAAEVrujfQ72ArOe5Ru4YCjVW1GBSl"
   								data-callback="onSubmit">
                            </div>
                                <input type="hidden" id="g-recaptcha" name="g-recaptcha" />
                                <div><button type="button" id="capbtn">입력완료</button></div>

                        </div>
                    </div>
                    <!-- 버튼들 -->
                    <div class="row">
                        <div class="col-12 text-center">
                        <hr>
                            <button type="button" id="joinbtn" class="btn btn-primary"> <i class="fa fa-check-circle">&nbsp;입력완료</i></button>
                            <button type="button" id="cancelbtn" class="btn btn-danger"><i class="fa fa-times-circle"></i>&nbsp;취소하기</button>

                        </div>

                    </div>
                    </div>

                    <input type="hidden" name="jumin" id="jumin">
                    <input type="hidden" name="zipcode" id="zipcode">
                    <input type="hidden" name="email" id="email">
                    <input type="hidden" name="phone" id="phone">
                </form>



          </div>

              <!-- 우편번호 폼 모달 -->
              <div id="zipmodal" class="modal" role="dialog" tabindex="-1">
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title">우편번호 찾기</h3>
                            <button type="button" data-dismiss="modal"
                                    class="close">&times;</button>
                        </div>
                        <div class="modal-body">
                            <form name="zipfrm" id="zipfrm">
                                <div class="form-inline row justify-content-center">
                                    <label for="dong" class="col-form-label text-primary text-right">검색하실 주소의<br> 동이름을 입력하세요</label>
                                    &nbsp;&nbsp;
                                    <input type="text" name="dong" id="dong" class="form-control col-4 border-primary">
                                    &nbsp;&nbsp;
                                    <button type="button" class="btn btn-primary" id="findzipbtn">
                                        <i class="fa fa-search"></i>&nbsp;검색하기</button>
                                </div>
                                <div class="form-group row">
                                    <hr class="col-9">
                                    <p class="col-12 text-danger text-center">지역의 읍/면/동의 이름을 공백없이 입력하신 후, [검색하기] 버튼을 클릭하세요</p>
                                    <select class="col-8 offset-2 form-control" size="10" id="addrlist" name="addrlist">
                                        <option>123-456 서울 종로구 창신동</option>
                                        <option>123-456 서울 종로구 창신동</option>
                                        <option>123-456 서울 종로구 창신동</option>
                                        <option>123-456 서울 종로구 창신동</option>
                                        <option>123-456 서울 종로구 창신동</option>
                                        <option>123-456 서울 종로구 창신동</option>
                                        <option>123-456 서울 종로구 창신동</option>
                                        <option>123-456 서울 종로구 창신동</option>
                                        <option>123-456 서울 종로구 창신동</option>
                                        <option>123-456 서울 종로구 창신동</option>
                                        <option>123-456 서울 종로구 창신동</option>
                                        <option>123-456 서울 종로구 창신동</option>
                                    </select>

                                </div>

                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn close" id="sendzip">
                            <i class="fa fa-check-square"></i>&nbsp;선택하고 닫기</button>
                        </div>

                    </div>
                  </div>


              </div>
              </div>