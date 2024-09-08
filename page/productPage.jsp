<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 조회</title>
   
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
        
        .product-info {
          border-bottom: 2px solid black;  
          display: grid; 
          grid-template-columns: repeat(9, 1fr);
        }

        .carousel {
            position: relative;
            width: 447px;
            height: 557px;
            margin-top: 50px;
            margin-bottom: 81px;
            border: 2px solid;
            overflow: hidden;
            display: flex;
            grid-column:  1/ span 4;
        }

        .carousel-inner {
            display: flex;
            transition: transform 0.5s ease-in-out;
        }

        .carousel-item {
            min-width: 100%;
            transition: opacity 1s;
        }

        .carousel img {
            width: 100%;
            height: 100%;
        }

        .carousel-controls {
            position: absolute;
            top: 50%;
            width: 100%;
            display: flex;
            justify-content: space-between;
            transform: translateY(-50%);
        }

        .carousel-controls img {
            width: 35px;
        }
      
        .info-div {
          grid-column: 6 / span 4;
          margin-top: 50px;
          margin-bottom: 81px;
        }

        .info-div > table {
          height: 557px; width: 100%;
        }

        /* 모달 배경 */
        .modal-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 1000;
        }

        /* 모달 컨테이너 */
        .modal-container {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            border: 2px solid black;
            width: 559px;
            height: 640px;
            z-index: 1001;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        /* 모달 헤더 */
        .modal-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #DDE9E9;
            border-radius: 8px 8px 0 0;
            height: 35px;
            justify-content: flex-end;
        }

        /* 닫기 버튼 */
        .modal-close {
            background: none;
            border: none;
            font-size: 35px;
            cursor: pointer;
        }

        /* 모달 바디 */
        .modal-body {
            padding: 20px;
        }

        /* 경매 입찰 박스 */
        .modal-body .bid-box {
            margin-top: 15px;
            background-color: #FF7272;
            border-radius: 15px;
            height: 34px;
            display: flex;
            align-items: center;
            justify-content: left;
        }

        .bid-box p {
          font-size: 18px; color: white; font-weight: 900; text-align: left; padding-left: 10px;
        }
        
        .table-title {
          color: red; margin-top: 25px; font-weight: 900;
        }

      

        .modal-body table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        .modal-body table td:first-child {
          width: 173px; height: 55px; background-color: #EEEEEE;
        }

        .product_modal_input {
            border:none;
            font-size: 16px;
        }

        .modal-body table, .modal-body th, .modal-body td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        .modal-body ul {
            margin-top: 15px;
            padding-left: 20px;
        }

        .modal-body ul li {
            color: #A6A6A6;
        }

        .bid-agree {
          text-align: right; margin-top: 30px;
        }

        .bid-agree label {
          text-decoration: underline; font-weight: 600; font-weight: 900; margin-right: 10px;
        }

        .bid-agree input {
          border: 3px solid red;width: 20px; height: 20px; cursor: pointer;
        }

        .bid-btns {
          text-align: center; margin-top: 15px;
        }

        .bid-btns button:first-child {
          width: 110px; height:35px; border-radius: 6px; font-size: 16px; background-color: white;
        }

        .bid-btns button:nth-child(2) {
          width: 110px; height:35px; border-radius: 6px; margin-left: 49px; color: #FF0000; font-size: 16px; font-weight: 900; background-color: white; border: 2px solid red;
        }

        .product-description div:first-child { margin: 41px 0; }
        .product-description div:nth-child(2) { 
            padding: 50px; 
            border-top: 2px solid #B0B0B0; 
            border-bottom: 2px solid #B0B0B0;
        }

        .bid-situation div:first-child { margin: 41px 0; }
        .bid-situation table {
            width: 100%; 
            border-bottom: 1px solid #B0B0B0; 
            border-top: 1px solid #B0B0B0;
        }
        .bid-situation table tr:first-child {
            background-color: #F1F1F1; 
            height: 46px; 
            font-weight: 800; 
            color: #878787;
        }

        .bid-situation table tr td:nth-child(-n+3) {
            padding: 10px;
        }
        
        .bid-situation table tr td:last-child {
          text-align: right; padding-right: 1%;
        }
        
        .info-div table tr:first-child td {
            font-size: 20px; font-weight: 900;
        }
       
        

      </style>
</head>
<body> 
  <div id="container">
    <div>좌측 빈 공간</div>
    <div id="content">
          <%@ include file="header.jsp" %>
          
          <main>
            <!-- 사진, 제품 정보, 입찰 모달창 -->
            <div class="product-info">
              
                <!-- 제품 사진 슬라이드 -->
                <div class="carousel" id="productCarousel">
                  <div class="carousel-inner">
                      <div class="carousel-item">
                          <img src="https://i.namu.wiki/i/geGngQMnvmK2g3wuKU4O1uNs8Ix1HXQULk9PrnT57lHOlU4AxL9qsNCYXOOY9DIqPWtXnphq8G6NzCcvzv-ppQ.webp" alt="Image 1">
                      </div>
                      <div class="carousel-item">
                          <img src="https://i.namu.wiki/i/JNKvslt1j4AioYDmWSiZdcJBzwWD2-XibS8JYqMiQcSpF5GSUzYHVdVBsSOPElngPI5CfiAUf0oM3bXXzFr30w.webp" alt="Image 2">
                      </div>
                      <div class="carousel-item">
                          <img src="https://i.namu.wiki/i/Yu5BDHQYknKmChLkS9bgOR0jqfE3ojWF_VgjMJ3nhbmztCFy_qp8pFs0eN4q7sM8FYnCU8Nv89wAPcBPMXo3Sg.webp" alt="Image 3">
                      </div>
                  </div>
                  <div class="carousel-controls">
                      <img id="prevBtn" src="../resource/left.png"></img>
                      <img id="nextBtn" src="../resource/right.png"></img>
                  </div>
              </div>

                <!-- --------------------------------------- -->

              
                
                <!-- 제품 정보 테이블 -->
                <div class="info-div">
                    <table>
                        <tr>
                            <td colspan="2">먼작귀</td>
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
                            <td style="text-align: right;"><input style="height: 45px; width: 150px;" type="number" name=""></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="vertical-align: bottom; text-align: right;"><button id="openModalBtn" style="border:none;background-color: #ff6262; width: 278px; height: 49px; border-radius: 25px; font-weight: 800; font-size:20px; color: white;">입찰 확정 하기</button></td>
                        </tr>
                    </table>
                    
                </div>

                <!-- 모달 -->
                <div class="modal-overlay" id="modalOverlay">
                  <div class="modal-container">
                      <div class="modal-header">
                          <button class="modal-close" id="closeModalBtn">&times;</button>
                      </div>

                      <div class="modal-body">
                          <div class="bid-box">
                              <p>경매 입찰</p>
                          </div>
                          <p class="table-title">입찰 상품</p>
                          <table>
                              <tr>
                                  <td>상품명</td>
                                  <td><input class="product_modal_input" type="text" value="먼작귀" readonly></td>
                              </tr>
                              <tr>
                                  <td>현재가</td>
                                  <td><input class="product_modal_input" type="text" value="5,000,000원" readonly></td>
                              </tr>
                              <tr>
                                  <td>입찰 금액</td>
                                  <td><input class="product_modal_input" type="text" value="5,100,000원" readonly></td>
                              </tr>
                              <tr>
                                  <td>경매마감일자</td>
                                  <td><input class="product_modal_input" type="text" value="24-08-29 18:00" readonly></td>
                              </tr>
                          </table>
                          <ul>
                              <li>입찰 건은 취소가 불가능합니다. 신중하게 선택하시기 바랍니다.</li>
                          </ul>
                          <div class="bid-agree">
                            <label for="bid-agree">상기 내용을 이해하고 동의함</label><input type="checkbox" id="bid-agree">
                          </div>
                          <br>
                          <div class="bid-btns">
                            <button>창 닫기</button>
                            <button>입찰하기</button>
                          </div>
                      </div>
                  </div>
              </div> 

            </div>

            <div class="product-description">
                <div>제품설명</div>
                <div>
                  상품의 설명을 기입하는 공간입니다.  <br>
                  ex) <br>
                  귀여운 먼작귀 친구들입니다. <br>
                  귀엽죠? <br>
                </div>
            </div>

            <div class="bid-situation">
                <div>입찰 현황</div>
                <div>
                    <table>
                        <tr>
                            <td>입찰자</td>
                            <td>입찰 가격</td>
                            <td>입찰일</td>
                        </tr>
                        <tr>
                            <td>회원아이디</td>
                            <td>입찰액</td>
                            <td>입찰일</td>
                        </tr>
                        <tr>
                            <td>회원아이디</td>
                            <td>입찰액</td>
                            <td>입찰일</td>
                        </tr>
                        <tr>
                            <td>회원아이디</td>
                            <td>입찰액</td>
                            <td>입찰일</td>
                        </tr>
                        
                    </table>
                </div>
            </div>
            <br><br><br><br><br>
        
          </main>
          <!-- 푸터 추가 -->
          <%@ include file="footer.jsp" %>
          
        </div>
        <div>우측 빈 공간</div>
      </div>


      <script>
        // 모달 열기 버튼과 닫기 버튼을 변수에 할당
        const openModalBtn = document.getElementById('openModalBtn');
        const closeModalBtn = document.getElementById('closeModalBtn');
        const modalOverlay = document.getElementById('modalOverlay');

        // 모달 열기
        openModalBtn.addEventListener('click', () => {
            modalOverlay.style.display = 'block';
        });

        // 모달 닫기
        closeModalBtn.addEventListener('click', () => {
            modalOverlay.style.display = 'none';
        });

        // 모달 외부 클릭 시 모달 닫기
        window.addEventListener('click', (e) => {
            if (e.target === modalOverlay) {
                modalOverlay.style.display = 'none';
            }
        });

        // 
        const carousel = document.querySelector('.carousel-inner');
        const items = document.querySelectorAll('.carousel-item');
        const totalItems = items.length;
        let currentIndex = 0;

        function updateCarousel() {
            const offset = -currentIndex * 100;
            carousel.style.transform = `translateX(${offset}%)`;
        }

        document.getElementById('prevBtn').addEventListener('click', () => {
            currentIndex = (currentIndex > 0) ? currentIndex - 1 : totalItems - 1;
            updateCarousel();
        });

        document.getElementById('nextBtn').addEventListener('click', () => {
            currentIndex = (currentIndex < totalItems - 1) ? currentIndex + 1 : 0;
            updateCarousel();
        });
    </script>
</body>
</html>