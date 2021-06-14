<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div id ="main">
<!-- Page Title -->
            <div style="margin-top:20px;">
                <i class="fa fa-save fa-2x">&nbsp;자료실</i>
                <hr>
            </div>


<!-- Section Title-->
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
                <button type="button" class="btn btn-light" id="newpdsbtn"><i class="fa fa-plus-circle"></i>&nbsp;새글쓰기</button>
                </div>
            </div>


<!-- Section Body-->
            <div class="row">
                <div class="col-10 offset-1">
                <table class="table table-striped text-center table-hover">
                    <thead style="background: #dff0d8">
                        <tr>
                            <th style="width:8%">번호</th>
                            <th style="">제목</th>
                            <th style="width:12%">작성자</th>
                            <th style="width:10%">작성일</th>
                            <th style="width:8%">추천</th>
                            <th style="width:8%">조회</th>
                        </tr>
                        <tr class="text-danger">
                            <th>공지</th>
                            <th><span class="badge badge-danger">Hot</span>
                                How to use the bulletin board</th>
                            <th>운영자</th>
                            <th>2021.05.20</th>
                            <th>10</th>
                            <th>520</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="p" items="${pds}">
                        <tr>
                            <td>${p.pno}</td>
                            <td><a href="/pds/view?pno=${p.pno}">${p.title}</a></td>
                            <td>${p.userid}</td>
                            <td>${fn:substring(p.regdate,0,10)}</td>
                            <td>${p.thumbup}</td>
                            <td>${p.views}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
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