<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%--
    데이터가 너무 많아서 한 페이지에 모든것을 출력하기 어려운 경우
    페이징을 이용해서 전체데이터를 일정한 범위로 나누고
    특정 범위의 데이터만 출력하는 것이 효율적임

    총 데이터수 : 105, 한페이지당 출력할 게시글 수 : 25
    총 페이지수 : 5
--%>
<div id ="main">

<!-- Page Title -->
        <div style="margin-top:20px;">
            <i class="fa fa-comments fa-2x">자유 게시판</i>
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
            <button type="button" class="btn btn-light" id="newbdbtn"><i class="fa fa-plus-circle"></i>&nbsp;새글쓰기</button>
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
                <tr>
                    <td>1</td>
                    <td><a href="view.html">As for why you should value time...</a></td>
                    <td>hi-choi</td>
                    <td>2012.07.15</td>
                    <td>10</td>
                    <td>128</td>
                </tr>
                    <c:forEach var="bd" items="${bds}">
                    <tr>
                        <td>${bd.bdno}</td>
                        <td><a href="view.html">${bd.title}</a></td>
                        <td>${bd.userid}</td>
                        <td>${bd.regdate}</td>
                        <td>${bd.thumbup}</td>
                        <td>${bd.contents}</td>
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