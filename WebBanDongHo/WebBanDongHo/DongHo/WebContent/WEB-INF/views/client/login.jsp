<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>Đồng Hồ | Đăng nhập</title>
<base href="${pageContext.servletContext.contextPath}/">
<style><%@include file="/WEB-INF/resources/css/login.css"%></style>
<style><%@include file="/WEB-INF/resources/css/reset.css"%></style>
<script type="text/javascript" src="js/query.js"></script>
<script src="https://www.google.com/recaptcha/api.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Source+Serif+Pro:ital@1&display=swap" rel="stylesheet">
</head>
<body>

	<form:form action="" modelAttribute="users">
	
		<div class="gom">
			<h4 style="color:red">${message}</h4>
			<h4 style="color:red">${message1}</h4>
			<h4 style="color:red">${message2}</h4>
            <h2>ĐĂNG NHẬP</h2>
            <h4 style="color:white;">Tên đăng nhập:</h4>
            <input type="text" name="username" />
            <h4 style="color:white;">Mật khẩu:</h4>
            <input type="password" name="password" />
            <!-- reCAPTCHA -->
      		<div class="g-recaptcha"
         	 data-sitekey="6LflvkkjAAAAAKzG621ZfSJmimBMXgqg2QtptYtw"></div>
            
            <button>Đăng nhập</button>
            <a href="user/forget-pass.htm">Quên mật khẩu</a>
            <p>
                Chưa có tài khoản?, <a href="user/register.htm" class="create">Tạo tài khoản tại đây!</a>
            </p>
            
        </div>
	</form:form>
</body>
</html>