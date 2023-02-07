<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đồng Hồ | Trang chủ</title>
<base href="${pageContext.servletContext.contextPath}/">
<style><%@include file="/WEB-INF/resources/css/style.css"%></style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<%-- <style><%@include file="/WEB-INF/resources/css/reset.css"%></style> --%>
<link href="https://fonts.googleapis.com/css2?family=Source+Serif+Pro:ital@1&display=swap" rel="stylesheet">
  <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap"
      rel="stylesheet"
    />
 <script src="<c:url value="https://code.jquery.com/jquery-3.5.1.min.js" />"></script>
 <script src="js/query.js"></script>
</head>
<body>
<header>
        <div class="container d-flex">
            <div class="logo">
                <a href="">
                    <img src="img/logo.png" alt="không có ảnh">
                </a>
            </div>
            <div class="login_search_contact">
                <div class="login_search d-flex">
                    <div class="search d-flex">
                        <input type="search" id="search" onkeyup="myFunction()" placeholder="Search for names..">
                        <i class="fa fa-search"></i>
                        <ul id="myUL" class="none">
	                        <c:forEach var="t" items="${product}">
	                        	<li><a href="user/show_prod.htm?code=${t.code}">${t.name}</a></li>
	                        </c:forEach>
                        </ul>
                    </div>
                    <div class="login d-flex">
                        <c:if test="${sessionScope.username == null}">
                        
	                    		<a href="user/login.htm?se=true">Đăng nhập</a>
	                        	<a href="user/register.htm">Đăng ký</a>
                        
                        </c:if>
                        <c:if test="${sessionScope.username != null}">
                        
	                    		<a href="user/infor.htm">${sessionScope.username}</a>
	                        	<a href="user/login.htm?se=false">Đăng xuất</a>
                        
                        </c:if>
                    </div>
                </div>
                <div class="contact d-flex">
                    <div class="phone_num d-flex">
                        <i class="fa fa-mobile"></i>
                        <a href="">+(84)538282832</a>
                    </div>
                    <div class="mail">
                        <i class="fa fa-envelope"></i>
                        <a href="https://mail.google.com/">tad9879@gmail.com</a>
                    </div>
                    <div class="address">
                        <i class="fa fa-map-marker"></i>
                        <a href="https://goo.gl/maps/b5xp9Yk3XmkCmaao8">Google Maps</a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="title">
        <div class="container d-flex">
            <div class="navbar">
                <ul class="d-flex">
                    <li><a href="user/home.htm">Trang chủ</a></li>
                    <li><a href="user/about.htm">Thông tin</a></li>
                    <li class="dropdown d-flex">
                        <a href="user/product.htm">
                            Tất cả sản phẩm
                            <i class="fa fa-chevron-down"></i>
                        </a>
                        <ul class="menu-sh">
                             <c:forEach var="t" items="${product_type}">
                            	<li><a href="user/${t}.htm?code=${t}">${t}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="cart">
                <a href="user/cart.htm?se=true" class="d-flex">
                    <i class="fa fa-cart-arrow-down"></i>
                    <p>Giỏ: <span>${count}</span> sản phẩm</p>
                </a>
            </div>
        </div>
    </div>
    <div class="show">
        <div class="container">
            <div class="poster d-flex">
                <img
                src="https://thumbs.dreamstime.com/b/hamburg-germany-september-casio-logo-building-232912676.jpg">
                
                <div class="text right">
                    <h3>SEIKO</h3>
                    <p>Khởi đầu khiêm tốn nhưng đã vươn mình trở thành một trong những tập đoàn đồng hồ hàng đầu thế giới, bao phủ từ dòng sản phẩm phổ thông cho tới những thiết kế xa xỉ và đắt đỏ, Seiko đã cho thấy những thành quả vĩ đại xuất phát từ tinh thần cầu thị và kiên trì của Nhật Bản.
                    </p>
                </div>
            </div>
            <div class="poster d-flex">
                <div class="text left">
                    <h3>CASIO</h3>
                    <p>Nếu bạn đang tìm kiếm một chiếc đồng hồ pha trộn giữa thiết kế hoàn mĩ với các công nghệ mới nhất, pha trộn giữa vẻ ngoài hoàn hảo và độ chắc chắc tuyệt vời. Bạn có thể tìm thấy điều đó ở các sản phẩm Casio. Casio được biết đến trên toàn thế giới kể từ năm 1974 khi lần đầu tiên giới thiệu mẫu đồng hồ điện tử với lịch tự động, từ đó Casio phát triển không ngừng và ngày nay hãng đã trở thành một thương hiệu nổi tiếng trên toàn thế giới với các sản phẩm đồng hồ điện tử tiên tiến nhất cùng kiểu dáng bắt mắt và chức năng độc đáo.
                    </p>
                </div>
                <img
                 src="https://cdn.watchstore.vn/uploads/editor/seiko-7D1804-1-1629365074943.jpg">
                   <!-- src="https://instagram.fsgn3-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/93519979_2641190519484439_4877648201690531503_n.jpg?_nc_ht=instagram.fsgn3-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=p4zoDsqVyToAX_JZtAM&oh=002acc5d1bacf0be08c957254f9a77e2&oe=5ECF19E5">-->

            </div>
        </div>
    </div>
    <div class="background">
        <h1>Sản phẩm nổi bật</h1>
        <div class="container d-flex">
            <div class="item">
                <img src="https://cdn3.dhht.vn/wp-content/uploads/2018/06/68_EFV-550L-1AVUDF-1-699x699.jpg" alt="không có ảnh">
                <p>Mẫu Casio EFV-550L-1AVUDF mang đến cho phái mạnh vẻ ngoài lịch lãm nhưng cũng không kém phần trẻ trung đặc trưng thuộc dòng Edifice với kiểu dáng đồng hồ 6 kim đi kèm tính năng đo thời gian Chronograph</p>
                <a href="user/product.htm">Buy now!</a>
            </div>
            <div class="item">
                <img src="https://cdn3.dhht.vn/wp-content/uploads/2018/01/6_D154TWH-699x699.jpg" alt="không có ảnh">
                <p>Mẫu Doxa D154TWH phiên bản giới hạn 1000 chiếc trên toàn thế giới, sự kết hợp cách điệu giữa các vạch số cùng chữ số la mã được mạ vàng sang trọng, mạnh mẽ, điểm nhấn với nền mặt số Skeleton lộ máy.</p>
                <a href="user/product.htm">Buy now!</a>
            </div>
            <div class="item">
                <img src="https://cdn3.dhht.vn/wp-content/uploads/2017/07/EM0502-86P-699x699.jpg" alt="không có ảnh">
                <p>Mẫu đồng hồ nữ Citizen EM0502-86P các vạch số được thiết kế gia công với kiểu dáng thanh mảnh, ấn tượng với sự kết hợp giữa vỏ máy cùng dây đeo dạng lưới bằng kim loại mạ vàng khoác lên vẻ sang trọng.</p>
                <a href="user/product.htm">Buy now!</a>
            </div>
            <!-- <i class="left-i fas fa-chevron-left"></i>
            <i class="right-i fas fa-chevron-right"></i> -->
        </div>
    </div>
    <div class="content">
        <div class="container">
            <div class="customer d-flex">
                <ul>
                    <h1>Hỗ trợ khách hàng</h1>
                    <li><i class="fa fa-hand-point-right"></i><a href="">Chính sách bảo hành</a></li>
                    <li><i class="fa fa-hand-point-right"></i><a href="">Chính sách đổi trả</a></li>
                    <li><i class="fa fa-hand-point-right"></i><a href="">Phương thức thanh toán</a></li>
                    <li><i class="fa fa-hand-point-right"></i><a href="">Hướng dẫn đặt hàng</a></li>
                </ul>
                <ul>
                    <h1>Thông tin liên hệ</h1>
                    <li>Địa chỉ: 97 Man Thiện, Phường Tăng Nhơn Phú A, Thành phố Thủ Đức, Thành phố Hồ Chí Minh</li>
                    <li>Số điện thoại: +84538282832</li>
                    <li>Thời gian làm việc: 8:00 - 22:00</li>
                    <li>Website: dongho.com</li>
                    <li>Email: tad9879@gmail.com</li>
                    <li>
                    	<a href="">
                    		<i class="fa fa-facebook"></i>
                    	</a>
                    	<a href="">
                    		<i class="fa fa-instagram"></i>
                    	</a>
                    	<a href="">
                    		<i class="fa fa-twitter"></i>
                    	</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>

</html>