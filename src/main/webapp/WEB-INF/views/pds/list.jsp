<%@ page pageEncoding="UTF-8"%>
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
                        <tr>
                            <td>2</td>
                            <td>As for why you should value time...</td>
                            <td>hi-choi</td>
                            <td>2012.07.15</td>
                            <td>10</td>
                            <td>128</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>As for why you should value time...</td>
                            <td>hi-choi</td>
                            <td>2012.07.15</td>
                            <td>10</td>
                            <td>128</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td><span class="badge badge-danger">Hot</span> &nbsp;As for why you should value time...</td>
                            <td>hi-choi</td>
                            <td>2012.07.15</td>
                            <td>10</td>
                            <td>128</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>As for why you should value time...</td>
                            <td>hi-choi</td>
                            <td>2012.07.15</td>
                            <td>10</td>
                            <td>128</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>As for why you should value time...</td>
                            <td>hi-choi</td>
                            <td>2012.07.15</td>
                            <td>10</td>
                            <td>128</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>As for why you should value time...</td>
                            <td>hi-choi</td>
                            <td>2012.07.15</td>
                            <td>10</td>
                            <td>128</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>As for why you should value time...</td>
                            <td>hi-choi</td>
                            <td>2012.07.15</td>
                            <td>10</td>
                            <td>128</td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>As for why you should value time...</td>
                            <td>hi-choi</td>
                            <td>2012.07.15</td>
                            <td>10</td>
                            <td>128</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>As for why you should value time...</td>
                            <td>hi-choi</td>
                            <td>2012.07.15</td>
                            <td>10</td>
                            <td>128</td>
                        </tr>
                        <tr>
                            <td>11</td>
                            <td>As for why you should value time...</td>
                            <td>hi-choi</td>
                            <td>2012.07.15</td>
                            <td>10</td>
                            <td>128</td>
                        </tr>
                        <tr>
                            <td>12</td>
                            <td>As for why you should value time...</td>
                            <td>hi-choi</td>
                            <td>2012.07.15</td>
                            <td>10</td>
                            <td>128</td>
                        </tr>
                        <tr>
                            <td>13</td>
                            <td>As for why you should value time...</td>
                            <td>hi-choi</td>
                            <td>2012.07.15</td>
                            <td>10</td>
                            <td>128</td>
                        </tr>
                        <tr>
                            <td>14</td>
                            <td>As for why you should value time...</td>
                            <td>hi-choi</td>
                            <td>2012.07.15</td>
                            <td>10</td>
                            <td>128</td>
                        </tr>
                        <tr>
                            <td>15</td>
                            <td>As for why you should value time...</td>
                            <td>hi-choi</td>
                            <td>2012.07.15</td>
                            <td>10</td>
                            <td>128</td>
                        </tr>
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
      <footer class="card bg-light">
          <h6 class="col bg-light text-right rounded">&copy; Lorem Ipsum 2021. Powered by hi-choi. All Rights Reserved</h6>
      </footer>