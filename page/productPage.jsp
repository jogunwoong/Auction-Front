<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 조회</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        html,
        body {
          height: 100%;
          margin: 0; /* 기본 마진 제거 */
          padding: 0; /* 기본 패딩 제거 */
        }
  
        #container {
          display: grid;
          grid-template-columns: minmax(192px, 896px) minmax(896px, 1020px) minmax(
              192px,
              896px
            );
          width: 100%;
          height: 100%;
        }
  
        #content {
          display: grid;
          grid-template-rows: minmax(100px, 150px) minmax(520px, 2fr) minmax(
              100px,
              150px
            );
          height: 100%;
        }
  
        #logo {
          background-image: url("../resource/Group\ 38.png");
          width: 140px;
          height: 109px;
          border: 0px;
          background-color: white;
        }
  
        header {
          background-color: aqua;
          display: grid;
          grid-template-columns: repeat(12, 1fr);
          grid-template-rows: 1fr 1fr;
          grid-column-gap: 20px;
        }
  
        footer {
          background-color: red;
          display: grid;
          grid-template-rows: 3fr 4.5fr 2.5fr;
        }
        .carousel-control-prev-icon,
        .carousel-control-next-icon {
          
            background-size: 100%, 100%; /* 아이콘 사이즈 조정 */
            background-repeat: no-repeat;
            background-position: center; /* 아이콘 위치 조정 */
            filter: invert(100%) brightness(100%); /* 아이콘을 흰색으로 변환 후 밝기 조절하여 검은색으로 변경 */
        }

      </style>
</head>
<body>
    <div id="container">
        <div>좌측 빈 공간</div>
        <div id="content">
          <header>
            <div
              style="
                grid-column: 1 / span 2;
                grid-row: 1 / span 2;
                background-color: blue;
              "
            >
              로고 자리
            </div>
            <div
              style="
                grid-column: 3 / span 7;
                grid-row: 1 span 1;
                background-color: bisque;
              "
            >
              빈 영역
            </div>
            <div
              style="
                grid-column: 10 / span 3;
                grid-row: 1 / span 1;
                background-color: blueviolet;
              "
            >
              로그인 관련 버튼 영역
            </div>
            <div
              style="
                grid-column: 3 / span 8;
                grid-row: 2 / span 1;
                background-color: rgb(84, 255, 11);
              "
            >
              검색창
            </div>
            <div
              style="
                grid-column: 11 / span 2;
                grid-row: 2 / span 1;
                background-color: rgb(112, 81, 4);
              "
            >
              상품 등록 버튼 영역
            </div>
          </header>
          <main style="background-color: white;">
            <div style="border-bottom: 2px solid black;  display: grid;">
              

              <div style="
              width: 441px; 
              height:557px; 
              border: 2px solid; 
              margin-top: 50px;
              margin-bottom: 81px;
              grid-column: 1 / span 4;
              " id="demo" class="carousel slide" data-ride="carousel">

                <!-- Indicators -->
                  <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                  </ul>

                  <!-- The slideshow -->
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="https://i.namu.wiki/i/geGngQMnvmK2g3wuKU4O1uNs8Ix1HXQULk9PrnT57lHOlU4AxL9qsNCYXOOY9DIqPWtXnphq8G6NzCcvzv-ppQ.webp" alt="Los Angeles" class="d-block w-100 h-100">
                    </div>
                    <div class="carousel-item">
                      <img src="https://i.namu.wiki/i/JNKvslt1j4AioYDmWSiZdcJBzwWD2-XibS8JYqMiQcSpF5GSUzYHVdVBsSOPElngPI5CfiAUf0oM3bXXzFr30w.webp" alt="Chicago" class="d-block w-100 h-100">
                    </div>
                    <div class="carousel-item">
                      <img src="https://i.namu.wiki/i/Yu5BDHQYknKmChLkS9bgOR0jqfE3ojWF_VgjMJ3nhbmztCFy_qp8pFs0eN4q7sM8FYnCU8Nv89wAPcBPMXo3Sg.webp" alt="New York" class="d-block w-100 h-100">
                  </div>
                </div>

                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                  <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                  <span class="carousel-control-next-icon"></span>
                </a>

              </div>
                

                <div style="
                    grid-column: 6 / span 4;
                    margin-top: 50px;
                    margin-bottom: 81px;
                    
                ">
                    <table style="height: 557px; width:100%;">
                        <tr>
                            <td colspan="2" style="font-size: 20px; font-weight: 900;">먼작귀</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600; color:#878787;">시작가</td>
                            <td style="text-align: right; font-size: 22px; font-weight: 900;">xx원</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600; color:#878787;">현재가</td>
                            <td style="text-align: right; font-size: 24px; font-weight: 900; color: red;">xx원</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600; color:#878787;">입찰 수</td>
                            <td style="text-align: right; font-size: 20px; font-weight: 900;">x명</td>
                        </tr>
                        <tr>
                            <td style="font-weight: 600; color:#878787;">남은 시간</td>
                            <td style="text-align: right; font-size: 20px; font-weight: 900;">x일 x시간 x분 x초</td>
                        </tr>
                        <tr>
                            <td style="font-size: 18px; font-weight: 900;">입찰 금액 입력</td>
                            <td style="text-align: right;"><input style="height: 45px;" type="number" name=""></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: right;"><button style="background-color: #ff6262; width: 278px; height: 45%; border-radius: 25px; font-weight: 800; font-size:20px" type="button" class="btn btn-primary" data-toggle="modal" data-target="#bidModal">입찰 확정 하기</button></td>
                        </tr>
                    </table>
                    <div class="modal" id="bidModal">
                      <div class="modal-dialog">
                        <div class="modal-content">
                    
                          <!-- Modal Header -->
                          <div class="modal-header">
                            <h4 class="modal-title">Modal Heading</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                          </div>
                    
                          <!-- Modal body -->
                          <div class="modal-body">
                            <div style="background-color: #FF7272; border-radius: 15px;">
                              <p style="font-size: 18px;">경매 입찰</p>
                            </div>
                            <p style="color: red">입찰 상품</p>
                            <table border="1">
                              <tr>
                                <td>상품명</td>
                                <td></td>
                              </tr>
                              <tr>
                                <td>현재가</td>
                                <td></td>
                              </tr>
                              <tr>
                                <td>입찰 금액</td>
                                <td></td>
                              </tr>
                              <tr>
                                <td>경매마감일자</td>
                                <td></td>
                              </tr>
                            </table>
                            <ul>
                              <li>입찰 건은 취소가 불가능합니다. 신중하게 선택하시기 바랍니다.</li>
                            </ul>

                          </div>
                    
                          <!-- Modal footer -->
                          <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                          </div>
                    
                        </div>
                      </div>
                    </div>
                </div>
            </div>

            <div>
                <div style="margin: 41px 0;">제품설명</div>
                <div style="padding: 50px; border-top: 2px solid #B0B0B0; border-bottom: 2px solid #B0B0B0;">
                    설명
                </div>
            </div>

            <div>
                <div style="margin: 41px 0;">입찰 현황</div>
                <div>
                    <table style="width: 100%;">
                        <tr style="background-color: #B0B0B0; height: 46px;">
                            <td style="padding: 10px;">입찰자</td>
                            <td>입찰 가격</td>
                            <td>입찰일</td>
                        </tr>
                        <tr>
                            <td style="padding: 10px;">회원아이디</td>
                            <td>입찰액</td>
                            <td>입찰일</td>
                        </tr>
                        <tr>
                            <td style="padding: 10px;">회원아이디</td>
                            <td>입찰액</td>
                            <td>입찰일</td>
                        </tr>
                        <tr>
                            <td style="padding: 10px;">회원아이디</td>
                            <td >입찰액</td>
                            <td>입찰일</td>
                        </tr>
                        
                    </table>
                </div>
            </div>
            <br><br><br><br><br>
        
          </main>
          <footer>
            <div style="background-color: yellow">푸터 : 네비게이션 영역</div>
            <div style="background-color: rgb(255, 0, 255)">
              푸터 : 경고문 영역
            </div>
            <div style="background-color: rgb(187, 84, 251)">
              푸터 : 부가 정보 영역
            </div>
          </footer>
        </div>
        <div>우측 빈 공간</div>
      </div>
</body>
</html>