<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giỏ hàng</title>
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
    <script src="https://unpkg.com/ionicons@5.5.1/dist/ionicons.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

    <!---Hero Section-->
    <section id="hero">
        <div class="hero-container">
            <div class="hero-logo">
                <h1 class="font-weight-bold">Cart Products</h1>
            </div>
            </div>
    </section>
    <!---End of Hero Section-->
	<section class="mt-5">
        <div class="container">
            <div class="cart">
            <div class="table-responsive">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col"class="text-white">Product</th>
                            <th scope="col"class="text-white">Price</th>
                            <th scope="col"class="text-white">Quantity</th>
                            <th scope="col"class="text-white">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="main">
                     <!--W=145 H=98--> <img src="images/Sapa_Gray.jpg"alt="" style="height: 120px;width: 120px;">
                                    <div class="des">
                                        <p>Sapa Gray </p>
                                        <br>
                                        <a href="">Remove</a>
                                    </div>
                                </div>
                                <div>

                                </div>
                            </td>
                            <td>
                                <h6>300,000 VND</h6>
                            </td>
                            <td>
                                <div class="counter">
                                    <i class="fas fa-angle-down"></i>
                                    <input class="input-number"type="text"
                                    value="1"min="0"max="10">
                                    <i class="fas fa-angle-up"></i>
                                </div>
                            </td>
                            <td>
                                <h6>300,000 VND</h6>
                            </td>
                        </tr>
                        <!----->
                        <tr>
                            <td>
                                <div class="main">
                                
                     <!--W=145 H=98--> <img src="images/Smokey_Gray2.jpg"alt="" style="height: 120px;width: 120px;">
                                  
                                    <div class="des">
                                        <p>Smokey Gray</p>
                                        <br>
                                        <a href="">Remove</a>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <h6>300,000 VND</h6>
                            </td>
                            <td>
                                <div class="counter">
                                    <i class="fas fa-angle-down"></i>
                                    <input class="input-number"type="text"
                                    value="1"min="0"max="10">
                                    <i class="fas fa-angle-up"></i>
                                </div>
                            </td>
                            <td>
                                <h6>300,000 VND</h6>
                            </td>
                        </tr>
                        <!----->
                        <tr>
                            <td>
                                <div class="main">
                                   
                     <!--W=145 H=98--> <img src="images/Silky_Gray.jpg"alt="" style="height: 120px;width: 120px;">
                                   
                                    <div class="des">
                                        <p>Silky Gray</p>
                                        <br>
                                        <a href="">Remove</a>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <h6>300,000 VND</h6>
                            </td>
                            <td>
                                <div class="counter">
                                    <i class="fas fa-angle-down"></i>
                                    <input class="input-number"type="text"
                                    value="1"min="0"max="10">
                                    <i class="fas fa-angle-up"></i>
                                </div>
                            </td>
                            <td>
                                <h6>300,000 VND </h6>
                            </td>
                        </tr>
                        <!----->
                    </tbody>
                </table>
            </div>
            </div>
        </div>
    </section>
    <hr style="width:50%; height:2px;border-width:0;color:gray;background-color:gray">


    <div class="col-lg-4 offset-lg-4">
        <div class="checkout">
            <table>
            <ul>
                <li class="subtotal">subtotal
                    <span>900,000 VND</span>
                </li>
                <li class="cart-total">Total
                <span>900,000 VND</span></li>
            </ul>
            <a href="#"class="proceed-btn">Proceed to Checkout</a>
        </table>
        </div>
    </div>
  


<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>