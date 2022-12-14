<%-- 
    Document   : Home
    Created on : Mar 3, 2022, 9:58:58 AM
    Author     : elll
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <!--link icons and bootstrap-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

        <!--link custom css-->
        <link rel="stylesheet" href="HomeStyle.css">
        <link rel="stylesheet" href="HomeTabStyle.css"> 
        <link rel="stylesheet" href="LoginStyle.css"> 
        <link rel="stylesheet" href="SignUpStyle.css"> 
        <link rel="stylesheet" href="UpdateAdminStyle.css"> 
    </head>
    <body>

        <!--header top-->
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
                        <div> <a href="Login.jsp">Login</a> </div>
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
                                    <a><i class="fa-solid fa-circle-user"></i>&nbsp;&nbsp;&nbsp;C?? Nh??n</a></li>
                                <li>
                                    <a href="AddProduct.jsp"><i class="fa-solid fa-upload"></i>&nbsp;&nbsp;&nbsp;????ng S???n Ph???m</a></li>
                                <li>
                                    <a href="designproduct"><i class="fa-solid fa-upload"></i>&nbsp;&nbsp;&nbsp;Design Product</a></li>
                                <li>
                                    <a href="ChangePass.jsp"><i class="fa-solid fa-arrow-rotate-right"></i>&nbsp;&nbsp;&nbsp;?????i Password</a></li>
                                <li>
                                    <a><i class="fa-solid fa-gear"></i>&nbsp;&nbsp;&nbsp;C??i ?????t</a></li>
                                <li>
                                    <a href="logout" class="logout_a">
                                        <i class="fa-solid fa-arrow-right-from-bracket"></i>&nbsp;&nbsp;&nbsp;????ng Xu???t
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

        <!--header_end-->
        <div class="header_bottom">
            <div class="header_bottom_logo">
                <a href="home"> <img src="images/Logo_2.png" /> </a>
            </div>
            <div class="header_bottom_menu">
                <li><a href="home">Trang ch???</a></li>
                <li><a href="buyhot">Truy???n B??n Ch???y</a></li>
                <li><a href="readhot">Truy???n Hot</a> </li>
                <li><a href="#">Truy???n M???i</a> </li>
                <li><a href="#">Review Truy???n</a></li>               
                <li><a href="#">Th?? vi???n Truy???n</a> </li>               
                <li><a href="tab">Th??? Lo???i Truy???n</a></li>
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

        <!--login form--> 
        <div class="signup_form">
            <h1>SignUp</h1>
            <div class="error">
                <a style="color: red">${requestScope.errorSignUp2}</a> 
               <a style="color: red">${requestScope.errorSignUp4}</a>
            </div>
            <div class="done">
                <a style="color: green">${requestScope.errorUpdateAdmin3}</a>
            </div>
            
            
            <form action="signup">
                <div class="username">
                    <a>Enter Username</a>
                    <div>
                        <input type="text" placeholder="Enter your username" name="username" value="${param.username}"/>
                    </div>   
                </div>
                <br/>
                <div class="newpassword">
                    <a>Enter New Password</a>
                    <div>
                        <input type="password" placeholder="Enter your password" name="password" value="${param.password}"/>
                    </div>   
                </div>           
                <br/>                          
                <div class="renewpassword">
                    <a>Re-enter New Password</a>
                    <div>
                        <input type="password" placeholder="Enter your password" name="repassword"/>
                    </div>   
                </div> 
                <br/>
                <div class="submit">
                    <input type="submit" value="SIGN IN">
                </div>
            </form>  
        </div>

        <div class="footer">
            <div>
                <div class="logo"> <img src="images/Logo_2.png" /> </div>
                <div class="comment">
                    BookStore l?? n???n t???ng m??? tr???c tuy???n, v???i nhi???u th??? lo???i s??ch kh??c nhau, v???i n???i 
                    dung phong ph??; m???i ng?????i c?? th??? th???o m??i t??m hi???u v?? mua c??c quy???n s??ch m?? m??nh 
                    y??u th??ch. C??c lo???i s??ch tr??n BookStore ???? ???????c ch???n l???c ????? ph?? h???p v???i m???i l???a 
                    tu???i t??? tr??? em ?????n th??nh ni??n r???i ?????n c??? v??? th??nh ni??n. Cu???i c??ng BookStore xin c???m ??n 
                    v?? chi ??n ch??n th??nh ?????n t???t c??? c??c ?????n kh??ch h??ng ???? gh?? qua v?? mua s??ch c???a ch??ng t??i!!! 
                </div>                
            </div>
            <br/>

            <div class="end_1">
                <div>Ch??nh s??ch b???o m???t</div> 
                <div>Quy ch??? ho???t ?????ng</div>
                <div>Ch??nh s??ch v???n chuy???n</div>
                <div>Ch??nh s??ch tr??? h??ng v?? ho??n ti???n</div>
            </div>
            <div class="end_2">
                <div>?????a ch???: ?????i h???c FPT H?? N???i t???a l???c t???i Khu C??ng ngh??? cao H??a L???c, Km29 ?????i l??? Th??ng Long, Huy???n Th???ch Th???t, H?? N???i</div>
            </div>
            <div class="contact">
                <a class="twitter" href="#"> <i class="fa-brands fa-twitter"></i> </a>
                <a class="google" href="#"> <i class="fa-brands fa-google"></i> </a>
                <a class="facebook" href="#"> <i class="fa-brands fa-facebook"></i> </a>
            </div>
        </div>
    </body>
</html>
