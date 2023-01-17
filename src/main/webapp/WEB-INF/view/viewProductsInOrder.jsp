<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Products in the Order</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="${pageContext.request.contextPath}/resources/img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
          
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="${pageContext.request.contextPath}/login_home">Home</a></li>
                            
                            
                            <!-- Customer navigation -->
                            <security:authorize access="hasRole('CUSTOMER')">
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="${pageContext.request.contextPath}/customer/viewOrders">Your Orders</a></li>
                            <li><a href="${pageContext.request.contextPath}/customer/viewCart"><i class="fa fa-shopping-bag"></i>Cart</a></li>
                            </security:authorize>
                            <!--li><a href="${pageContext.request.contextPath}/logout"><i class="fa fa-sign-out"></i> Sign Out</a></li-->
                            
                            <!--Staff navigation -->
                            <security:authorize access="hasRole('STAFF')">
                            <li><a href="#">Manage Online Orders</a>
                                <ul class="header__menu__dropdown">
                                    
                                    <li><a href="${pageContext.request.contextPath}/staff/viewProcessingOrders">Orders under process [DUE ORDERS]</a></li>
                                    <li><a href="${pageContext.request.contextPath}/staff/viewProcessedOrders">Processed Orders</a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/staff/viewCart"><i class="fa fa-shopping-bag"></i>Sale Cart</a></li>
                            </security:authorize>
                            
                            <!-- Admin navigation -->
                            <security:authorize access="hasRole('ADMIN')">
                            <li><a href="#">Manage Orders</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="${pageContext.request.contextPath}/admin/viewUnprocessedOrders">Unprocessed Orders</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/viewProcessingOrders">Orders under process</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/viewProcessedOrders">Processed Orders</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Manage Counters</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="${pageContext.request.contextPath}/admin/addOnlineCounter">Add Online Counter</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/viewOnlineCounters">View Online Counters</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/addOfflineCounter">Add Offline Counter</a></li>
                                    <li><a href="${pageContext.request.contextPath}/admin/viewOfflineCounters">View Offline Counters</a></li>
                                </ul>
                            </li>
                          
                            </security:authorize>
                            
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <div class="header__cart__price">
                        <!-- Add a logout button -->
                        	<form:form action="${pageContext.request.contextPath}/logout">
	
										<i class="fa fa-sign-out"></i><input type="submit" value="Sign out" class="site-btn" />
	
							</form:form>
						</div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->


    <

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Products in the Order</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <span>Products in the Order</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                  
                           			<th class="shoping__product">ID</th>
                                    <th class="shoping__product">Product</th>
                                    <th class="shoping__product">Description</th>
                                    <th class="shoping__product">Brand</th>
                                    <th class="shoping__product">Price</th>
                                    <th class="shoping__product">Quantity</th>
                                    <th class="shoping__product">Subtotal</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:forEach var="temp" items="${products}">
							  
                                <tr>
                                    <td class="shoping__cart__item">
                                        <h5>${temp.primaryKey.product.id}</h5>
                                    </td>
                                    <td class="shoping__cart__item">
                                        <!--  img src="${pageContext.request.contextPath}/resources/img/cart/cart-1.jpg" alt=""-->
                                        <h5>${temp.primaryKey.product.productName}</h5>
                                    </td>
                                     <td class="shoping__cart__item">
                                        <h5>${temp.primaryKey.product.productDes}</h5>
                                    </td>
                                    <td class="shoping__cart__item">
                                        <h5>${temp.primaryKey.product.brand.brandName}</h5>
                                    </td>
                                    <td class="shoping__cart__item">
                                        <h5>Rs. ${temp.primaryKey.product.MRP}</h5>
                                    </td>
                                    <td class="shoping__cart__item">
                                       <h5>${temp.quantity}</h5>
                                    </td>
                                    <td class="shoping__cart__item">
                                    	<h5><b>Rs. ${temp.quantity * temp.primaryKey.product.MRP}</b></h5>
                                    </td>
                                    
                                </tr>
                                </c:forEach>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <!--a href="${pageContext.request.contextPath}/login_home" class="primary-btn cart-btn">CONTINUE SHOPPING</a-->
                        <a href="${pageContext.request.contextPath}/customer/viewOrders" class="primary-btn cart-btn cart-btn-right">BACK</a>
                        <!--a href="#" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                            Update Cart</a -->
                    </div>
                </div>
           
               
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->

     <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address:<br>T.G. Samanta Road, Kenduadihi, Bankura, West Bengal - 722102</li>
                            <li>Phone: +91 9064612414</li>
                            <li>Email: kvs.bnk@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            
                        </ul>
                        <ul>
                            <li><a href="#">About Bankura</a></li>
                            <li><a href="#">About Our Shop</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Thank you for choosing us</h6>
                        <p>Connect with us in social media platforms</p>
                        <form action="#">
                            
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>  
        </div>
    </footer>
      <!-- Footer Section End -->
    	

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    

</body>

</html>