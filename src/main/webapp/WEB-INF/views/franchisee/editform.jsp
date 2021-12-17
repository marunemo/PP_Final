<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.localgift.giftlist.franchisee.FranchiseeVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가맹점 수정</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- ref: https://codepen.io/samnorton/pen/oNYajYM -->
<style>
	@font-face {
        font-family: 'EliceDigitalBaeum_Bold';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/EliceDigitalBaeum_Bold.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }

    *,
    body {
        font-family: 'EliceDigitalBaeum_Bold';
        font-weight: 400;
        -webkit-font-smoothing: antialiased;
        text-rendering: optimizeLegibility;
        -moz-osx-font-smoothing: grayscale;
    }

    html,
    body {
        height: 100%;
        background-color: #152733;
        overflow-x: hidden;
    }


    .form-holder {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;
        min-height: 100vh;
    }

    .form-holder .form-content {
        position: relative;
        text-align: center;
        display: -webkit-box;
        display: -moz-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-align-items: center;
        align-items: center;
        padding: 60px;
    }

    .form-content .form-items {
        border: 3px solid #fff;
        padding: 40px;
        display: inline-block;
        width: 100%;
        min-width: 540px;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        border-radius: 10px;
        text-align: left;
        -webkit-transition: all 0.4s ease;
        transition: all 0.4s ease;
    }

    .form-content h3 {
        color: #fff;
        text-align: left;
        font-size: 28px;
        font-weight: 600;
        margin-bottom: 5px;
    }

    .form-content h3.form-title {
        margin-bottom: 30px;
    }

    .form-content p {
        color: #fff;
        text-align: left;
        font-size: 17px;
        font-weight: 300;
        line-height: 20px;
        margin-bottom: 30px;
    }

    .form-check {
        margin-top: 20px;
    }

    .form-content label,
    .was-validated .form-check-input:invalid~.form-check-label,
    .was-validated .form-check-input:valid~.form-check-label {
        color: #fff;
    }

    .form-content input[type=text],
    .form-content input[type=password],
    .form-content input[type=email],
    .form-content select {
        width: 100%;
        padding: 9px 20px;
        text-align: left;
        border: 0;
        outline: 0;
        border-radius: 6px;
        background-color: #fff;
        font-size: 15px;
        font-weight: 300;
        color: #8D8D8D;
        -webkit-transition: all 0.3s ease;
        transition: all 0.3s ease;
        margin-top: 16px;
    }

    .btn-primary {
        background-color: #6C757D;
        outline: none;
        border: 0px;
        box-shadow: none;
    }

    .btn-primary:hover,
    .btn-primary:focus,
    .btn-primary:active {
        background-color: #495056;
        outline: none !important;
        border: none !important;
        box-shadow: none;
    }

    .form-content textarea {
        position: static !important;
        width: 100%;
        padding: 8px 20px;
        border-radius: 6px;
        text-align: left;
        background-color: #fff;
        border: 0;
        font-size: 15px;
        font-weight: 300;
        color: #8D8D8D;
        outline: none;
        resize: none;
        height: 120px;
        -webkit-transition: none;
        transition: none;
        margin-bottom: 14px;
    }

    .form-content textarea:hover,
    .form-content textarea:focus {
        border: 0;
        background-color: #ebeff8;
        color: #8D8D8D;
    }

    .mv-up {
        margin-top: -9px !important;
        margin-bottom: 8px !important;
    }

    .invalid-feedback {
        color: #ff606e;
    }
</style>
</head>

<%
	FranchiseeVO u = (FranchiseeVO)request.getAttribute("franchiseeVO");
%>

<body>
	<div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>가맹점 수정하기</h3>
                        <p>다음 항목들을 수정해주세요.</p>
                        <form action="../editok" method="post" class="requires-validation" novalidate>
                        	<input type="hidden" name="seq" value="<%= u.getSeq() %>" />

                            <div class="col-md-12">
                                <input class="form-control" type="text" name="name" placeholder="업체명" required>
                                <div class="invalid-feedback">가맹점 이름이 입력되지 않았습니다!</div>
                            </div>

                            <div class="col-md-12">
                                <input class="form-control" type="text" name="callnum" placeholder="연락처" required>
                                <div class="invalid-feedback">연락처가 입력되지 않았습니다!</div>
                            </div>
                            
                            <div class="col-md-12">
                                <input class="form-control" type="text" name="category" placeholder="업태" required>
                                <div class="invalid-feedback">업태가 입력되지 않았습니다!</div>
                            </div>
                            
                            <div class="col-md-12">
                                <input class="form-control" type="text" name="admin" placeholder="행정동" required>
                                <div class="invalid-feedback">행정동이 입력되지 않았습니다!</div>
                            </div>

                            <div class="col-md-12 pt-3">
                                <textarea class="form-control" cols="50" rows="5" name="address" placeholder="주소" required><%=u.getAddress()%></textarea>
                                <div class="invalid-feedback">주소가 입력되지 않았습니다!</div>
                            </div>

                            <div class="col-md-12">
                                <input class="form-control" type="text" name="latitude" placeholder="위도" required>
                                <div class="invalid-feedback">위도가 입력되지 않았습니다!</div>
                            </div>

                            <div class="col-md-12">
                                <input class="form-control" type="text" name="longitude" placeholder="경도" required>
                                <div class="invalid-feedback">경도가 입력되지 않았습니다!</div>
                            </div>

                            <div class="form-button mt-3 d-flex justify-content-center">
                                <button id="submit" type="submit" class="btn btn-success mx-1">수정하기</button>
                                <button id="reset" type="reset" class="btn btn-outline-danger mx-1">초기화</button>
                                <button type="button" onclick="history.back()" class="btn btn-primary mx-1">취소</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        (function () {
            'use strict'
            const forms = document.querySelectorAll('.requires-validation')
            Array.from(forms)
                .forEach(function (form) {
                    form.addEventListener('submit', function (event) {
                        if (!form.checkValidity()) {
                            event.preventDefault()
                            event.stopPropagation()
                        }

                        form.classList.add('was-validated')
                    }, false)
                })
        })()
    </script>
</body>
</html>