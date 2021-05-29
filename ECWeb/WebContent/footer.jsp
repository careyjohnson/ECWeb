<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer</title>
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
	String[] title = {"Trang chủ", "Lens màu", "Lens nhũ", "Lens trong suốt","Lens cho mắt thở","Cốc rửa Lens", "Nước ngâm Lens","Máy rửa Lens","Thuốc nhỏ mắt Lens","Tài khoản","Liên hệ","Giỏ hàng"};
	int activeUri = 0;
	if ("/ECWeb/LENS/index.jsp".equals(uri)) {
		activeUri = 0;
	}
	if ("/ECWeb/LENS/lens_mau.jsp".equals(uri)) {
		activeUri = 1;
	}
	if ("/ECWeb/LENS/lens_nhu.jsp".equals(uri)) {
		activeUri = 2;
	}
	if ("/ECWeb/LENS/lens_trongsuot.jsp".equals(uri)) {
		activeUri = 3;
	}
	if ("/ECWeb/LENS/lens_mattho.jsp".equals(uri)) {
		activeUri = 4;
	}
	if ("/ECWeb/LENS/coc_dunglens.jsp".equals(uri)) {
		activeUri = 5;
	}
	if ("/ECWeb/LENS/nuocngamlens.jsp".equals(uri)) {
		activeUri = 6;
	}
	if ("/ECWeb/LENS/mayrualens.jsp".equals(uri)) {
		activeUri = 7;
	}
	if ("/ECWeb/LENS/thuocnhomatlens.jsp".equals(uri)) {
		activeUri = 8;
	}
	if ("/ECWeb/LENS/account.jsp".equals(uri)) {
		activeUri = 9;
	}
	if ("/ECWeb/LENS/contact.jsp".equals(uri)) {
		activeUri = 10;
	}
	if ("/ECWeb/LENS/cart.jsp".equals(uri)) {
		activeUri = 11;
	}
	%>
	    <hr
      style="
        width: 50%;
        height: 2px;
        border-width: 0;
        color: gray;
        background-color: gray;
      "
    />
    <div class="container-fluid padding">
      <div class="row text-center padding">
        <div class="col-12">
          <h2>Contact us</h2>
        </div>
        <div class="col-12 social padding">
          <a href="https://www.facebook.com/thuylinh2114"
            ><i class="fab fa-facebook"></i
          ></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-google-plus-g"></i></a>
          <a href="https://www.instagram.com/214__thuyflinh/"
            ><i class="fab fa-instagram"></i
          ></a>
          <a href="https://www.youtube.com/channel/UCajl9ArY14d6He_N5vgNlCA"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
    </div>
    
    <footer>
      <div class="container-fluid padding">
        <div class="row text-center">
          <div class="col-md-4" id="ft">
          <a <%= activeUri == 0 ? "class='active-nav'" : ""%> href="/ECWeb/LENS/index.jsp">
            <img
              src="images/footer_2.png"
              style="margin-top: 10px; height: 50px; width: 320px"
            />
            </a>
            <hr class="light" />
            <p>Hotline: 19001001</p>
            <p>linh60725@gmail.com</p>
            <p>Dai Ang,Thanh Tri, Hanoi, Vietnam</p>
          </div>
          <div class="col-md-4" id="ft">
            <hr class="light" />
            <h5>Sản phẩm</h5>
            <hr class="light" />
            <p><a style="color:white" <%= activeUri == 1 ? "class='active-nav'" : ""%>  href="/ECWeb/LENS/lens_mau.jsp">Lens màu</a></p>
            <p><a style="color:white" <%= activeUri == 2 ? "class='active-nav'" : ""%>  href="/ECWeb/LENS/lens_nhu.jsp">Lens vân nhũ</a></p>
            <p><a style="color:white" <%= activeUri == 3 ? "class='active-nav'" : ""%>  href="/ECWeb/LENS/lens_trongsuot.jsp">Lens trong suốt</a></p>
            <p><a style="color:white" <%= activeUri == 4 ? "class='active-nav'" : ""%>  href="/ECWeb/LENS/lens_mattho.jsp">Lens cho mắt thở</a></p>
            <p></p>
          </div>
          <div class="col-md-4" id="ft">
            <hr class="light" />
            <h5>Phụ kiện</h5>
            <hr class="light" />
            <p><a style="color:white" <%= activeUri == 5 ? "class='active-nav'" : ""%>  href="/ECWeb/LENS/coc_dunglens.jsp" >Cốc rửa lens</a></p>
            <p><a style="color:white" <%= activeUri == 6 ? "class='active-nav'" : ""%>  href="/ECWeb/LENS/nuocngamlens.jsp" >Nước ngâm lens</a></p>
            <p><a style="color:white" <%= activeUri == 7 ? "class='active-nav'" : ""%>  href="/ECWeb/LENS/mayrualens.jsp">Máy rửa lens</a></p>
          </div>

          <div class="col-12">
            <hr class="light-100" />
            <h5>&copy; Designed by Linh Thuy</h5>
          </div>
        </div>
      </div>
    </footer>
</body>
</html>