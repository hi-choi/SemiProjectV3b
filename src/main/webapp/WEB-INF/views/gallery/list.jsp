<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="thumbURL" value="http://localhost/thumb/"/>

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
                        <button type="button" id="findbtn" class="btn btn-dark"><i class="fa fa-search"></i>&nbsp;검색</button>
                    </div>
                </div>
                <div class="col-5 text-right">
                <button type="button" class="btn btn-light" id="newgalbtn"><i class="fa fa-plus-circle"></i>&nbsp;새글쓰기</button>
                </div>
            </div><!--검색, 버튼-->


<!-- 이미지 리스트 -->
            <div class="row">
                <div class="col-12">
                    <ul class="list-inline moveright">
                        <c:forEach var="g" items="${gals}">
                            <c:set var="f" value="${fn:split(g.fnames,'/')[0]}" />
                            <c:set var="pos" value="${fn:indexOf(f,'.')}"/>
                            <c:set var="fname" value="${fn:substring(f,0,pos)}"/>
                            <c:set var="fext" value="${fn:substring(f, pos+1, fn:length(f))}"/>

                        <li class="list-inline-item pushdown">
                            <div class="card cdwide">
                                <img class="imgsize card-img-top"
                                     onclick="showimg('${g.gno}');"
                                     src="${thumbURL}small_${g.gno}_${fname}${g.uuid}.${fext}">
<%--                                     src="${thumbURL}_${g.gno}${fn:split(g.fnames,"[/]")[0]}">--%>
                                <div class="card-body">
                                    <h5 class="card-title">${g.title}</h5>
                                    <p class="card-text">${g.userid}
                                        <span class="pushright">${fn:substring(g.regdate,0,10)}</span>
                                    </p>
                                    <p class="card-text">
                                       <i class="fa fa-eye"></i> ${g.views}
                                       <span class="pushright"><i class="fa fa-thumbs-up"></i> ${g.thumbup}</span>
                                    </p>
                                </div><!-- card body-->
                            </div><!-- card-->
                        </li>
                        </c:forEach>
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