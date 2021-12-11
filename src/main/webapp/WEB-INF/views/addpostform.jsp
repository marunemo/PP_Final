<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table>
<tr><td>금융기관명:</td><td><input type="text" name="belong"/></td></tr>
<tr><td>판매 및 환전처명:</td><td><input type="text" name="name"/></td></tr>
<tr><td>주소:</td><td><input type="text" name="address"/></td></tr>
<tr><td>위도:</td><td><input type="text" name="latitude"/></td></tr>
<tr><td>경도:</td><td><input type="text" name="longitude"/></td></tr>
<tr><td><a href="posts.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</table>
</form>

</body>
</html>