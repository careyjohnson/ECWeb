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
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- product detail -->
 <div class="container-fluid padding">
    <div class="row padding">
      <div class="col-md-6">
        <div class="card">
          <img class="card-imd-top" src="images/HoiAn_Brown5.jpg">
          <div class="card-body">
          <h4 class="card-title">Hội An Brown</h4> 
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="card">
 
          <div class="card-body">
            <h1>Hội An Brown </h1>
            <h4>Mã sản phẩm: 04</h4>
            <p class="card-text">Giá sản phẩm: <strong>329,000 VND</strong></p>
            <p class="card-text">- Là mẫu lens hoàn hảo để đồng hành cùng Quý cô mỗi ngày, nổi bật với tông màu thời thượng,<strong>Hội An Brown</strong> tạo lên một vẻ đẹp thơ ngây, dịu dàng nhưng không kém phần kiêu sa, quyến rũ. Chỉ một lần nhìn sẽ nhớ mãi, chẳng thể quên.</p>
            <p class="card-text"><strong>- Nguyên liệu:</strong> 100% Silicone Hydrogel </p>
            <p class="card-text"> <strong>- Xuất xứ:</strong> Hàn Quốc</p>
            <p class="card-text"> <strong>- Hạn sử dụng:</strong> 06 tháng kể từ ngày mở vỉ</p>
            <p class="card-text"><strong>- Đơn vị tính:</strong>  02 vỉ/ hộp</p>
            <p class="card-text"><strong>- Thành phần nước:</strong> 45 %</p>
            <p class="card-text"><strong>- Đường kính:</strong> 14.2 mm</p>
            <p class="card-text"><strong>- Độ giãn tròng:</strong> 13.4mm (Giãn nhẹ)</p>
            <p class="card-text"><strong>- Bán kính cong:</strong> 8.7 mm</p>
            <p class="card-text"><strong>- Độ cận:</strong> 0 - 8</p>
            <input type="number" value="1" id="addproduct">
            <a href="#" class="btnadd">Thêm vào giỏ hàng</a>
          </div>
        </div>
      </div>

    </div>
  </div>

  <div class="container-fluid padding">
    <div class="row padding">
      <div class="col-md-4">
        <div class="card">
          <img class="card-imd-top" src="images/HoiAn_brown4.jpg">
          <div class="card-body">
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card">
          <img class="card-imd-top" src="images/HoiAn_brown.jpg">
          <div class="card-body">
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card">
          <img class="card-imd-top" src="images/HoiAn_Brown6.jpg">
          <div class="card-body">
          </div>
        </div>
      </div>


    </div>
  </div>
  
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>