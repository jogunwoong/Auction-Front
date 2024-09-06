<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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

      .posting-btn-area2 {
        display: grid;
        grid-template-columns: repeat(9, 1fr);
        grid-column-gap:20px;
        margin-top: 58px;
      }

      .posting-btn-area2 button {
        grid-column: 7 / span 2;
        width: 203px;
        height: 37px;
        border-radius: 15px;
        border-style: none;
        background-color: #31D322;
        color: white;
        font-size: 20px;
        font-weight: 900;
      }

      .posting-info-area {
        display: grid;
        grid-template-columns: repeat(9, 1fr);
        grid-column-gap:20px;
        margin-top: 56px;
      }

      .posting-info-area table {
        grid-column: 1 / span 8;
      }

      .posting-info-area tr td:first-child {
        vertical-align: top;
        font-size: 18px;
        font-weight: 500;
        color: #2C2C2C;
      }

      .posting-info-area tr {
       
      }

      .hidden-upload {
        display: none;
      }

      .upload-container {
        display: flex;
        gap: 20px; /* 이미지들 사이의 간격 조절 */
      }

      .upload {
        width: 180px;
        height: 180px;
        background-color: #EBEBEB;
        overflow: hidden;
        border: 2px solid #B0B0B0;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      .img-preview {
        width: 700px;
        height: 200px;
        background-color: aquamarine;
        display: flex;
        gap: 20px;
      }

      img {
        width: 200px;
        height: 200px;
      }

      li {
        list-style: none;
      }
    </style>
  </head>
  <body>
    <div id="container">
      <div>좌측 빈 공간</div>

      <div id="content">
        <%@ include file="header.jsp" %>

        <main>
          <div class="posting-btn-area2">
            <button type="submit">등록하기</button>
          </div>

          <div class="posting-info-area">
            <table>
              <tr>
                <td>상품 이미지</td>
                <td>
                  <div class="upload-container">
                    <input class="hidden-upload" type="file" name="" id="hidden-upload-1" />
                    <div class="upload" id="upload-1"><img src="../resource/camera-icon.png" style="width:32px; height: 32px;" alt=""></div>
                    <input class="hidden-upload" type="file" name="" id="hidden-upload-2" />
                    <div class="upload" id="upload-2"><img src="../resource/camera-icon.png" style="width:32px; height: 32px;" alt=""></div>
                    <input class="hidden-upload" type="file" name="" id="hidden-upload-3" />
                    <div class="upload" id="upload-3"><img src="../resource/camera-icon.png" style="width:32px; height: 32px;" alt=""></div>
                  </div>
                  <!-- TODO: 재추가 로직, 삭제 로직 -->
                </td>
              </tr>
              <tr>
                <td style="padding-top: 20px">제품명</td>
                <td style="padding-top: 20px">
                  <input type="text" name="" id="" style="height:40px; width: 100%; box-sizing: border-box;"/>
                </td>
              </tr>
              <tr>
                <td style="padding-top: 40px">제품 설명</td>
                <td style="padding-top: 40px">
                  <textarea name="" id="" cols="30" rows="10" style="box-sizing: border-box; width: 100%;"></textarea>
                </td>
              </tr>
              <tr>
                <td style="padding-top: 40px">시작가</td>
                <td style="padding-top: 40px">
                  <input type="number" name="" id="" style="box-sizing: border-box; width: 100%; height: 40px;"/>
                </td>
              </tr>
              <tr>
                <td style="padding-top: 40px">카테고리</td>
                <td style="padding-top: 40px">
                  <select name="category" id="" style="width:280px; height:40px;">
                    <option value="clothes">의류</option>
                    <option value="electronic">전자제품</option>
                    <option value="etc">기타 제품</option>
                  </select>
                </td>
              </tr>
              <tr>
                <td style="padding-top: 40px">마감시간</td>
                <td style="padding-top: 40px">
                  <input type="datetime-local" name="" id="" style="width:280px; height:40px;" />
                </td>
              </tr>
            </table>
          </div>
          <br><br><br><br><br><br><br>
        </main>

        <%@ include file="footer.jsp" %>
      </div>

      <div>우측 빈 공간</div>
    </div>
  </body>
  <script>
    function loadFile(file, container) {
      const newImage = document.createElement("img"); // 새 이미지 태그 생성

      // 이미지 source 가져오기
      newImage.src = URL.createObjectURL(file);
      newImage.style.width = "100%"; // div에 꽉차게 넣으려고
      newImage.style.height = "100%";
      newImage.style.objectFit = "cover"; // div에 넘치지 않고 들어가게

      // 이미지를 container div에 추가
      container.innerHTML = ''; // 기존 이미지 제거
      container.appendChild(newImage);
    }

    function getImageFiles(e) {
      const files = e.target.files;
      const container = e.target.nextElementSibling; // input 요소 바로 다음의 div 요소

      // 파일 타입 검사
      [...files].forEach((file) => {
        if (!file.type.match("image/.*")) {
          alert("이미지 파일만 업로드가 가능합니다.");
          return;
        }
        loadFile(file, container);
      });
    }

    document.querySelectorAll('.hidden-upload').forEach(input => {
      input.addEventListener('change', getImageFiles);
    });

    document.querySelectorAll('.upload').forEach(upload => {
      upload.addEventListener('click', () => {
        upload.previousElementSibling.click(); // div 요소 바로 이전의 input 요소 클릭
      });
    });
  </script>
</html>
