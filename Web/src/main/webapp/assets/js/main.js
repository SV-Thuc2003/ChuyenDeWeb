/*  ---------------------------------------------------
Template Name: Ashion
Description: Ashion ecommerce template
Author: Colorib
Author URI: https://colorlib.com/
Version: 1.0
Created: Colorib
---------------------------------------------------------  */

(function ($) {

    /*------------------
        Preloader
    --------------------*/
    $(window).on('load', function () {
        $(".loader").fadeOut();
        $("#preloder").delay(200).fadeOut("slow");

        /*------------------
            Product filter
        --------------------*/
        $('.filter__controls li').on('click', function () {
            $('.filter__controls li').removeClass('active');
            $(this).addClass('active');
        });
        if ($('.property__gallery').length > 0) {
            var containerEl = document.querySelector('.property__gallery');
            var mixer = mixitup(containerEl);
        }
    });

    /*------------------
        Background Set
    --------------------*/
    $('.set-bg').each(function () {
        var bg = $(this).data('setbg');
        $(this).css('background-image', 'url(' + bg + ')');
    });

    //Search Switch
    $('.search-switch').on('click', function () {
        $('.search-model').fadeIn(400);
    });

    $('.search-close-switch').on('click', function () {
        $('.search-model').fadeOut(400, function () {
            $('#search-input').val('');
        });
    });

    //Canvas Menu
    $(".canvas__open").on('click', function () {
        $(".offcanvas-menu-wrapper").addClass("active");
        $(".offcanvas-menu-overlay").addClass("active");
    });

    $(".offcanvas-menu-overlay, .offcanvas__close").on('click', function () {
        $(".offcanvas-menu-wrapper").removeClass("active");
        $(".offcanvas-menu-overlay").removeClass("active");
    });

    /*------------------
		Navigation
	--------------------*/
    $(".header__menu").slicknav({
        prependTo: '#mobile-menu-wrap',
        allowParentLinks: true
    });

    /*------------------
        Accordin Active
    --------------------*/
    $('.collapse').on('shown.bs.collapse', function () {
        $(this).prev().addClass('active');
    });

    $('.collapse').on('hidden.bs.collapse', function () {
        $(this).prev().removeClass('active');
    });

    /*--------------------------
        Banner Slider
    ----------------------------*/
    $(".banner__slider").owlCarousel({
        loop: true,
        margin: 0,
        items: 1,
        dots: true,
        smartSpeed: 1200,
        autoHeight: false,
        autoplay: true
    });

    /*--------------------------
        Product Details Slider
    ----------------------------*/
    $(".product__details__pic__slider").owlCarousel({
        loop: false,
        margin: 0,
        items: 1,
        dots: false,
        nav: true,
        navText: ["<i class='arrow_carrot-left'></i>","<i class='arrow_carrot-right'></i>"],
        smartSpeed: 1200,
        autoHeight: false,
        autoplay: false,
        mouseDrag: false,
        startPosition: 'URLHash'
    }).on('changed.owl.carousel', function(event) {
        var indexNum = event.item.index + 1;
        product_thumbs(indexNum);
    });

    function product_thumbs (num) {
        var thumbs = document.querySelectorAll('.product__thumb a');
        thumbs.forEach(function (e) {
            e.classList.remove("active");
            if(e.hash.split("-")[1] == num) {
                e.classList.add("active");
            }
        })
    }


    /*------------------
		Magnific
    --------------------*/
    $('.image-popup').magnificPopup({
        type: 'image'
    });


    $(".nice-scroll").niceScroll({
        cursorborder:"",
        cursorcolor:"#dddddd",
        boxzoom:false,
        cursorwidth: 5,
        background: 'rgba(0, 0, 0, 0.2)',
        cursorborderradius:50,
        horizrailenabled: false
    });

    /*------------------
        CountDown
    --------------------*/
    // For demo preview start
    var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    var yyyy = today.getFullYear();

    if(mm == 12) {
        mm = '01';
        yyyy = yyyy + 1;
    } else {
        mm = parseInt(mm) + 1;
        mm = String(mm).padStart(2, '0');
    }
    var timerdate = mm + '/' + dd + '/' + yyyy;
    // For demo preview end


    // Uncomment below and use your date //

    /* var timerdate = "2020/12/30" */

	$("#countdown-time").countdown(timerdate, function(event) {
        $(this).html(event.strftime("<div class='countdown__item'><span>%D</span> <p>Day</p> </div>" + "<div class='countdown__item'><span>%H</span> <p>Hour</p> </div>" + "<div class='countdown__item'><span>%M</span> <p>Min</p> </div>" + "<div class='countdown__item'><span>%S</span> <p>Sec</p> </div>"));
    });

    /*-------------------
		Range Slider
	--------------------- */
	$(document).ready(function() {
        var rangeSlider = $(".price-range"),
            minamount = $("#minamount"),
            maxamount = $("#maxamount"),
            minPrice = rangeSlider.data('min'),  // Lấy giá trị tối thiểu từ data-min
            maxPrice = rangeSlider.data('max');  // Lấy giá trị tối đa từ data-max

        // Khởi tạo thanh trượt giá
        rangeSlider.slider({
            range: true,  // Chọn chế độ "range" để có 2 tay trượt (min và max)
            min: minPrice,
            max: maxPrice,
            values: [minPrice, maxPrice],  // Giá trị ban đầu cho 2 tay trượt
            slide: function(event, ui) {
                // Cập nhật giá trị cho ô nhập min và max khi kéo thanh trượt
                minamount.val(ui.values[0].toLocaleString() + "đ");
                maxamount.val(ui.values[1].toLocaleString() + "đ");
            }
        });
        // Hiển thị giá trị ban đầu trong các ô input khi trang tải lần đầu
        minamount.val(rangeSlider.slider("values", 0).toLocaleString() + "đ");
        maxamount.val(rangeSlider.slider("values", 1).toLocaleString() + "đ");

        $("#filter-price-btn").on('click', function() {
            applyPriceFilter();
        });

    });

     // Hàm lọc sản phẩm theo giá
     function applyPriceFilter() {
        const minPrice = parseInt($("#minamount").val().replace("đ", "").replace(/\./g, "").trim());
        const maxPrice = parseInt($("#maxamount").val().replace("đ", "").replace(/\./g, "").trim());

        let filteredProducts = products[currentCategory].filter(product => {
            const productPrice = parseInt(product.price.replace("đ", "").replace(",", ""));
            return productPrice >= minPrice && productPrice <= maxPrice;
        });

        // Hiển thị sản phẩm đã lọc
        displayProducts(filteredProducts);
    }
    /*------------------
		Single Product
	--------------------*/
	$('.product__thumb .pt').on('click', function(){
		var imgurl = $(this).data('imgbigurl');
		var bigImg = $('.product__big__img').attr('src');
		if(imgurl != bigImg) {
			$('.product__big__img').attr({src: imgurl});
		}
    });

    /*-------------------
		Quantity change
	--------------------- */
    var proQty = $('.pro-qty');
	proQty.prepend('<span class="dec qtybtn">-</span>');
	proQty.append('<span class="inc qtybtn">+</span>');
	proQty.on('click', '.qtybtn', function () {
		var $button = $(this);
		var oldValue = $button.parent().find('input').val();
		if ($button.hasClass('inc')) {
			var newVal = parseFloat(oldValue) + 1;
		} else {
			// Don't allow decrementing below zero
			if (oldValue > 0) {
				var newVal = parseFloat(oldValue) - 1;
			} else {
				newVal = 0;
			}
		}
		$button.parent().find('input').val(newVal);
    });

    /*-------------------
		Radio Btn
	--------------------- */
    $(".size__btn label").on('click', function () {
        $(".size__btn label").removeClass('active');
        $(this).addClass('active');
    });

    // Scroll to Top Button
    document.addEventListener("DOMContentLoaded", () => {
    // Tạo nút "Scroll to Top"
    const scrollToTopBtn = document.createElement("button");
    scrollToTopBtn.id = "scrollToTopBtn";
    scrollToTopBtn.title = "Go to top";
    scrollToTopBtn.textContent = "⬆";
    document.body.appendChild(scrollToTopBtn);

    // Hiển thị nút khi người dùng cuộn xuống
    window.onscroll = function () {
      if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        scrollToTopBtn.style.display = "block";
      } else {
        scrollToTopBtn.style.display = "none";
      }
    };

    // Di chuyển lên đầu trang khi nhấn vào nút
    scrollToTopBtn.onclick = function () {
      window.scrollTo({
        top: 0,
        behavior: "smooth", // Cuộn mượt
      });
    };
  });

})(jQuery);

 /*-------------------
	Sản Phẩm
--------------------- */
const products = {
    ro:[
        {
        name: "Máy lọc nước RO nóng nguội lạnh Sunhouse SHA76222KL",
        image: "img/shop/shop-1.png",
        price: "6.390.000đ",
        rating: 5,
        brand: "Sunhouse",
        category: "ro",
        features: ["hot", "cold", "plain", "energy-saving"]
    },
    {
        name: "Máy lọc nước RO Karofi KAQ-X18",
        image: "img/shop/shop-2.png",
        price: "5.190.000đ",
        rating: 4,
        brand: "Karofi",
        category: "ro",
        features: ["cold", "child-lock"] // Lạnh, khóa bảo vệ
    },
    {
        name: "Máy lọc nước RO Toshiba TWP-N2396VN(W)",
        image: "img/shop/shop-4.png",
        price: "6.700.000đ",
        rating: 4,
        brand: "Toshiba",
        category: "ro",
        features: ["cold", "warm", "temp"]
    },
    {
        name: "Máy lọc nước RO Kangaroo KG116I",
        image: "img/shop/shop-5.png",
        price: "4.420.000đ",
        rating: 3,
        brand: "Kangaroo",
        category: "ro",
        features: ["hot", "plain", "energy-saving"]
    },
],
nongNguoiLanh:[
    {
        name: "Máy lọc nước RO nóng nguội lạnh Sunhouse SHA76222KL",
        image: "img/shop/shop-1.png",
        price: "6.390.000đ",
        rating: 5,
        brand: "Sunhouse",
        category: "nongNguoiLanh",
        features: ["hot", "plain", "cold", "energy-saving"]
    },
    {
        name: "Máy lọc nước RO nóng nguội lạnh Toshiba TWP-W2396SVN(M)",
        image: "img/shop/shop-7.png",
        price: "11.040.000đ",
        rating: 5,
        brand: "Toshiba",
        category: "nongNguoiLanh",
        features: ["hot", "plain", "cold", "low"]
    },
    {
        name: "Máy lọc nước RO nóng nguội lạnh Kangaroo KG10A17",
        image: "img/shop/shop-6.png",
        price: "7.590.000đ",
        rating: 4,
        brand: "Kangaroo",
        category: "nongNguoiLanh",
        features: ["hot", "plain", "cold", "child-lock"]
    },
    {
        name: "Máy lọc nước RO nóng nguội lạnh Karofi KAD-X56",
        image: "img/shop/shop-3.png",
        price: "6.390.000đ",
        rating: 5,
        brand: "Karofi",
        category: "nongNguoiLanh",
        features: ["hot", "plain", "cold", "temp"]
    },
],
amBan:[
    {
        name: "Máy lọc nước RO Sunhouse SHA88117KV",
        image: "img/shop/shop-8.png",
        price: "4.808.000đ",
        rating: 5,
        brand: "Sunhouse",
        category: "amBan",
        features: ["hot", "plain", "energy-saving"]
    },
    {
        name: "Máy lọc nước RO AOSmith C2",
        image: "img/shop/shop-9.png",
        price: "6.820.000đ",
        rating: 4,
        brand: "AOSmith",
        category: "amBan",
        features: ["warm", "plain", "cold", "child-lock"]
    },
    {
        name: "Máy lọc nước RO Kangaroo KG110",
        image: "img/shop/shop-10.png",
        price: "5.098.000đ",
        rating: 4,
        brand: "Kangaroo",
        category: "amBan",
        features: ["plain", "cold", "energy-saving"]
    },
    {
        name: "Máy lọc nước RO Karofi KAQ-U06 ",
        image: "img/shop/shop-8.png",
        price: "6.108.000đ",
        rating: 5,
        brand: "Karofi",
        category: "amBan",
        features: ["plain", "energy-saving", "temp"]
    },
],
ionKiem:[
    {
        name: "Máy lọc nước điện giải ion kiềm nóng nguội lạnh ROBOT IonQueen 912X",
        image: "img/shop/shop-14.png",
        price: "31.990.000đ",
        rating: 3,
        brand: "ROBOT",
        category: "ionKiem",
        features: ["hot", "plain", "cold", "energy-saving", "child-lock"]
    },
    {
        name: "Máy lọc nước điện giải ion kiềm Kangen LeveLuk K8 8 tấm điện cực",
        image: "img/shop/shop-12.png",
        price: "30.590.000đ",
        rating: 4,
        brand: "Kangen LeveLuk",
        category: "ionKiem",
        features: ["hot", "cold", "energy-saving", "temp"]
    },
    {
        name: "Máy lọc nước điện giải ion kiềm Panasonic TK-AS45 3 tấm điện cực",
        image: "img/shop/shop-13.png",
        price: "22.770.000đ",
        rating: 4,
        brand: "Panasonic",
        category: "ionKiem",
        features: ["warm", "plain", "low"]
    },
    {
        name: "Máy lọc nước điện giải ion kiềm IonFarms Alpha-1700 2 lõi 7 tấm điện cực",
        image: "img/shop/shop-11.png",
        price: "51.990.000đ",
        rating: 5,
        brand: "IonFarms",
        category: "ionKiem",
        features: ["hot", "plain", "cold", "energy-saving", "child-lock"]
    },
],
};
let currentBrand = 'all';
let currentCategory = 'ro';
function displayProducts(filteredProducts) {
    const productContainer = document.querySelector('.product-row'); // Chọn container để chèn sản phẩm
    // Xóa hết sản phẩm hiện tại trong container
    productContainer.innerHTML = '';

    if (filteredProducts.length === 0) {
        productContainer.innerHTML = '<p>Không tìm thấy sản phẩm phù hợp.</p>';
        return;
    }

    filteredProducts.forEach(product => {
        const productHTML = `
            <div class="col-lg-4 col-md-6 mb-4 ${product.brand}">
                <div class="product__item">
                    <div class="product__item__pic set-bg" style="background-image: url('${product.image}');">
                        <ul class="product__hover">
                            <li><a href="${product.image}" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="wish_lists.html"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="ShoppingCartController?action=add&id=${product.id}"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="product-details.html">${product.name}</a></h6>
                        <div class="rating">
                            ${'<i class="fa fa-star" style="margin-right: 2px;"></i>'.repeat(product.rating)}
                        </div>
                        <div class="product__price">${product.price}</div>
                    </div>
                </div>
            </div>
        `;
        productContainer.innerHTML += productHTML;
    });
}

function filterProducts(brand, category) {
    currentBrand = brand; // Cập nhật thương hiệu đã chọn
    currentCategory = category; // Cập nhật danh mục đã chọn
    applyFilters();
}

function applyFilters() {
    let filteredProducts = products[currentCategory];

    // Lọc theo thương hiệu
    if (currentBrand !== 'all') {
        filteredProducts = filteredProducts.filter(product => product.brand === currentBrand);
    }

    // Lọc theo tính năng
    // const hotChecked = document.getElementById("feature-hot").checked;
    document.addEventListener("DOMContentLoaded", () => {
        const hotFeature = document.getElementById("feature-hot");
        if (hotFeature) {
            const hotChecked = hotFeature.checked;
        }
    });

    const coldChecked = document.getElementById("feature-cold").checked;
    const plainChecked = document.getElementById("feature-plain").checked;
    const warmChecked = document.getElementById("feature-warm").checked;

    const energyChecked = document.getElementById("feature-energy").checked;
    const lockChecked = document.getElementById("feature-lock").checked;
    const lowChecked = document.getElementById("feature-low").checked;
    const tempChecked = document.getElementById("feature-temp").checked;

    if (hotChecked || coldChecked || plainChecked || warmChecked || energyChecked || lockChecked || lowChecked || tempChecked) {
        filteredProducts = filteredProducts.filter(product => {
            return (
                (!hotChecked || product.features.includes("hot")) &&
                (!coldChecked || product.features.includes("cold")) &&
                (!plainChecked || product.features.includes("plain")) &&
                (!warmChecked || product.features.includes("warm")) &&

                (!energyChecked || product.features.includes("energy-saving")) &&
                (!lockChecked || product.features.includes("child-lock")) &&
                (!lowChecked || product.features.includes("low")) &&
                (!tempChecked || product.features.includes("temp"))
            );
        });
    }

    displayProducts(filteredProducts);
}

// Khi người dùng chọn danh mục hoặc thương hiệu, gọi hàm này để hiển thị sản phẩm
function handleCategorySelection(category) {
    // Khi chọn category, ta sẽ reset lại brand thành "all"
    currentBrand = 'all';  // Reset thương hiệu khi đổi category
    filterProducts(currentBrand, category);
}
// Gọi hàm để hiển thị sản phẩm
filterProducts('all', 'ro');

 /*---------------------
	Tin Tức (XemThem)
------------------------ */
function myFunction() {
    var x = document.getElementById('bld1');
    var btnrm = document.getElementById('readmore');
    if (x.style.display === 'block') {
        x.style.display = 'none';
        btnrm.innerText = "Xem thêm"
    } else {
        x.style.display = 'block';
        btnrm.innerText = "Thu gọn lại"
    }
}

