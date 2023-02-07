<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đồng Hồ | Thông tin cửa hàng</title>
<base href="${pageContext.servletContext.contextPath}/">
<style><%@include file="/WEB-INF/resources/css/about.css"%></style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<script type="text/javascript" src="js/query.js"></script>
<link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap"
      rel="stylesheet"
    />
<link href="https://fonts.googleapis.com/css2?family=Source+Serif+Pro:ital@1&display=swap" rel="stylesheet">
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
    <div class="content">

        <div class="container">
            <div class="item d-flex">
                <div class="text">
                    <h1>Giới thiệu chung về cửa hàng</h1>
                    <p>Thời điểm trước đây, đồng hồ đeo tay được xem như món đồ bảo bối của giới nhà giàu và không được bày bán, 
						đa số là được các binh lính của Pháp hay Mỹ “xách tay” qua mà thôi. Mãi đến năm 1980, khi đất nước giải phóng 
						hoàn toàn mới xuất hiện một vài cửa tiệm nhỏ bán đồng hồ dọc trên những tuyến đường nổi tiếng của Sài Gòn và Hà Nội.

						Trải qua một thời gian dài, đến nay Việt Nam trở thành một đất nước đang phát triển nhanh nhất thế giới 
						và thị trường đồng hồ tại đất nước hình chữ S thu hút hàng trăm thương hiệu danh tiếng trên thế giới phân phối. 
						Chính vì thế, kéo theo sự ra đời của rất nhiều cửa hàng đồng hồ bán lẻ ra đời. Hôm nay, chúng tôi sẽ giới thiệu 
						với Quý khách hàng toàn bộ những cửa hàng đồng hồ chính hãng uy tín và danh tiếng nhất hiện nay tại Việt Nam.</p>
                </div>
                <img src="https://3.bp.blogspot.com/-u8RFeLB9NxQ/V0Vev9NqOLI/AAAAAAAAB5Q/8zgoD8Psk1oT4ifv3drBFJXkmXONDfyYwCKgB/s1600/shop-dong-ho-go-vap.jpg" alt="">
            </div>
            <div class="agency d-flex">
                <ul>
                    <h1>Các cơ sở</h1>
                    <li class="d-flex">
                        <i class="fa fa-hand-point-right"></i>
                        <p>97 Man Thiện, Phường Tăng Nhơn Phú A, Thành phố Thủ Đức, TP. Hồ Chí Minh</p>
                    </li>
                    <li class="d-flex">
                        <i class="fa fa-hand-point-right"></i>
                        <p>99 Nguyễn Huệ, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh</p>
                    </li>
                    <li class="d-flex">
                        <i class="fa fa-hand-point-right"></i>
                        <p>101 Võ Văn Kiệt, Phường Nguyễn Thái Bình, Quận 1, TP. Hồ Chí Minh</p>
                    </li>
                </ul>
                <img src="https://erawatch.vn/wp-content/uploads/2017/10/2279246615102088390622005748473668505337085o.jpg" alt="">
            </div>
			<div class="bh d-flex">
			<h2 style="color: #000">Lỗi do nhà sản xuất:</h2>
                <table>
               		<tr>
               			<th>Tháng thứ nhất</th>
               			<th>Tháng thứ 2 trở đi</th>
               		</tr>
               		<tr>
               			<td>
               				<ul>
               					<li>- Một đổi một (cùng mẫu, cùng màu, cùng giá...).</li>
               					<li>- Trường hợp sản phẩm đổi hết hàng, khách hàng có thể đổi sang sản phẩm khác cùng nhóm hàng có giá trị lớn hơn 50% giá trị sản phẩm lỗi.</li>
               				</ul>
               			</td>
               			<td>
               				<ul>
               					<li>- Gửi túi bảo hành theo quy định của SHOP.</li>
               					<li>- Khách hàng trả đồng hồ & SHOP hoàn lại tiền và thu phí 5% so với mức hoàn tiền khi trả ở tháng thứ nhất.</li>
               				</ul>
               			</td>
               		</tr>
                </table>
            </div>
            <div class="bh d-flex">
			<h2 style="color: #000">Sản phẩm không lỗi:</h2>
                <table>
               		<tr>
               			<th>Tháng thứ nhất</th>
               			<th>Tháng thứ 2 trở đi</th>
               		</tr>
               		<tr>
               			<td>
               				<ul>
               					<li>- Hoàn lại tiền với giá trị bằng 80% giá trên hoá đơn.</li>
               				</ul>
               			</td>
               			<td>
               				<ul>
               					<li>- Hoàn lại tiền với mức phí thêm 5% so với tháng thứ nhất (80%).</li>
               				</ul>
               			</td>
               		</tr>
                </table>
            </div>
            <div class="bh d-flex" style="text-align: left">
			<h2 style="color: #000">Lỗi do người sử dụng:</h2>
                <table>
               		<tr>
               			<td>Không đủ điều kiện bảo hành theo qui định của SHOP.</td>
               		</tr>
               		<tr>
               			<td>Đồng hồ không giữ nguyên 100% hình dạng ban đầu.</td>
               		</tr>
               		<tr>
               			<td>Đồng hồ bị trầy xước.</td>
               		</tr>
               		<tr>
               			<th>=> Không áp dụng bảo hành, đổi trả. SHOP hỗ trợ bảo hành, khách hàng chịu chi phí sửa chữa.</th>
               		</tr>
                </table>
            </div>
             <div class="bh d-flex" style="text-align: left">
			<h2 style="color: #000">Hướng dẫn thanh toán:</h2>
                <table>
               		<tr>
               			<td>Đầu tiên các bạn chọn vào All Products, ở đây có các sản phẩm mà bạn muốn mua!</td>
               		</tr>
               		<tr>
               			<td>Sau đó bên dưới mỗi sản phẩm có nút Mua ngay, các bạn ấn vào nút sẽ có hiển thị sản phẩm, bạn chọn vào số lượng mà mình muốn mua và ấn thêm vào giỏ hàng.</td>
               		</tr>
               		<tr>
               			<td>Vậy là bạn đã đặt hàng xong, vui lòng chờ SHOP xác nhận bằng mail của bạn!</td>
               		</tr>
               		
                </table>
            </div>
        </div>
    </div>
    
    <div class="content1">
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