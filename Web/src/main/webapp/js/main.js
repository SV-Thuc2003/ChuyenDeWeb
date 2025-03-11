/*  ---------------------------------------------------
Template Name: Ashion
Description: Ashion ecommerce template
Author: Colorib
Author URI: https://colorlib.com/
Version: 1.0
Created: Colorib
---------------------------------------------------------  */

(function ($) {

  $(document).ready(function() {
    var rangeSlider = $(".price-range"),
      minamount = $("#minamount"),
      maxamount = $("#maxamount"),
      minPrice = rangeSlider.data('min'),
      maxPrice = rangeSlider.data('max');

    // Khởi tạo thanh trượt giá
    rangeSlider.slider({
      range: true,
      min: minPrice,
      max: maxPrice,
      values: [minPrice, maxPrice],
      slide: function(event, ui) {
        // Cập nhật giá trị cho ô nhập min và max khi kéo thanh trượt
        minamount.val(ui.values[0].toLocaleString() + "đ");
        maxamount.val(ui.values[1].toLocaleString() + "đ");
        console.log("minPrice: " + ui.values[0]);
        console.log("maxPrice: " + ui.values[1]);

      }
    });

    // Hiển thị giá trị ban đầu trong các ô input khi trang tải lần đầu
    minamount.val(rangeSlider.slider("values", 0).toLocaleString() + "đ");
    maxamount.val(rangeSlider.slider("values", 1).toLocaleString() + "đ");

    // Lọc sản phẩm theo giá khi click vào nút "Lọc"
    $("#filter-price-btn").on('click', function() {
      const currentPage = 1;
      filterByPrice(currentPage);
    });
  });

  $(document).ready(function() {
    $('.filter').each(function () {
      $(this).on('click', function (event) {
        event.preventDefault(); // Ngăn không cho liên kết thực thi mặc định
        var category = $(this).data('category');
        var brand = $(this).data('brand');
        var minPrice = $(this).data('minPrice');
        var maxPrice = $(this).data('maxPrice');
        var select = $(this).data('select');

        // Tạo mảng để chứa các features được chọn
        var selectedFeatures = [];
        if ($('#feature-hot').prop('checked')) selectedFeatures.push('hot');
        if ($('#feature-cold').prop('checked')) selectedFeatures.push('cold');
        if ($('#feature-plain').prop('checked')) selectedFeatures.push('plain');
        if ($('#feature-warm').prop('checked')) selectedFeatures.push('warm');

        console.log('Selected Features:', selectedFeatures);
        // Lấy trang hiện tại từ URL hoặc mặc định là trang 1
        var urlParams = new URLSearchParams(window.location.search);
        var page = urlParams.get('page') || 1;

        // Xây dựng URL mới
        var newUrl = new URL(window.location.href);

        // Thêm category và brand vào URL nếu có giá trị hợp lệ
        if (category && category > 0) newUrl.searchParams.set('category', category);
        if (brand && brand !== '') newUrl.searchParams.set('brand', brand);

        // Thêm minPrice, maxPrice, và select vào URL nếu có giá trị hợp lệ
        if (minPrice !== undefined) newUrl.searchParams.set('minPrice', minPrice);
        if (maxPrice !== undefined) newUrl.searchParams.set('maxPrice', maxPrice);
        if (select !== undefined && select !== '') newUrl.searchParams.set('select', select);

        // Thêm features vào URL nếu có giá trị
        if (selectedFeatures.length > 0) {
          newUrl.searchParams.set('features', selectedFeatures.join(','));
        } else {
          newUrl.searchParams.delete('features');
        }

        // Thêm trang vào URL
        newUrl.searchParams.set('page', page);
        console.log(newUrl.href);
        // Cập nhật URL mà không làm mới trang
        window.history.pushState({ path: newUrl.href }, '', newUrl.href);

        // Gửi yêu cầu AJAX để cập nhật nội dung danh sách sản phẩm
        $.ajax({
          url: newUrl.href,  // Sử dụng URL đã cập nhật
          method: 'GET',
          success: function(response) {
            // Cập nhật lại nội dung sản phẩm trong phần #product-list
            $('#product-list').html($(response).find('#product-list').html());
          },
          error: function() {
            alert("Có lỗi xảy ra khi tải lại danh sách sản phẩm.");
          }
        });
      });
    });
  });

})(jQuery);
function filterByPrice (currentPage){
  const minPrice = $(".price-range").slider("values", 0);
  const maxPrice = $(".price-range").slider("values", 1);
  console.log("Min Price:", minPrice, "Max Price:", maxPrice);
  // Cập nhật URL với tham số minPrice, maxPrice và page
  const url = new URL(window.location.href);
  url.searchParams.set("minPrice", minPrice);
  url.searchParams.set("maxPrice", maxPrice);
  url.searchParams.set("page", currentPage);

  // Chuyển hướng đến URL mới
  window.location.href = url.toString();
}
