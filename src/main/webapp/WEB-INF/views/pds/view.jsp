<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:if test="${param.pno eq 'null' or empty param.pno}">
    <script>alert('보여줄 내용이 없어요!!'); location.href="/pds/list?cp=1"</script>
</c:if>

<%--첨부파일 아이콘 선택--%>
<c:set var="atticon1" value="${p.ftype1}" />
<c:if test="${p.ftype1 ne 'zip' and p.ftype1 ne 'jpg' and p.ftype1 ne 'txt'}">
    <c:set var="atticon1" value="file" />
</c:if>

<c:set var="atticon2" value="${p.ftype2}" />
<c:if test="${p.ftype2 ne 'zip' and p.ftype2 ne 'jpg' and p.ftype2 ne 'txt'}">
    <c:set var="atticon2" value="file" />
</c:if>

<c:set var="atticon3" value="${p.ftype3}" />
<c:if test="${p.ftype3 ne 'zip' and p.ftype3 ne 'jpg' and p.ftype3 ne 'txt'}">
    <c:set var="atticon3" value="file" />
</c:if>

<!-- main Area -->
          <div id ="main">

<!-- Page Title -->
            <div style="margin-top:20px;">
                <i class="fa fa-save fa-2x">&nbsp;자료실</i>
                <hr>
            </div>
            <!--본문글-->
            <div>
                <div class="row">
                <!-- 본문글 상단 버튼 -->
                    <div class="col-5 offset-1">
                        <button type="button" class="btn btn-light" id="pdprvbtn"><i class="fa fa-chevron-left"></i>&nbsp;이전 게시물</button>
                        <button type="button" class="btn btn-light" id="pdnxtbtn"><i class="fa fa-chevron-right"></i>&nbsp;다음 게시물</button>
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
                                <h2>${p.title}</h2>
                            </th>
                        </tr>
                        <tr class="tbbg2">
                            <td style="width:50%">${p.userid}</td>
                            <td class="text-right">${p.regdate}/${p.thumbup}/${p.views}</td>
                        </tr>
                        <tr class="tbbg3 bdcsize">
                            <td colspan="2">
                                ${p.contents}
                            </td>
                        </tr><!--본문 -->
                        <tr><td colspan="2" class="tbbg4 patxt">첨부1 :
                            <img src="/img/${atticon1}.png" />
                            <a href="/pds/down?pno=${p.pno}&order=1">${p.fname1}</a>
                            (${p.fsize1}KB, ${p.fdown1}회 다운로드함)</td></tr>

                        <c:if test="${p.fname2 ne '-'}">
                            <tr><td colspan="2" class="tbbg4 patxt">첨부2 :
                                <img src="/img/${atticon2}.png" />
                                <a href="/pds/down?pno=${p.pno}&order=2">${p.fname2}</a>
                                (${p.fsize2}KB, ${p.fdown2}회 다운로드함)</td></tr>
                        </c:if>
                        <c:if test="${p.fname3 ne '-'}">
                            <tr><td colspan="2" class="tbbg4 patxt">첨부3 :
                                <img src="/img/${atticon3}.png" />
                                <a href="/pds/down?pno=${p.pno}&order=3">${p.fname3}</a>
                                (${p.fsize3}KB, ${p.fdown3}회 다운로드함)</td></tr>
                        </c:if>
                    </table>
                </div>
                <!-- 본문글 하단 버튼 -->
                <div class="row">
                        <div class="col-5 offset-1">
                        <button type="button" class="btn btn-warning text-white"><i class="fa fa-edit"></i>&nbsp;수정하기</button>&nbsp;
                        <button type="button" class="btn btn-danger" id="pdrmvbtn"><i class="fa fa-trash"></i>&nbsp;삭제하기</button>
                    </div>
                    <div class="col-5 text-right">

                        <button type="button" class="btn btn-success" id="pdthumbtn">
                            <i class="fa fa-thumbs-up"></i>&nbsp;추천하기</button>
                        <button type="button" class="btn btn-light "><i class="fa fa-list"></i>&nbsp;목록으로</button>
                    </div>

                </div>
                <input type="hidden" id="pno" value="${param.pno}"/>
            </div> <!-- 본문글 -->

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