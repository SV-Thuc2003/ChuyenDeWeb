// Lấy modal và các nút trong modal
var modal = document.getElementById("confirmationModal");
var span = document.getElementsByClassName("close")[0];
var confirmDelete = document.getElementById("confirmDelete");
var cancelDelete = document.getElementById("cancelDelete");

// Biến lưu ID sản phẩm cần xóa
var productIdToDelete = null;

// Xử lý khi nhấn vào icon xóa
document.querySelectorAll(".delete-icon").forEach(function (icon) {
  icon.onclick = function () {
    productIdToDelete = this.getAttribute("data-id"); // Lấy ID từ data-id
    modal.style.display = "block"; // Hiển thị modal
  };
});

// Đóng modal khi nhấn "Hủy" hoặc biểu tượng đóng
span.onclick = cancelDelete.onclick = function () {
  modal.style.display = "none";
  productIdToDelete = null; // Reset ID
};

// Xử lý xác nhận xóa
confirmDelete.onclick = function () {
  if (productIdToDelete) {
    alert("Đã xóa sản phẩm với ID: " + productIdToDelete);
    modal.style.display = "none";
    productIdToDelete = null;
    // Gửi yêu cầu xóa tới server tại đây (sử dụng fetch hoặc AJAX)
  }
};
