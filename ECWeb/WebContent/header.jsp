<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="custom" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:setBundle basename="com.bundle" var="bundle"/>
<fmt:message key="logout" var="logoutStr" bundle="${bundle }"/>
<fmt:message key="login" var="loginStr" bundle="${bundle }"/>
<%@page import="com.bean.UserBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lens project</title>
    <!-- Page icon -->
    <link rel="shortcut icon" href="images/anh_page.png" />
    <!-- Style sheet -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
    />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <!-- Script -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
</head>
<body>
	<% String uri = request.getRequestURI(); %>

	<%
	String[] title = {"Trang chủ", "Lens màu", "Lens nhũ", "Lens trong suốt","Lens cho mắt thở","Cốc rửa Lens", "Nước ngâm Lens","Máy rửa Lens","Thuốc nhỏ mắt Lens","Đăng ","Liên hệ","Giỏ hàng"};
	int activeUri = 0;
	if ("/ECWeb/index.jsp".equals(uri)) {
		activeUri = 0;
	}
	if ("/ECWeb/lens_mau.jsp".equals(uri)) {
		activeUri = 1;
	}
	if ("/ECWeb/lens_nhu.jsp".equals(uri)) {
		activeUri = 2;
	}
	if ("/ECWeb/lens_trongsuot.jsp".equals(uri)) {
		activeUri = 3;
	}
	if ("/ECWeb/lens_mattho.jsp".equals(uri)) {
		activeUri = 4;
	}
	if ("/ECWeb/coc_dunglens.jsp".equals(uri)) {
		activeUri = 5;
	}
	if ("/ECWeb/nuocngamlens.jsp".equals(uri)) {
		activeUri = 6;
	}
	if ("/ECWeb/mayrualens.jsp".equals(uri)) {
		activeUri = 7;
	}
	if ("/ECWeb/thuocnhomatlens.jsp".equals(uri)) {
		activeUri = 8;
	}
	if ("/ECWeb/.jsp".equals(uri)) {
		activeUri = 9;
	}
	if ("/ECWeb/contact.jsp".equals(uri)) {
		activeUri = 10;
	}
	if ("/ECWeb/cart.jsp".equals(uri)) {
		activeUri = 11;
	}
	%>
<header>FREE SHIP CHO MỌI ĐƠN HÀNG TRÊN 2,000,0000 VND</header>
    <nav
      class="navbar navbar-expand-md navbar-light bg-light sticky-header"
      id="bg-black"
    >
      <div class="container-fluid">
        <a class="navbar-brand" <%= activeUri == 0 ? "class='active-nav'" : ""%>  href="/ECWeb/index.jsp"
          ><img
            src="images/anh_logo1.png"
            style="height: 100px; width: 150px"
            alt="logo"
        /></a>
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarResponsive"
          aria-controls="navbarResponsive"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav">
            <li class="nav-item active">
              <a class="nav-link" <%= activeUri == 0 ? "class='active-nav'" : ""%> href="/ECWeb/index.jsp"
                >Trang chủ <span class="sr-only">(current)</span></a
              >
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbar-sanpham"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                Sản phẩm</a
              >
              <ul class="dropdown-menu" aria-labelledby="navbar-sanpham">
                <li>
                  <a class="dropdown-item" <%= activeUri == 1 ? "class='active-nav'" : ""%>  href="/ECWeb/lens_mau.jsp">Lens màu</a>
                </li>
                <li>
                  <a class="dropdown-item"  <%= activeUri == 2 ? "class='active-nav'" : ""%>  href="/ECWeb/lens_nhu.jsp">Lens nhũ</a>
                </li>
                <li>
                  <a class="dropdown-item"  <%= activeUri == 3 ? "class='active-nav'" : ""%>  href="/ECWeb/lens_trongsuot.jsp"
                    >Lens trong suốt</a
                  >
                </li>
                <li>
                  <a class="dropdown-item"  <%= activeUri == 4 ? "class='active-nav'" : ""%>  href="/ECWeb/lens_mattho.jsp"
                    >Lens cho mắt thở</a
                  >
                </li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbar-sanpham"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                Phụ kiện</a
              >
              <ul class="dropdown-menu" aria-labelledby="navbar-sanpham">
                <li>
                  <a class="dropdown-item"  <%= activeUri == 5 ? "class='active-nav'" : ""%>  href="/ECWeb/coc_dunglens.jsp" 
                    >Cốc rửa lens</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" <%= activeUri == 6 ? "class='active-nav'" : ""%>  href="/ECWeb/nuocngamlens.jsp" 
                    >Nước ngâm lens</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" <%= activeUri == 7 ? "class='active-nav'" : ""%>  href="/ECWeb/mayrualens.jsp"
                    >Máy rửa lens</a
                  >
                </li>
                <li>
                  <a class="dropdown-item" <%= activeUri == 8 ? "class='active-nav'" : ""%>  href="/ECWeb/thuocnhomatlens.jsp"
                    >Thuốc nhỏ mắt lens</a
                  >
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link" <%= activeUri == 10 ? "class='active-nav'" : ""%>  href="/ECWeb/contact.jsp" >Liên hệ</a>
            </li>
          </ul>
        </div>
        
        
        <form class="form-inline">
          <input
            class="form-control mr-sm-2"
            type="search"
            placeholder="Search"
            aria-label="Search"
          />
          <button style="border: 1px solid black; color: black" class="btn btn-outline-success my-2 my-sm-0" type="submit">
            Search
          </button>
        </form>
        <% UserBean user=(UserBean)(session.getAttribute("user")); 
        	if(user!=null){ %>
        	<h4 style="margin: 25px; font-size: 30px;font-weight:bold"><%= user.getUsername() %></h4>
        	<a style="color: black" href="logout"><i class="fas fa-sign-out-alt" style="font-size: 35px;"></i></a>
        <% } else { %>	
        
        <a <%= activeUri == 9 ? "class='active-nav'" : ""%>  href="/ECWeb/login.jsp"
          >
          <img
            src="images/icon_login.png"
            style="height: 50px; width: 50px; margin-left: 25px"
            alt=""
        />
        </a>
        <% } %>
        	<a style="color: black;margin:0 15px 0 25px" <%= activeUri == 11 ? "class='active-nav'" : ""%>  href="/ECWeb/cart.jsp"
          ><i class="fas fa-cart-plus" style="font-size: 35px;"></i></a>
         
      </div>
    </nav>
 <script>
      (function ($) {
        "use strict";
        new WOW().init();

        //sticky navbar
        $(window).on("scroll", function () {
          var scroll = $(window).scrollTop();
          if (scroll < 35) {
            $(".sticky-header").removeClass("sticky");
          } else {
            $(".sticky-header").addClass("sticky");
          }
        });
      })(jQuery);
    </script>
</body>
</html>