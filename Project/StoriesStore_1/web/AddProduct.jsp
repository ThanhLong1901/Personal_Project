<%-- 
    Document   : addproduct
    Created on : Feb 28, 2022, 4:49:11 PM
    Author     : elll
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new Book</title>
        <!--link icons and bootstrap-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

        <!--link custom css-->
        <link rel="stylesheet" href="HomeStyle.css">
        <link rel="stylesheet" href="HomeTabStyle.css"> 
        <link rel="stylesheet" href="LoginStyle.css"> 
        <link rel="stylesheet" href="SignUpStyle.css"> 
        <link rel="stylesheet" href="UpdateAdminStyle.css"> 
        <link rel="stylesheet" href="UpdateProductStyle.css"> 
    </head>
    <body>
        <!--header-->
        <div class="header_top">

            <!--header_top_left-->
            <div class="header_top_left">
                <a class="twitter" href="#"> <i class="fa-brands fa-twitter"></i> </a>
                <a class="google" href="#"> <i class="fa-brands fa-google"></i> </a>
                <a class="facebook" href="#"> <i class="fa-brands fa-facebook"></i> </a>
            </div>

            <!--header_top_center-->
            <div class="header_top_center">
                <div class="header_top_center_phone"><i class="phone fa-solid fa-phone"></i>&nbsp;&nbsp;&nbsp;0123456789</div>
                <div class="header_top_center_time"><i class="clock fa-solid fa-clock"></i>&nbsp;&nbsp;&nbsp;9:00AM - 10:00PM</div>
            </div>

            <!--header_top_right-->
            <div class="header_top_right">
                    <div class="header_top_right_search">
                        <form action="search" method="get">
                            <input type="text" placeholder="Search here..." name="key"/>
                            <button type="submit" > <i class="fas fa-search"></i> </button>                        
                        </form>
                    </div>

                <!--login & registration-->
                <c:if test="${sessionScope.admin == null}">
                    <div class="header_top_right_sign_in">
                        <a href="Login.jsp"> <i class="fa-solid fa-arrow-right-to-bracket"></i> </a>
                        <div class="div_login"> <a href="Login.jsp">Login</a></div>
                    </div>
                    <div class="header_top_right_registration">
                        <a href="SignUp.jsp"> <i class="fa-solid fa-key"></i> </a>
                        <div> <a href="SignUp.jsp">Register</a> </div>
                    </div>                    
                </c:if>

                <!--logout-->
                <c:if test="${sessionScope.admin != null}">
                    <div class="header_top_right_regular">  
                        <a><i class="fa-solid fa-bars"></i></a>
                            <div class="ul">
                                <ul>
                                    <li>
                                        <a><i class="fa-solid fa-circle-user"></i>&nbsp;&nbsp;&nbsp;Cá Nhân</a></li>
                                    <li>
                                        <a href="AddProduct.jsp"><i class="fa-solid fa-upload"></i>&nbsp;&nbsp;&nbsp;Đăng Sản Phẩm</a></li>
                                    <li>
                                        <a href="designproduct"><i class="fa-solid fa-upload"></i>&nbsp;&nbsp;&nbsp;Design Product</a></li>
                                    <li>
                                        <a href="ChangePass.jsp"><i class="fa-solid fa-arrow-rotate-right"></i>&nbsp;&nbsp;&nbsp;Đổi Password</a></li>
                                    <li>
                                        <a><i class="fa-solid fa-gear"></i>&nbsp;&nbsp;&nbsp;Cài Đặt</a></li>
                                    <li>
                                        <a href="logout" class="logout_a">
                                            <i class="fa-solid fa-arrow-right-from-bracket"></i>&nbsp;&nbsp;&nbsp;Đăng Xuất
                                        </a>
                                    </li>
                                </ul>                           
                            </div>
                        <div class="div_logout">
                            <a>${sessionScope.admin.username}</a>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>

        <!--header_bottom-->
        <div class="header_bottom">
            <div class="header_bottom_logo">
                <a href="home"> <img src="images/Logo_2.png" /> </a>
            </div>
            <div class="header_bottom_menu">
                <li><a href="home">Trang chủ</a></li>
                <li><a href="buyhot">Truyện Bán Chạy</a></li>
                <li><a href="readhot">Truyện Hot</a></li>
                <li><a href="#">Truyện Mới</a></li>
                <li><a href="#">Review Truyện</a></li>               
                <li><a href="#">Thư viện Truyện</a></li>               
                <li><a href="tab">Thể Loại Truyện</a></li>
            </div>
            <c:set var="size" value="${sessionScope.size}" />
            <div class="icons">
                <a href="#" class="heart"> <i class="fa-regular fa-heart"></i> 
                    <small class="number_cart">
                        10
                    </small>
                </a>
                <a href="#" class="bell"> <i class="fa-regular fa-bell"></i> 
                    <small class="number_cart">
                        12
                    </small>
                </a>
                <a href="Cart.jsp" class="cart"> 
                    <i class="fa-solid fa-cart-arrow-down"></i> 
                    <small class="number_cart">
                        ${size}
                    </small>
                </a>
            </div>
        </div>

        <div class="update_product">
            <h1>Add New Book</h1>
            <h3 style="color: red">${requestScope.errorInsertBook}</h3>
            <form action="addproduct">
                <div class="table">
                    <div class="left">
                        <div>Book_ID</div>
                        <div>Book_Name</div>
                        <div>Book_Image</div>
                        <div>Book_Price</div>
                        <div>Book_Author</div>
                        <div>Book_Publisher</div>
                        <div>Book_Types</div>
                        <div>Book_Store</div>
                        <div>Book_Evaluate</div>
                    </div>
                    <div class="right">
                        <input type="text" name="id" value="${b.bookID}" /><br/>
                        <input type="text" name="name" value="${b.bookName}" /><br/>
                        <input type="text" name="image" value="${b.bookImage}" /><br/>
                        <input type="text" name="price" value="${b.bookPrice}" /><br/>
                        <input type="text" name="author" value="${b.bookAuthor}" /><br/>
                        <input type="text" name="publisher" value="${b.bookPublisher}" /><br/>
                        <input type="text" name="types" value="${b.bookTypes}" /><br/>
                        <input type="text" name="store" value="${b.bookStore}" /><br/>
                        <input type="text" name="evaluate" value="${b.bookEvaluate}" /><br/>
                    </div>                    
                </div>
                <div class="submit">
                    <input type="submit" value="SUBMIT"/>
                </div>

            </form>       
        </div>



        <!--footer-->
        <div class="footer">
            <div>
                <div class="logo"> <img src="images/Logo_2.png" /> </div>
                <div class="comment">
                    BookStore là nền tảng mở trực tuyến, với nhiều thể loại sách khác nhau, với nội 
                    dung phong phú; mọi người có thể thảo mãi tìm hiểu và mua các quyến sách mà mình 
                    yêu thích. Các loại sách trên BookStore đã được chọn lọc để phù hợp với mọi lứa 
                    tuổi từ trẻ em đến thành niên rồi đến cả vị thành niên. Cuối cùng BookStore xin cảm ơn 
                    và chi ân chân thành đến tất cả các đến khách hàng đã ghé qua và mua sách của chúng tôi!!! 
                </div>                
            </div>
            <br/>

            <div class="end_1">
                <div>Chính sách bảo mật</div> 
                <div>Quy chế hoạt động</div>
                <div>Chính sách vận chuyển</div>
                <div>Chính sách trả hàng và hoàn tiền</div>
            </div>
            <div class="end_2">
                <div>Địa chỉ: Đại học FPT Hà Nội tọa lạc tại Khu Công nghệ cao Hòa Lạc, Km29 Đại lộ Thăng Long, Huyện Thạch Thất, Hà Nội</div>
            </div>
            <div class="contact">
                <a class="twitter" href="#"> <i class="fa-brands fa-twitter"></i> </a>
                <a class="google" href="#"> <i class="fa-brands fa-google"></i> </a>
                <a class="facebook" href="#"> <i class="fa-brands fa-facebook"></i> </a>
            </div>
        </div>
    </body>
</html>
