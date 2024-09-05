<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
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

      .logo {
        background-image: url("../resource/Group\ 38.png");
        width: 100vw;
        height: 80%;
        border: 0px;
        background-color: white;
        background-repeat: no-repeat;
        background-size: contain;
        cursor: pointer;
      }

      header {
        display: grid;
        grid-template-columns: repeat(12, 1fr);
        grid-template-rows: 1fr 1fr;
        grid-column-gap: 20px;
        border-bottom: solid 1px #cecece;
      }

      footer {
        background-color: red;
        display: grid;
        grid-template-rows: 3fr 4.5fr 2.5fr;
      }

      #searchInput {
        width: 100%;
        height: 35%;
      }

      
      
    </style>
  </head>
  <body>
        <header>
          <div
            style="
              grid-column: 1 / span 2;
              grid-row: 1 / span 2;
              display: flex;
              align-items: center;
            "
          >
            <button class="logo"></button>
          </div>
          <div style="grid-column: 3 / span 7; grid-row: 1 span 1"></div>
          <div style="grid-column: 10 / span 3; grid-row: 1 / span 1">
            <div
              style="
                border: solid 2px #b6b6b6;
                border-radius: 20px;
                background-color: white;
                display: flex;
                justify-content: space-around;
                align-items: center;
                margin-top: 14%;
                height: 30%;
              "
            >
              <a
                href=""
                style="
                  font-size: 10px;
                  font-weight: normal;
                  color: #2c2c2c;
                  text-decoration-line: none;
                "
                >로그인</a
              >
              <a
                href=""
                style="
                  font-size: 10px;
                  font-weight: normal;
                  color: #2c2c2c;
                  text-decoration-line: none;
                "
                >회원가입</a
              >
              <a
                href=""
                style="
                  font-size: 10px;
                  font-weight: normal;
                  color: #2c2c2c;
                  text-decoration-line: none;
                "
                >마이페이지</a
              >
            </div>
          </div>
          <div
            style="
              grid-column: 3 / span 8;
              grid-row: 2 / span 1;
              display: flex;
              align-items: center;
            "
          >
            <input
              type="text"
              name=""
              id="searchInput"
              placeholder="검색어를 입력해주세요."
              style="border: solid 4px red"
            />
          </div>
          <div
            style="
              grid-column: 11 / span 2;
              grid-row: 2 / span 1;
              display: flex;
              align-items: center;
            "
          >
            <button
              style="
                color: #ffffff;
                font-size: 16px;
                background-color: #ff5252;
                border-radius: 30px;
                border: 0px;
                width: 95%;
                margin-left: 5%;
                height: 40%;
                font-weight: 600;
                cursor: pointer;
              "
            >
              내 상품 등록
            </button>
          </div>
        </header>
      
  </body>
</html>
