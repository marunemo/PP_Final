<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>판매점 정보</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <!-- ref: https://www.bootdey.com/snippets/view/Event-Schedule-list -->
    <style>
        body {
            margin-top: 20px;
        }

        .event-store-area .section-title .title-text {
            margin-bottom: 50px;
        }

        .event-store-area .tab-area .nav-tabs {
            border-bottom: inherit;
        }

        .event-store-area .tab-area .nav {
            border-bottom: inherit;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            margin-top: 80px;
        }

        .event-store-area .tab-area .nav-item {
            margin-bottom: 75px;
        }

        .event-store-area .tab-area .nav-item .nav-link {
            text-align: center;
            font-size: 22px;
            color: #333;
            font-weight: 600;
            border-radius: inherit;
            border: inherit;
            padding: 0px;
            text-transform: capitalize !important;
        }

        .event-store-area .tab-area .nav-item .nav-link.active {
            color: #4125dd;
            background-color: transparent;
        }

        .event-store-area .tab-area .tab-content .table {
            margin-bottom: 0;
            width: 80%;
        }

        .event-store-area .tab-area .tab-content .table thead td,
        .event-store-area .tab-area .tab-content .table thead th {
            border-bottom-width: 1px;
            font-size: 20px;
            font-weight: 600;
            color: #252525;
        }

        .event-store-area .tab-area .tab-content .table td,
        .event-store-area .tab-area .tab-content .table th {
            border: 1px solid #b7b7b7;
            padding-left: 30px;
        }

        .event-store-area .tab-area .tab-content .table tbody th .heading,
        .event-store-area .tab-area .tab-content .table tbody td .heading {
            font-size: 16px;
            text-transform: capitalize;
            margin-bottom: 16px;
            font-weight: 500;
            color: #252525;
            margin-bottom: 6px;
        }

        .event-store-area .tab-area .tab-content .table tbody th span,
        .event-store-area .tab-area .tab-content .table tbody td span {
            color: #4125dd;
            font-size: 18px;
            text-transform: uppercase;
            margin-bottom: 6px;
            display: block;
        }

        .event-store-area .tab-area .tab-content .table tbody th span.date,
        .event-store-area .tab-area .tab-content .table tbody td span.date {
            color: #656565;
            font-size: 14px;
            font-weight: 500;
            margin-top: 15px;
        }

        .event-store-area .tab-area .tab-content .table tbody th p {
            font-size: 14px;
            margin: 0;
            font-weight: normal;
        }

        .event-store-area-two .section-title .title-text h2 {
            margin: 0px 0 15px;
        }

        .event-store-area-two ul.custom-tab {
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            border-bottom: 1px solid #dee2e6;
            margin-bottom: 30px;
        }

        .event-store-area-two ul.custom-tab li {
            margin-right: 70px;
            position: relative;
        }

        .event-store-area-two ul.custom-tab li a {
            color: #252525;
            font-size: 25px;
            line-height: 25px;
            font-weight: 600;
            text-transform: capitalize;
            padding: 35px 0;
            position: relative;
        }

        .event-store-area-two ul.custom-tab li a:hover:before {
            width: 100%;
        }

        .event-store-area-two ul.custom-tab li a:before {
            position: absolute;
            left: 0;
            bottom: 0;
            content: "";
            background: #4125dd;
            width: 0;
            height: 2px;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            transition: all 0.4s;
        }

        .event-store-area-two ul.custom-tab li a.active {
            color: #4125dd;
        }

        .event-store-area-two .primary-btn {
            margin-top: 40px;
        }

        .event-store-area-two .tab-content .table {
            -webkit-box-shadow: 0 1px 30px rgba(0, 0, 0, 0.1);
            box-shadow: 0 1px 30px rgba(0, 0, 0, 0.1);
            margin-bottom: 0;
        }

        .event-store-area-two .tab-content .table thead {
            background-color: #007bff;
            color: #fff;
            font-size: 20px;
        }

        .event-store-area-two .tab-content .table thead tr th {
            padding: 20px;
            border: 0;
        }

        .event-store-area-two .tab-content .table tbody {
            background: #fff;
        }

        .event-store-area-two .tab-content .table tbody tr.inner-box {
            border-bottom: 1px solid #dee2e6;
        }

        .event-store-area-two .tab-content .table tbody tr th {
            border: 0;
            padding: 30px 20px;
            vertical-align: middle;
        }

        .event-store-area-two .tab-content .table tbody tr th .event-date {
            color: #252525;
            text-align: center;
        }

        .event-store-area-two .tab-content .table tbody tr th .event-date span {
            font-size: 50px;
            line-height: 50px;
            font-weight: normal;
        }

        .event-store-area-two .tab-content .table tbody tr td {
            padding: 30px 20px;
            vertical-align: middle;
        }
        
        .event-store-area-two .tab-content .table tbody tr td.btn-layout {
            padding: 30px 0px;
            vertical-align: middle;
        }

        .event-store-area-two .tab-content .table tbody tr td .r-no span {
            color: #252525;
        }

        .event-store-area-two .tab-content .table tbody tr td .event-wrap h3 p {
            font-size: 22px;
            line-height: 20px;
            color: #cf057c;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            transition: all 0.4s;
        }

        .event-store-area-two .tab-content .table tbody tr td .event-wrap h3 p:hover {
            color: #4125dd;
        }

        .event-store-area-two .tab-content .table tbody tr td .event-wrap .meta p {
            color: #252525;
            font-size: 16px;
            line-height: 18px;
            margin-left: 10px;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            transition: all 0.4s;
        }

        .event-store-area-two .tab-content .table tbody tr td .event-wrap .meta p:before {
            content: " ";
            padding-right: 5px;
        }

        .event-store-area-two .tab-content .table tbody tr td .primary-btn {
            margin-top: 0;
            text-align: center;
        }

        .event-store-area-two .tab-content .table tbody tr td .event-img img {
            width: 100px;
            height: 100px;
            border-radius: 8px;
        }
    </style>
</head>

<body>
    <div class="event-store-area-two bg-color pad100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center">
                        <div class="title-text">
                            <h2>판매점 정보입니다</h2>
                        </div>
                        <p>도로명 주소로 검색해보세요.</p>
                        <a href="../login/logout">logout</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <hr>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade active show" id="home" role="tabpanel">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="text-center" scope="col">Id</th>
                                            <th class="text-center" scope="col">금융기관</th>
                                            <th class="text-center" scope="col">금융기관</th>
                                            <th class="text-center" scope="col">수정일</th>
                                            <th class="text-center" scope="col" colspan="2">수정 및 삭제</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${list}" var="u">
                                            <tr class="inner-box">
                                                <th scope="row">
                                                    <div class="event-date">
                                                        <span>${u.getSeq()}</span>
                                                        <p>판매점</p>
                                                    </div>
                                                </th>
                                                <td>
                                                    <div class="event-img">
                                                        <img src="https://t1.daumcdn.net/cfile/tistory/996A6F425C5D81CD15"
                                                            alt="이미지" />
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="event-wrap">
                                                        <h3><p>${u.getBelong()}</p></h3>
                                                        <div class="meta">
                                                            <p>${u.getName()}</p>
                                                            <p>${u.getAddress()}</p>
                                                            <p>${u.getLatitude()}, ${u.getLongitude()}</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="r-no"><span>${u.getRegdate()}</span></div>
                                                </td>
                                                <td class="btn-layout">
                                                    <div class="primary-btn">
                                                        <a class="btn btn-primary" href="editpost/${u.getSeq()}">수정하기</a>
                                                    </div>
                                                </td>
                                                <td class="btn-layout">
                                                    <div class="primary-btn">
                                                        <a class="btn btn-primary"
                                                            href="javascript:delete_ok('${u.getSeq()}')">삭제하기</a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="primary-btn text-center mb-3">
                            <a href="add" class="btn btn-primary">새 금융기관 등록하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'delete/' + id;
        }
    </script>
</body>
</html>