<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.localgift.giftlist.StoreVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
StoreVO u = (StoreVO)request.getAttribute("storeVO");
%>

<h1>Edit Form</h1>
<form action="../editok" method="post">
<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
<table>
<tr><td>금융기관명:</td><td><input type="text" name="belong" value="<%= u.getBelong()%>"/></td></tr>
<tr><td>판매 및 환전처명:</td><td><input type="text" name="name" value="<%= u.getName()%>"/></td></tr>
<tr><td>주소:</td><td><input type="text" name="address" value="<%= u.getAddress()%>"/></td></tr>
<tr><td>위도:</td><td><input type="text" name="latitude" value="<%= u.getLatitude()%>"/></td></tr>
<tr><td>경도:</td><td><input type="text" name="longitude" value="<%= u.getLongitude()%>"/></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>