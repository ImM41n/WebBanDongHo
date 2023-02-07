<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Đồng Hồ | Đăng ký</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<base href="${pageContext.servletContext.contextPath}/">
<style>
<%@ include file="/WEB-INF/resources/css/register.css"%>
</style>

<style><%@include file="/WEB-INF/resources/css/reset.css"%></style>
<script type="text/javascript" src="js/query.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Source+Serif+Pro:ital@1&display=swap" rel="stylesheet">
<link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap"
      rel="stylesheet"
    />
</head>
<body>
	<form:form action="user/register.htm" name="register-form" method="post" modelAttribute="users">
	<script type="text/javascript">
		if(${message == true}){
			alert("Đăng ký tài khoản thành công!");
		}
		if(${message == false}){
			alert("Đăng ký tài khoản không thành công!");
		}
	</script>
	<div class="gom">
	
		<p>ĐĂNG KÝ</p>
		<h4 style="color:white;"> Tên người dùng: </h4> 
			<input type="text" name="username"> 
			<form:errors class="err" path="username"/>
			<br>
		<h4 style="color:white;"> Số điện thoại: </h4> 
			<input type="text" name="phone"> 
			<form:errors class="err" path="phone"/>
			<br>
		<h4 style="color:white;"> Email: </h4> 
			<input type="email" name="email"> 
			<form:errors class="err" path="email"/>
			<br>
		<h4 style="color:white;"> Địa chỉ: </h4> 
			<input type="text" name="address"> 
			<form:errors class="err" path="address"/>
			<br>
		<h4 style="color:white;"> Mật khẩu: </h4> 
			<input type="password" name="password"> 
			<form:errors class="err" path="password"/>
			<br>
		<h4 style="color:white;"> Xác nhận mật khẩu: </h4> 
			<input type="password" name="pass_conf">
		<button>Đăng ký</button>
		<p>
			Tôi đã có tài khoản, <a href="user/login.htm?se=true" class="login-here">Đăng nhập tại đây!</a>
		</p>
		
	</div>
	</form:form>
</body>
</html>
