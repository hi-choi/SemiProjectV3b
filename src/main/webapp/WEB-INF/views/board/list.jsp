<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%--
    데이터가 너무 많아서 한 페이지에 모든것을 출력하기 어려운 경우
    페이징을 이용해서 전체데이터를 일정한 범위로 나누고
    특정 범위의 데이터만 출력하는 것이 효율적임

    총 데이터수 : 105, 한페이지당 출력할 게시글 수 : 25
    총 페이지수 : 5
--%>

<%--
    게시판 네비게이션
    현재 페이지에 따라 보여줄 페이지 블럭을 결정
    ex) 총페이지수가 27일때
    cp = 1 : 1 2 3 4 5 6 7 8 9 10 다음
    cp = 3 : 1 2 3 4 5 6 7 8 9 10 다음
    cp = 9 : 1 2 3 4 5 6 7 8 9 10 다음
    cp = 11 : 11 12 13 14 15 16 17 18 19 20 다음
    cp = 17 : 11 12 13 14 15 16 17 18 19 20 다음
    cp = 23 : 21 22 23 24 25 26 27
    따라서, cp에 따라 페이지 블럭의 시작값을 계산
    perpage = 30
    startpage = ((cp - 1)/ 10 ) * 10 + 1
    endpage = startpage + 9

--%>
<!-- 페이징 관련 변수 받아오기 -->
<fmt:parseNumber var = "cp" value="${param.cp}"/>
<fmt:parseNumber var = "sp" value="${(cp-1)/10}" integerOnly="true"/>
<fmt:parseNumber var = "sp" value="${sp*10+1}"/>
<fmt:parseNumber var = "ep" value="${sp+9}"/>

<%-- 총게시물 수를 페이지당 게시물수로 나눔 : 총 페이지수 --%>
<fmt:parseNumber var = "tp" value="${bdcnt/30}" integerOnly="true"/>
<c:if test="${(bdcnt % 30)>0}">
    <fmt:parseNumber var = "tp" value="${tp+1}"/>
</c:if>

<%-- 글번호 --%>
<fmt:parseNumber var="snum" value="${bdcnt- (cp -1) * 30}" integerOnly="true"/>

<%-- 페이지 링크 --%>
<c:set var="pglink" value="/board/list?cp="/>

<div id ="main">
<!-- Page Title -->
        <div style="margin-top:20px;">
            <i class="fa fa-comments fa-2x">자유 게시판 ${tp} / ${bdcnt}</i>
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
                        <td>${snum}</td>
                        <td><a href="/board/view?bdno=${bd.bdno}">${bd.title}</a></td>
                        <td>${bd.userid}</td>
                        <td>${fn:substring(bd.regdate,0,10)}</td>
                        <td>${bd.thumbup}</td>
                        <td>${bd.views}</td>
                        <c:set var="snum" value="${snum-1}"/>
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

                <%-- '이전'버튼이 작동되어야 할때는 sp가 11보다 클때 --%>
                    <li class="page-item <c:if test="${sp lt 11}">disabled </c:if>"><a href="${pglink}${sp-10}" class="page-link text-dark border-dark">이전</a></li>

                    <%-- 반복문을 이용해서 페이지 링크 생성 --%>
                <c:forEach var="i" begin="${sp}" end="${ep}" step="1">
                    <%-- 표시하는 페이지i가 총페이지수보다 작거나 같을 동안만 출력 --%>
                    <c:if test="${i le tp}">
                    <c:if test="${i eq cp}" >
                        <li class="page-item active"><a href="${pglink}${i}" class="page-link bg-dark border-dark">${i}</a></li>
                    </c:if>
                    <c:if test="${i ne cp}">
                        <li class="page-item"><a href="${pglink}${i}" class="page-link text-dark border-dark">${i}</a></li>
                    </c:if>
                    </c:if>
                </c:forEach>
                    <%-- '다음'버튼이 작동되어야 할때는 ??? --%>
                <li class="page-item <c:if test="${ep gt tp}">disabled</c:if>"><a href="${pglink}${sp+10}" class="page-link text-dark border-dark">다음</a></li>

            </ul>
            </div>
        </div>

      </div>