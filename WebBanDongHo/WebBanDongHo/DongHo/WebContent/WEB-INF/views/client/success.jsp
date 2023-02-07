<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quên mật khẩu</title>
<style><%@include file="/WEB-INF/resources/css/success.css"%></style>

<style><%@include file="/WEB-INF/resources/css/reset.css"%></style>
<script type="text/javascript" src="js/query.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Source+Serif+Pro:ital@1&display=swap" rel="stylesheet">
</head>
<body>

	<form:form action="../user/forget-pass.htm" modelAttribute="u">
		<label>Nhập Username của bạn:</label>
		<input type="text" name="username"/>
		<button>OK</button>
		<c:if test="${message == true}">
		<h3>Quên mật khẩu thành công, vui lòng kiểm tra email để xác nhận mật khẩu mới. Xin cảm ơn!!! <a href="../user/login.htm?se=false">Quay lại tại đây!</a></h3>
	</c:if>
	</form:form>
	
	
</body>
</html>