<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tài khoản</title>
<!-- Page icon -->
  <link rel="shortcut icon" href="images/anh_page.png">
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
<jsp:include page="header.jsp"></jsp:include>

  <!-------account-------->
 
  <div class="container-fluid padding">
    <div class="row padding">
      <div class=" col-12 col-md-6 ">
        <div class="card">
          <img class="card-imd-top" src="images/jiso_lens.jpg">
        </div>
      </div>
  
      <div class="col-12 col-md-6 " id="mg-login">
        <div class="card" id="account-page"> 
          <div class="form-container" id="dn">
            <span onclick="login()" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">Đăng nhập</span>
            <span onclick="register()" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">Đăng ký</span>
            <hr id="indicator">
          <form  action="login" id="loginform" method="post">
              <input id="ip" type="text" placeholder="Tên đăng nhập" name="username" required>
              <input id="ip" type="password" placeholder="Mật khẩu" name="password" required>
              <button type="submit" class="bt" name="login">Đăng nhập</button>
              <a href="" style="text-decoration: none; color: black">Quên mật khẩu</a>
              <h4 style="color:red"><%= request.getAttribute("loginMessage") %></h4>
          </form>
          <form id="formdk">
              <input id="ip" type="text" placeholder="Tên đăng nhập">
              <input id="ip" type="email" placeholder="Email">
              <input id="ip" type="password" placeholder="Mật khẩu">
              <button type="submit" class="bt">Đăng ký</button>
          </form>
        </div>
      </div> 
      </div>
  
    </div>
  </div>

<jsp:include page="footer.jsp"></jsp:include>
<script>
    var loginform = document.getElementById("loginform");
    var formdk = document.getElementById("formdk");
    var indicator = document.getElementById("indicator");
    function register(){
        formdk.style.transform = "translateX(0px)";
        loginform.style.transform = "translateX(0px)";
        indicator.style.transform = "translateX(100px)";
    }
    function login(){
        formdk.style.transform = "translateX(300px)";
        loginform.style.transform = "translateX(300px)";
        indicator.style.transform = "translateX(0px)";
    }
</script>
</body>
</html>