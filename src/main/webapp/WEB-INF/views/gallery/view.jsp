<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="fnames" value="${fn:split(g.fnames,'/')}"/>
<c:set var="fsizes" value="${fn:split(g.fsizes,'/')}"/>
<c:set var="baseURL" value="http://localhost/cdn/"/>

<div id ="main">
<!-- Page Title -->
            <div style="margin-top:20px;">
                <i class="fa fa-image fa-2x">갤러리</i>
                <hr>
            </div>
            <!--본문글-->
            <div>
                <div class="row">
                <!-- 본문글 상단 버튼 -->
                    <div class="col-5 offset-1">
                        <button type="button" class="btn btn-light"><i class="fa fa-chevron-left"></i>&nbsp;이전 게시물</button>
                        <button type="button" class="btn btn-light"><i class="fa fa-chevron-right"></i>&nbsp;다음 게시물</button>
                    </div>
                    <div class="col-5 text-right">
                        <button type="button" class="btn btn-light"><i class="fa fa-plus-circle"></i>&nbsp;새글 쓰기</button>
                    </div>
                </div>

                <!-- 본문글 내용-->
                <div class="row">
                    <table class="table col-10 offset-1">
                        <tr class="tbbg1 text-center">
                            <th colspan="2" >
                                <h2>${g.title}</h2>
                            </th>
                        </tr>
                        <tr class="tbbg2">
                            <td style="width:50%">${g.userid}</td>
                            <td class="text-right">${g.regdate} / ${g.thumbup} / ${g.views}</td>
                        </tr>
                        <tr class="tbbg3"><td colspan="2">
                                <div>
                                    <c:forEach var="f" items="${fnames}">
                                     <c:set var="pos" value="${fn:indexOf(f,'.')}"/>
                                     <c:set var="fname" value="${fn:substring(f,0,pos)}"/>
                                     <c:set var="fext" value="${fn:substring(f, pos+1, fn:length(f))}"/>
                                    <img src="${baseURL}${fname}${g.uuid}.${fext}" class="img-fluid">
                                    </c:forEach>
                                </div>
                        </td></tr><!--본문 -->
                        <%-- 첨부파일 표시 --%>

                        <c:forEach begin="0" end="${fn:length(fnames)-1}" var="i">
                        <tr>
                        <td colspan="2" class="tbbg4">
                            <i class="fa fa-file"></i> ${fnames[i]}(${fsizes[i]}KB)</td>
                    </tr>
                        </c:forEach>
                    </table>
                </div>
                <!-- 본문글 하단 버튼 -->
                <div class="row">
                        <div class="col-5 offset-1">
                        <button type="button" class="btn btn-warning text-white"><i class="fa fa-edit"></i>&nbsp;수정하기</button>&nbsp;
                        <button type="button" class="btn btn-danger"><i class="fa fa-trash"></i>&nbsp;삭제하기</button>
                    </div>
                    <div class="col-5 text-right">
                        <button type="button" class="btn btn-light "><i class="fa fa-list"></i>&nbsp;목록으로</button>
                    </div>

                </div>
            </div>

            <!--댓글목록-->
            <div >
                <div class="row">
                    <h3 class="col-10 offset-1"><i class="fa fa-comments fa-2x"></i>나도 한마디</h3>
                </div>
                <table class="table col-10 offset-1">
                    <tr>
                        <td><h4>hi-choi</h4></td>
                        <td>
                            <div class="cmtbg1">2021.05.21 10:10:10</div>
                            <p>Duis efficitur condimentum condimentum. Duis ut venenatis mauris, vitae maximus eros. Etiam a semper felis. Praesent quis nisl metus.</p>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <div class="cmtbg2">
                                <span>Hwak-eye</span>
                                <span class="pushright">2021.05.21 10:10:10</span></div>
                            <p>Duis efficitur condimentum condimentum. Duis ut venenatis mauris, vitae maximus eros. Etiam a semper felis. Praesent quis nisl metus.</p>
                        </td>
                    </tr>
                    <tr>
                        <td><h4>hi-choi</h4></td>
                        <td>
                            <div class="cmtbg1">2021.05.21 10:10:10</div>
                            <p>Duis efficitur condimentum condimentum. Duis ut venenatis mauris, vitae maximus eros. Etiam a semper felis. Praesent quis nisl metus.</p>
                        </td>
                    </tr>
                    <tr>
                        <td><h4>hi-choi</h4></td>
                        <td>
                            <div class="cmtbg1">2021.05.21 10:10:10</div>
                            <p>Duis efficitur condimentum condimentum. Duis ut venenatis mauris, vitae maximus eros. Etiam a semper felis. Praesent quis nisl metus.</p>
                        </td>
                    </tr>
                    <tr>
                        <td><h4>hi-choi</h4></td>
                        <td>
                            <div class="cmtbg1">2021.05.21 10:10:10</div>
                            <p>Duis efficitur condimentum condimentum. Duis ut venenatis mauris, vitae maximus eros. Etiam a semper felis. Praesent quis nisl metus.</p>
                        </td>
                    </tr>
                    <tr>
                        <td><h4>hi-choi</h4></td>
                        <td>
                            <div class="cmtbg1">2021.05.21 10:10:10</div>
                            <p>Duis efficitur condimentum condimentum. Duis ut venenatis mauris, vitae maximus eros. Etiam a semper felis. Praesent quis nisl metus.</p>
                        </td>
                    </tr>

                </table>

            </div>


            <!--댓글쓰기-->
            <div>
                <div class="row">
                    <form name="replayfrm" id="replayfrm" class="card card-body bg-light col-10 offset-1">
                        <div class="form-group row justify-content-center">
                            <label class="col-form-label col-2 pushdwn" for="reply">작성자</label>
                            <textarea class="form-control col-7" name="reply" id="reply" rows="5"></textarea>&nbsp;&nbsp;
                            <button class="form-control col-2 pushdwn btn btn-dark" type="button">
                                <i class="fa fa-comment">&nbsp;댓글쓰기</i>
                            </button>
                        </div>
                    </form>
                </div>
             </div>




        </div>