<%--
  Created by IntelliJ IDEA.
  User: jungyeon
  Date: 2024-03-26
  Time: 오후 8:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 화면</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style>
        body {
            min-height: 100vh;
            background: rgb(239, 234, 234);
            /* background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
             background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
             background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
             background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
             background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);*/
        }
        #loginBoxTitle {
            color:#000000;
            font-weight: bold;
            font-size: 32px;
            text-transform: uppercase;
            padding: 5px;
            margin-bottom: 20px;

        }
        #loginBoxTitle img {
            display: block;
            margin: 0 auto;
        }


        .input-form {
            margin-top: 120px;
            padding: 50px;
            gap: 30px; /* 간격을 조절할 값 설정 */
            max-width: 600px; /* 필요에 따라 폼의 최대 너비 설정 */
            background: #fff;
            -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
            border-radius: 10px;
            -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
            -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
            box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
        }

        button {
            height: 49px;
        }
        .social-login-form  button{
            height: 50px;
        }
        .form-control {
            height: 53px;
        }
        p{
            text-align: center;
        }
        a{
            margin-right: 30px;
        }
        span:hover{
            text-decoration: underline;
        }
        span{
            color: gray;

        }
        .find{
            float: right;
            margin-top: 10px;
            margin-bottom: 20px;
        }

        nav{
            display: inline-block;
            background-color: rgb(176, 165, 165);
            height: 80px;
            text-align: right;

        }
        #search{
            width: 400px; /* 원하는 너비로 설정하세요 */
            height: 45px;
            padding: 8px 20px; /* 내부 여백 설정 */
            border: none; /* 테두리 제거 */
            border-radius: 9999px; /* 타원형 모양으로 설정 */
            background-color: #ffff; /* 배경색 설정 */
            background-position: right 30px top 50%; /* 이미지 위치 조정 */
            box-sizing: border-box; /* padding과 border를 박스 크기에 포함시킵니다. */

            background-repeat: no-repeat;
            margin-left: 610px;
        }

        #search .background-image:hover{
            cursor: pointer;
        }

        .navlogin{
            margin-left: 620px;
        }

        .uplogin{
            margin: 0;
        }

        #lobtn{
            background-color: rgb(64, 58, 58);
        }
        #navmenu{
            color:#000000;
            font-size: 1.2em;
        }

        #navbarall{
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            display: flex; /* Flexbox 사용 */
            justify-content: space-between; /* 요소를 동일한 간격으로 분산 배치 */
            align-items: center; /* 요소를 수직 가운데 정렬 */
            padding: 10px;
        }


    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg  bg-body-tertiary" id="navbarall">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><img src="../image/sutdi.png" width="80" height="50"></a>

        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navmenu" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        더보기
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
            <form>
                <input  id="search" type="search"  style="background-image: url('../image/search.svg');cursor: pointer; ">
            </form>
            <div class="navlogin">
                <a type="button" onclick="" class="uplogin">로그인</a>
                <img src="../image/line.png" class="line" width="20px"  height="30px">
                <a type="button" onclick="" class="upwrite">회원가입</a>
            </div>
        </div>
    </div>
</nav>


<div class="container">
    <div class="input-form-backgroud row">
        <div class="input-form col-md-12 mx-auto">
            <div id="loginBoxTitle"><img src="../image/sutdi.png" width="130" height="90"></div>
            <form class="login-form" novalidate>

                <div class="mb-3">
                    <label for="id">아이디</label>
                    <input type="text" class="form-control" id="id" placeholder="아이디" required >
                    <div class="invalid-feedback">

                    </div>
                </div>

                <div class="mb-3">
                    <label for="password">비밀번호</label>
                    <input type="text" class="form-control" id="password" placeholder="비밀번호" required>
                    <div class="invalid-feedback">

                    </div>

                    <a type="button" class="find"><span>아이디·비밀번호 찾기</span></a><br>
                </div>
                <div class="mb-3">
                    <button class="btn btn-info btn btn-block" type="button" id="lobtn">로그인</button>
                </div>
                <div class="mb-3">
                    <button class="btn btn-info btn btn-block" type="button" id="wrtbtn">회원가입</button>
                </div>
            </form>

            <hr>

            <form class="social-login-form" novalidate>
                <p>
                    <a type="button" onclick="" >
                        <img src="../image/free-icon-kakao-talk-3669973.png"  alt="..." width="50" height="50">
                    </a>
                    <a type="button" onclick="" >
                        <img src="../image/btnG_아이콘사각.png" alt="..."  width="50" height="50">
                    </a>
                    <a type="button" onclick="" >
                        <img src="../image/free-icon-search-281764.png" alt="..."  width="50" height="50">
                    </a>
                    <a type="button" onclick="" >
                        <img src="../image/git.png" alt="..."  width="50" height="50">
                    </a>
                </p>
            </form>

</body>

</html>