 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
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
<jsp:include page="header.jsp"></jsp:include>
<%-- <h4 style="color"><%= session.getAttribute("username") %></h4> --%>
 <!-- Image Slider -->
<div
      id="carouselExampleIndicators"
      class="carousel slide"
      data-ride="carousel"
    >
      <ol class="carousel-indicators">
        <li
          data-target="#carouselExampleIndicators"
          data-slide-to="0"
          class="active"
        ></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img
            class="d-block w-100"
            src="images/jiso_lens2.jpg"
            alt="First slide"
          />
        </div>
        <div class="carousel-item">
          <img
            class="d-block w-100"
            src="images/jenny_lens5.jpg"
            alt="Second slide"
          />
        </div>
        <div class="carousel-item">
          <img
            class="d-block w-100"
            src="images/lisa_lens.png"
            alt="Third slide"
          />
        </div>
        <div class="carousel-item">
          <img
            class="d-block w-100"
            src="images/roses_lens.png"
            alt="Third slide"
          />
        </div>
      </div>
      <a
        class="carousel-control-prev"
        href="#carouselExampleIndicators"
        role="button"
        data-slide="prev"
      >
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a
        class="carousel-control-next"
        href="#carouselExampleIndicators"
        role="button"
        data-slide="next"
      >
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>

    <hr
      style="
        width: 50%;
        height: 2px;
        border-width: 0;
        color: gray;
        background-color: gray;
      "
    />

    <!-- Welcome Section  -->
    <div class="container-fluid padding">
      <div class="row welcome text-center">
        <div class="col-12">
          <h1
            class="display-4"
            style="
              font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman',
                serif;
            "
            id="wc"
          >
            WELCOME TO LIN'S LENS
          </h1>
        </div>
        <hr />
        <div class="col-12">
          <p
            class="lead"
            style="
              font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman',
                serif;
            "
          >
            Contact Lens from KOREA
          </p>
        </div>
      </div>
    </div>
    <!-- Click for fun -->
    <button class="fun" data-toggle="collapse" data-target="#emoji">
      Click for fun
    </button>

    <div id="emoji" class="collapse">
      <div class="container-fluid padding">
        <div class="row text-center">
          <div class="col-sm-6 col-md-3">
            <img
              class="gif"
              src="images/gif/gif1.gif"
              width="200"
              height="200"
            />
          </div>
          <div class="col-sm-6 col-md-3">
            <img
              class="gif"
              src="images/gif/gif2.gif"
              width="200"
              height="200"
            />
          </div>
          <div class="col-sm-6 col-md-3">
            <img
              class="gif"
              src="images/gif/gif4.gif"
              width="200"
              height="200"
            />
          </div>
          <div class="col-sm-6 col-md-3">
            <img
              class="gif"
              src="images/gif/gif5.gif"
              width="200"
              height="200"
            />
          </div>
        </div>
      </div>
    </div>
    
    <!-- Three Column Section -->
    
    <div class="container-fluid padding">
      <div class="row padding">
        <div class="col-12 col-md-6">
          <div class="card">
            <img class="card-imd-top" src="images/col-1.jpg" />
          </div>
        </div>

        <div class="col-12 col-md-6">
          <div class="card">
            <img class="card-imd-top" src="images/col-2-2.jpg" />
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid padding">
      <div class="row padding">
        <div class="col-12 col-md-6">
          <div class="card">
            <img class="card-imd-top" src="images/col-3.jpg" />
          </div>
        </div>

        <div class="col-12 col-md-6">
          <div class="card">
            <img class="card-imd-top" src="images/col_4_4.jpg" />
          </div>
        </div>
      </div>
    </div>

    <hr
      style="
        width: 50%;
        height: 2px;
        border-width: 0;
        color: gray;
        background-color: gray;
      "
    />
    <!-- San pham ban chay nhat -->
    <div class="container-fluid padding">
      <div class="row text-center">
        <div class="col-12">
          <h5 class="display-2">Best Seller</h5>
        </div>
        <hr />
      </div>
    </div>

    <!-- Cards -->
    <div class="container-fluid padding">
      <div class="row padding">
        <div class="col-md-3">
          <div class="card">
            <img class="card-imd-top" src="images/Sapa_Gray5.jpg" />
            <div class="card-body">
              <h4 class="card-title">Sapa Gray</h4>
              <p class="card-text">Dia: 14.2 | Gdia: 13.1</p>
              <p class="card-text"><strong>329,000 VND</strong></p>
              <a href="#" class="btn btn-outline-secondary">Mua hàng</a>
            </div>
          </div>
        </div>

        <div class="col-md-3">
          <div class="card">
            <img class="card-imd-top" src="images/Sexy_brown.jpg" />
            <div class="card-body">
              <h4 class="card-title">Sexy Brown</h4>
              <p class="card-text">Dia: 14.2 | Gdia: 13.1</p>
              <p class="card-text"><strong>329,000 VND</strong></p>
              <a href="#" class="btn btn-outline-secondary">Mua hàng</a>
            </div>
          </div>
        </div>

        <div class="col-md-3">
          <div class="card">
            <img class="card-imd-top" src="images/Silky_Gray.jpg" />
            <div class="card-body">
              <h4 class="card-title">Silky Gray</h4>
              <p class="card-text">Dia: 14.2 | Gdia: 13.1</p>
              <p class="card-text"><strong>329,000 VND</strong></p>
              <a href="#" class="btn btn-outline-secondary">Mua hàng</a>
            </div>
          </div>
        </div>

        <div class="col-md-3">
          <div class="card">
            <img class="card-imd-top" src="images/HoiAn_Brown5.jpg" />
            <div class="card-body">
              <h4 class="card-title">Hoi An Brown</h4>
              <p class="card-text">Dia: 14.2 | Gdia: 13.1</p>
              <p class="card-text"><strong>329,000 VND</strong></p>
              <a href="detail.html" class="btn btn-outline-secondary"
                >Mua hàng</a
              >
            </div>
          </div>
        </div>
      </div>
    </div>
    
    
    <hr
      style="
        width: 50%;
        height: 2px;
        border-width: 0;
        color: gray;
        background-color: gray;
      "
    />
    <!-- Best Seller -->
    <div class="container-fluid padding">
      <div class="row welcome text-center">
        <div class="col-12">
          <h1 class="display-2">On Sale</h1>
        </div>
        <hr />
      </div>
    </div>
    <!-- slide product -->
    <div class="container-fluid padding">
      <div class="row padding">
        <div class="col-lg-2 col-md-3 col-sm-4 col-12">
          <div class="card">
            <img class="card-imd-top" src="images/blush_gray_02.jpg" />
            <div class="card-body">
              <h5 class="card-title">Blush Gray</h5>
              <p class="card-text">Dia: 14.2 | Gdia: 13.1</p>
              <p><del>400,000 VND</del></p>
              <p class="card-text"><strong>329,000 VND</strong></p>
              <a href="#" class="btn btn-outline-secondary">Mua hàng</a>
            </div>
          </div>
        </div>

        <div class="col-lg-2 col-md-3 col-sm-4 col-12">
          <div class="card">
            <img class="card-imd-top" src="images/Smokey_Gray3.jpg" />
            <div class="card-body">
              <h5 class="card-title">Smokey Gray</h5>
              <p class="card-text">Dia: 14.2 | Gdia: 13.1</p>
              <p><del>400,000 VND</del></p>
              <p class="card-text"><strong>329,000 VND</strong></p>
              <a href="#" class="btn btn-outline-secondary">Mua hàng</a>
            </div>
          </div>
        </div>

        <div class="col-lg-2 col-md-3 col-sm-4 col-12">
          <div class="card">
            <img class="card-imd-top" src="images/Elegant_Black.jpg" />
            <div class="card-body">
              <h5 class="card-title">Elegant Black</h5>
              <p class="card-text">Dia: 14.2 | Gdia: 13.1</p>
              <p><del>400,000 VND</del></p>
              <p class="card-text"><strong>329,000 VND</strong></p>
              <a href="#" class="btn btn-outline-secondary">Mua hàng</a>
            </div>
          </div>
        </div>

        <div class="col-lg-2 col-md-3 col-sm-4 col-12">
          <div class="card">
            <img class="card-imd-top" src="images/PhuQuoc_Gray.jpg" />
            <div class="card-body">
              <h5 class="card-title">Phu Quoc Gray</h5>
              <p class="card-text">Dia: 14.2 | Gdia: 13.1</p>
              <p><del>400,000 VND</del></p>
              <p class="card-text"><strong>329,000 VND</strong></p>
              <a href="#" class="btn btn-outline-secondary">Mua hàng</a>
            </div>
          </div>
        </div>

        <div class="col-lg-2 col-md-3 col-sm-4 col-12">
          <div class="card">
            <img class="card-imd-top" src="images/Sapa_Gray.jpg" />
            <div class="card-body">
              <h5 class="card-title">SaPa Gray</h5>
              <p class="card-text">Dia: 14.2 | Gdia: 13.1</p>
              <p><del>400,000 VND</del></p>
              <p class="card-text"><strong>329,000 VND</strong></p>
              <a href="#" class="btn btn-outline-secondary">Mua hàng</a>
            </div>
          </div>
        </div>

        <div class="col-lg-2 col-md-3 col-sm-4 col-12">
          <div class="card">
            <img class="card-imd-top" src="images/Silky_Gray.jpg" />
            <div class="card-body">
              <h5 class="card-title">Purple Star</h5>
              <p class="card-text">Dia: 14.2 | Gdia: 13.1</p>
              <p><del>400,000 VND</del></p>
              <p class="card-text"><strong>329,000 VND</strong></p>
              <a href="#" class="btn btn-outline-secondary">Mua hàng</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <hr
      style="
        width: 50%;
        height: 2px;
        border-width: 0;
        color: gray;
        background-color: gray;
      "
    />
     <!-- Phu kien -->
    <div class="container-fluid padding">
      <div class="row welcome text-center">
        <div class="col-12">
          <h1 class="display-2">Phụ Kiện</h1>
        </div>
        <hr />
      </div>
    </div>

    <div class="container-fluid padding">
      <div class="row padding">
        <div class="col-md-3">
          <div class="card">
            <img class="card-imd-top" src="images/coc_lens.jpg" />
            <div class="card-body">
              <h4 class="card-title">Cốc rửa lens</h4>
              <p><del>100,000 VND</del></p>
              <p class="card-text"><strong>70,000 VND</strong></p>
              <a href="#" class="btn btn-outline-secondary">Mua hàng</a>
            </div>
          </div>
        </div>

        <div class="col-md-3">
          <div class="card">
            <img class="card-imd-top" src="images/nuoc_lens.jpg" />
            <div class="card-body">
              <h4 class="card-title">Nước ngâm lens</h4>
              <p><del>100,000 VND</del></p>
              <p class="card-text"><strong>50,000 VND</strong></p>
              <a href="#" class="btn btn-outline-secondary">Mua hàng</a>
            </div>
          </div>
        </div>

        <div class="col-md-3">
          <div class="card">
            <img class="card-imd-top" src="images/nhomat_lens.jpg" />
            <div class="card-body">
              <h4 class="card-title">Thuốc nhỏ mắt lens</h4>
              <p><del>120,000 VND</del></p>
              <p class="card-text"><strong>100,000 VND</strong></p>
              <a href="#" class="btn btn-outline-secondary">Mua hàng</a>
            </div>
          </div>
        </div>

        <div class="col-md-3">
          <div class="card">
            <img class="card-imd-top" src="images/maydunglen.jpg" />
            <div class="card-body">
              <h4 class="card-title">Máy rửa lens</h4>
              <p><del>200,000 VND</del></p>
              <p class="card-text"><strong>120,000 VND</strong></p>
              <a href="#" class="btn btn-outline-secondary">Mua hàng</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <hr
      style="
        width: 50%;
        height: 2px;
        border-width: 0;
        color: gray;
        background-color: gray;
      "
    />
    <!-- Two Column Section -->
    <div class="container-fluid padding">
      <div class="row padding">
        <div class="col-lg-6">
          <h2
            style="
              font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman',
                serif;
            "
          >
            <strong>LỢI ÍCH CỦA VIỆC ĐEO LENS</strong>
          </h2>
          <p>
            - Ngoài công dụng chỉnh tật khúc xạ, kính áp tròng còn có tác dụng
            làm tăng tính thẩm mỹ, tạo cảm giác thoải mái, tự tin trong giao
            tiếp cho người sử dụng;
          </p>
          <p>
            - Tiện lợi: Kính áp tròng gọn, nhẹ, dễ sử dụng, không có gọng nên
            thích hợp với người chơi thể thao hoặc làm những công việc đòi hỏi
            các hoạt động mạnh. Đồng thời, kính áp tròng không bị nhòe đi khi đi
            mưa như kính gọng cổ điển;
          </p>
          <p>
            - Giúp tầm nhìn rộng hơn: Không giống kính gọng cổ điển bị giới hạn
            bởi gọng kính, kính áp tròng có thể di chuyển theo chuyển động của
            mắt, giúp người đeo dễ dàng quan sát xung quanh;
          </p>
          <!-- <p>- Bảo vệ mắt: Hầu hết các loại kính áp tròng hiện nay đều có 1 lớp chống lại tác hại của tia cực tím, giúp
            bảo vệ mắt.</p> -->
          <br />
          <a
            href="https://www.vinmec.com/vi/tin-tuc/thong-tin-suc-khoe/suc-khoe-tong-quat/kinh-ap-trong-va-nhung-dieu-can-biet/#:~:text=Gi%C3%BAp%20t%E1%BA%A7m%20nh%C3%ACn%20r%E1%BB%99ng%20h%C6%A1n,t%C3%ADm%2C%20gi%C3%BAp%20b%E1%BA%A3o%20v%E1%BB%87%20m%E1%BA%AFt."
            class="btn btn-primary"
            >Learn More</a
          >
        </div>
        <div class="col-lg-6">
          <a href="#">
            <img
              src="images/col-4.gif"
              style="height: 250px; width: 800px"
              class="img-fluid"
          /></a>
        </div>
      </div>
    </div>
   <jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>