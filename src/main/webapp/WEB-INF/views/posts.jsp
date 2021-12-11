<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>store</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='delete/' + id;
	}
</script>
</head>
<body>
<h1>판매점 정보입니다.</h1>
<a href="../login/logout">logout</a>
<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>금융기관</th>
	<th>판매 및 환전처명</th>
	<th>주소</th>
	<th>위도</th>
	<th>경도</th>
	<th>생성날짜</th>
	<th>수정</th>
	<th>삭제</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getSeq()}</td>
		<td>${u.getBelong()}</td>
		<td>${u.getName()}</td>
		<td>${u.getAddress()}</td>
		<td>${u.getLatitude()}</td>
		<td>${u.getLongitude()}</td>
		<td>${u.getRegdate()}</td>
		<td><a href="editpost/${u.getSeq()}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><a href="add">Add New Post</a>
</body>
</html>