<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%--
    게시판 댓글 처리 : reply
    댓글번호    댓글내용     작성자     작성일       부모글번호 대댓글번호
    1         헬로우염     123abc    20210611       100      1
    4       왜영어로인사..  xyz987    20210611       100     1
    2          방가방가    abc123    20210611      100       2
    3         안녕하세요   xyz987    20210611       100       3

    댓글 출력 순서는 부모글번호로 추려낸후 부모댓글번호로 정렬
--%>
<%-- 줄바꿈 기호를 변수로 생성 : br태그 변환 필요! --%>
<c:set var="newChar" value="
" scope="application"/>
<div id ="main">

<!-- Page Title -->
            <div style="margin-top:20px;">
                <i class="fa fa-comments fa-2x">자유 게시판</i>
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
                                <h2>${bd.title}</h2>
                            </th>
                        </tr>
                        <tr class="tbbg2">
                            <td style="width:50%">${bd.userid}</td>
                            <td class="text-right">${bd.regdate}/${bd.thumbup}/${bd.views}</td>
                        </tr>
                        <tr class="tbbg3 bdcsize">
                            <td colspan="2">
                               ${fn:replace(bd.contents,newChar,"<br>")}
                            </td>
                        </tr>
                    </table>
                </div>
                <!-- 본문글 하단 버튼 -->
                <div class="row">
                        <div class="col-5 offset-1">
                            <%-- 자신이 작성한 글에 대해 수정/삭제 버튼이 표시되어야 함--%>
                            <c:if test="${not empty UID and bd.userid eq UID}">
                        <button type="button" class="btn btn-warning text-white"><i class="fa fa-edit"></i>&nbsp;수정하기</button>&nbsp;
                        <button type="button" class="btn btn-danger"><i class="fa fa-trash"></i>&nbsp;삭제하기</button>
                            </c:if>
                    </div>
                    <div class="col-5 text-right">
                        <button type="button" class="btn btn-light "><i class="fa fa-list"></i>&nbsp;목록으로</button>
                    </div>

                </div>
            </div>

            <!--댓글목록-->
            <div>
                <div class="row">
                    <h3 class="col-10 offset-1"><i class="fa fa-comments fa-2x"></i>나도 한마디</h3>
                </div>
                <table class="table col-10 offset-1">
                    <%-- 댓글 --%>

                    <c:forEach var="r" items="${rps}">
                        <c:if test="${r.rpno eq r.rno}">
                    <tr>
                        <td><h4>${r.userid}</h4></td>
                        <td>
                            <div class="cmtbg1">${r.regdate}
                                <span style="float:right">
                                    <c:if test="${not empty UID}">
                                        <a href="javascript:addReply('${r.rno}')">[추가]</a></c:if>
                                    <c:if test="${UID eq r.userid}">[수정]
                                        [삭제]</c:if>
                                </span></div>

                            <p>${r.reply}</p>
                        </td>
                    </tr>

                    </c:if>
                        <%-- 대댓글 --%>
                    <c:if test="${r.rpno ne r.rno}">

                    <tr>
                        <td></td>
                        <td>
                            <div class="cmtbg2">
                                <span>${r.userid}</span>
                                <span class="pushright">${r.regdate}</span></div>
                            <p>${r.reply}</p>
                        </td>
                    </tr>
                    </c:if>
                    </c:forEach>

                </table>

            </div>


            <!--댓글쓰기-->
            <div>
                <div class="row">
                    <form name="replyfrm" id="replyfrm" class="card card-body bg-light col-10 offset-1">
                        <div class="form-group row justify-content-center">
                            <label class="col-form-label col-2 pushdwn" for="reply">${UID}</label>
                            <textarea class="form-control col-7" name="reply" id="reply" rows="5"></textarea>&nbsp;&nbsp;
                            <button class="form-control col-2 pushdwn btn btn-dark" type="button" id="newbrbtn">
                                <i class="fa fa-comment">&nbsp;댓글쓰기</i>
                            </button>
                        </div>
                        <input type="hidden" name="userid" value="${UID}"/>
                        <input type="hidden" name="bdno" value="${param.bdno}"/>
                    </form>
                </div>
             </div>
        </div>

<!-- 대댓글 작성을 위한 모달 대화상자 -->
<div class="modal hide" id="replyModal" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">대댓글 쓰기</h3>
            </div>
            <div class="modal-body">
                <form name="rpfrm" id="rpfrm" class="well form-inline">
                    <textarea name="reply" id="rreply" rows="8" cols="75" class=""></textarea>
                    <input type="hidden" name="userid" value="${UID}">
                    <input type="hidden" name="bdno" value="${param.bdno}">
                    <input type="hidden" name="rpno" id="rpno">

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" id="newrrpbtn" class="btn btn-dark">대댓글 작성</button>
            </div>
        </div>
    </div>
</div>