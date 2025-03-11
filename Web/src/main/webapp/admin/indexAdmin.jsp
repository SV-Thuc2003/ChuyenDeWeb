<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />

    <!-- Sale & Revenue Start -->
    <div class="container-fluid pt-4 px-4">
      <div class="row g-4">
        <div class="col-sm-6 col-xl-3">
          <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
            <i class="fa fa-chart-line fa-3x text-primary"></i>
            <div class="ms-3">
              <p class="mb-2">Doanh thu hôm nay</p>
              <h6 class="mb-0">500.000đ</h6>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-xl-3">
          <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
            <i class="fa fa-chart-bar fa-3x text-primary"></i>
            <div class="ms-3">
              <p class="mb-2">Đơn hàng hôm nay</p>
              <h6 class="mb-0">70</h6>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-xl-3">
          <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
            <i class="fa fa-chart-area fa-3x text-primary"></i>
            <div class="ms-3">
              <p class="mb-2">Sản phẩm bán được</p>
              <h6 class="mb-0">100</h6>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-xl-3">
          <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
            <i class="fa fa-chart-pie fa-3x text-primary"></i>
            <div class="ms-3">
              <p class="mb-2">Tổng doanh thu trong tháng</p>
              <h6 class="mb-0">1.000.000đ</h6>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Sale & Revenue End -->


    <!-- Sales Chart Start -->
    <div class="container-fluid pt-4 px-4">
      <div class="row g-4">
        <div class="col-sm-12 col-xl-6">
          <div class="bg-light text-center rounded p-4">
            <div class="d-flex align-items-center justify-content-between mb-4">
              <h6 class="mb-0">Đơn hàng & sản phẩm bán ra</h6>
            </div>
            <canvas id="worldwide-sales"></canvas>
          </div>
        </div>
        <div class="col-sm-12 col-xl-6">
          <div class="bg-light text-center rounded p-4">
            <div class="d-flex align-items-center justify-content-between mb-4">
              <h6 class="mb-0">Doanh số & doanh thu</h6>
            </div>
            <canvas id="salse-revenue"></canvas>
          </div>
        </div>
      </div>
    </div>
    <!-- Sales Chart End -->


    <!-- Recent Sales Start -->
    <div class="container-fluid pt-4 px-4">
      <div class="bg-light text-center rounded p-4">
        <div class="d-flex align-items-center justify-content-between mb-4">
          <h6 class="mb-0">Bán gần đây</h6>
        </div>
        <div class="table-responsive">
          <table class="table text-start align-middle table-bordered table-hover mb-0">
            <thead>
            <tr class="text-dark text-center">
              <th scope="col">Ngày</th>
              <th scope="col">Mã hóa đơn</th>
              <th scope="col">Khách hàng</th>
              <th scope="col">Thành tiền</th>
              <th scope="col">Trạng thái</th>
            </tr>
            </thead>
            <tbody class="text-center">
            <tr>
              <td>16/11/2024</td>
              <td>001</td>
              <td>Lili</td>
              <td>3.000.000</td>
              <td>Đã bán</td>
            </tr>
            <tr>
              <td>16/11/2024</td>
              <td>001</td>
              <td>Lili</td>
              <td>3.000.000</td>
              <td>Đã bán</td>
            </tr>
            <tr>
              <td>16/11/2024</td>
              <td>001</td>
              <td>Lili</td>
              <td>3.000.000</td>
              <td>Đã bán</td>
            </tr>
            <tr>
              <td>16/11/2024</td>
              <td>001</td>
              <td>Lili</td>
              <td>3.000.000</td>
              <td>Đã bán</td>
            </tr>
            <tr>
              <td>16/11/2024</td>
              <td>001</td>
              <td>Lili</td>
              <td>3.000.000</td>
              <td>Đã bán</td>
            </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <!-- Recent Sales End -->

    <!--Sản phẩm được xem nhiều-->
    <div class="container-fluid pt-4 px-4">
      <div class="bg-light text-center rounded p-4">
        <div class="d-flex align-items-center justify-content-between mb-4">
          <h6 class="mb-0">Top lượt xem gần đây</h6>
        </div>
        <div class="table-responsive">
          <table class="table text-start align-middle table-bordered table-hover mb-0">
            <thead>
            <tr class="text-dark text-center">
              <th scope="col">Ngày</th>
              <th scope="col">Mã sản phẩm</th>
              <th scope="col">Tên sản phẩm</th>
              <th scope="col">Lượt xem</th>
            </tr>
            </thead>
            <tbody class="text-center">
            <tr>
              <td>22/11/2024</td>
              <td>1</td>
              <td>Máy lọc nước nóng lạnh Toshiba</td>
              <td>200</td>
            </tr>
            <tr>
              <td>22/11/2024</td>
              <td>1</td>
              <td>Máy lọc nước nóng lạnh Toshiba</td>
              <td>200</td>
            </tr>
            <tr>
              <td>22/11/2024</td>
              <td>1</td>
              <td>Máy lọc nước nóng lạnh Toshiba</td>
              <td>200</td>
            </tr>
            <tr>
              <td>22/11/2024</td>
              <td>1</td>
              <td>Máy lọc nước nóng lạnh Toshiba</td>
              <td>200</td>
            </tr>
            <tr>
              <td>22/11/2024</td>
              <td>1</td>
              <td>Máy lọc nước nóng lạnh Toshiba</td>
              <td>200</td>
            </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <!--Sản phẩm được xem nhiều-->

<jsp:include page="/admin/footer.jsp" />


