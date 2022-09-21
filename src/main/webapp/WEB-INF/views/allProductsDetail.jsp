<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">전 제품 보기</h1>
                </div>
                <ul class="breadcrumb-nav">
                    <li><a href="/">Home</a></li>
                    <li>전 제품 보기</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<form action="order" method="get" class="order_form">
    <input type="hidden" name="orders[0].pd_num" value="${products.pd_num}"/>
    <input type="hidden" name="orders[0].order_stock" value=""/>
<!-- Start Item Details -->
<section class="item-details section">
    <div class="container">
        <div class="top-area">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="product-images">
                        <main id="gallery">
                            <div class="main-img">
                                <img src="${products.pd_mainImage}" id="current" alt="#">
                            </div>

                        </main>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="product-info">
                        <input type="hidden" class = "pd_num" value="${products.pd_num}"/>
                        <h2 class="title">${products.pd_name}</h2>
                        <p class="category"><i class="lni lni-tag"></i> ${products.ctg_Name}</p>
                        <h3 class="price"><fmt:formatNumber value="${products.pd_price}" pattern="###,###,###"/></h3>
                        <p class="info-text">${products.pd_content}</p>
                        <div class="row">

                            <div class="col-lg-4 col-md-4 col-12">
                                <div class="form-group quantity">
                                    <label for="color">구매 수량</label>
                                    <input type="text" class="quantity_input" value="1">
                                    <span>
                                        <button class="plus_btn">+</button>
                                        <button class="minus_btn">-</button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="bottom-content">
                            <div class="row align-items-end">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="button cart-button">
                                        <button class="addCart_btn" style="width: 100%;"><i class="bi bi-bag-plus"></i>장바구니</button>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="wish-button">
                                        <button class="buy_btn" onclick="location.href='/checkout'"><i class="bi bi-cash-coin"></i> 구매하기</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                    let quantity = $(".quantity_input").val();

                    $(".plus_btn").on("click", function (){
                        $(".quantity_input").val(++quantity);
                    });

                    $(".minus_btn").on("click", function (){
                        if(quantity > 1) {
                            $(".quantity_input").val(--quantity);
                        }
                    });


                    // 장바구니 추가 버튼
                    $(".addCart_btn").click(function() {
                        const pd_num = $(".pd_num").val();
                        const cart_stock = $(".quantity_input").val();

                        const data = {
                            pd_num : pd_num,
                            cart_stock : cart_stock
                        };

                        $.ajax({
                            url : '/cart/add',
                            type : 'post',
                            data : data,
                            success : function(result){
                                if(result == 0){
                                    alert("장바구니에 같은 상품이 있습니다.");
                                    $(".quantity_input").val("1");
                                    location.href = 'cart';
                                } else if(result == 1) {
                                    alert("장바구니에 추가되었습니다.");
                                    $(".quantity_input").val("1");
                                }  else if(result == 3) {
                                    alert("로그인이 필요합니다.");
                                    location.href = 'login';
                                }
                            },
                            error : function() {
                                alert("장바구니 담기 실패");
                            }
                        });
                    });
                </script>
                <script>
                    $(".buy_btn").on("click", function (){
                        let order_stock = $(".quantity_input").val();
                        $(".order_form").find("input[name = 'orders[0].order_stock']").val(order_stock);
                        $(".order_form").submit;
                    });
                </script>
            </div>
        </div>
        <div class="product-details-info">
            <div class="single-block">
                <div class="row">
                    <div class="col-lg-6 col-12">
                        <div class="info-body custom-responsive-margin">
                            <h4>Details</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
                                irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.</p>
                            <h4>Features</h4>
                            <ul class="features">
                                <li>Capture 4K30 Video and 12MP Photos</li>
                                <li>Game-Style Controller with Touchscreen</li>
                                <li>View Live Camera Feed</li>
                                <li>Full Control of HERO6 Black</li>
                                <li>Use App for Dedicated Camera Operation</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-12">
                        <div class="info-body">
                            <h4>Specifications</h4>
                            <ul class="normal-list">
                                <li><span>Weight:</span> 35.5oz (1006g)</li>
                                <li><span>Maximum Speed:</span> 35 mph (15 m/s)</li>
                                <li><span>Maximum Distance:</span> Up to 9,840ft (3,000m)</li>
                                <li><span>Operating Frequency:</span> 2.4GHz</li>
                                <li><span>Manufacturer:</span> GoPro, USA</li>
                            </ul>
                            <h4>Shipping Options:</h4>
                            <ul class="normal-list">
                                <li><span>Courier:</span> 2 - 4 days, $22.50</li>
                                <li><span>Local Shipping:</span> up to one week, $10.00</li>
                                <li><span>UPS Ground Shipping:</span> 4 - 6 days, $18.00</li>
                                <li><span>Unishop Global Export:</span> 3 - 4 days, $25.00</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-12">
                    <div class="single-block give-review">
                        <h4>4.5 (Overall)</h4>
                        <ul>
                            <li>
                                <span>5 stars - 38</span>
                                <i class="lni lni-star-filled"></i>
                                <i class="lni lni-star-filled"></i>
                                <i class="lni lni-star-filled"></i>
                                <i class="lni lni-star-filled"></i>
                                <i class="lni lni-star-filled"></i>
                            </li>
                            <li>
                                <span>4 stars - 10</span>
                                <i class="lni lni-star-filled"></i>
                                <i class="lni lni-star-filled"></i>
                                <i class="lni lni-star-filled"></i>
                                <i class="lni lni-star-filled"></i>
                                <i class="lni lni-star"></i>
                            </li>
                            <li>
                                <span>3 stars - 3</span>
                                <i class="lni lni-star-filled"></i>
                                <i class="lni lni-star-filled"></i>
                                <i class="lni lni-star-filled"></i>
                                <i class="lni lni-star"></i>
                                <i class="lni lni-star"></i>
                            </li>
                            <li>
                                <span>2 stars - 1</span>
                                <i class="lni lni-star-filled"></i>
                                <i class="lni lni-star-filled"></i>
                                <i class="lni lni-star"></i>
                                <i class="lni lni-star"></i>
                                <i class="lni lni-star"></i>
                            </li>
                            <li>
                                <span>1 star - 0</span>
                                <i class="lni lni-star-filled"></i>
                                <i class="lni lni-star"></i>
                                <i class="lni lni-star"></i>
                                <i class="lni lni-star"></i>
                                <i class="lni lni-star"></i>
                            </li>
                        </ul>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn review-btn" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                            Leave a Review
                        </button>
                    </div>
                </div>
                <div class="col-lg-8 col-12">
                    <div class="single-block">
                        <div class="reviews">
                            <h4 class="title">Latest Reviews</h4>
                            <!-- Start Single Review -->
                            <div class="single-review">
                                <img src="https://via.placeholder.com/150x150" alt="#">
                                <div class="review-info">
                                    <h4>Awesome quality for the price
                                        <span>Jacob Hammond
                                            </span>
                                    </h4>
                                    <ul class="stars">
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                    </ul>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                        tempor...</p>
                                </div>
                            </div>
                            <!-- End Single Review -->
                            <!-- Start Single Review -->
                            <div class="single-review">
                                <img src="https://via.placeholder.com/150x150" alt="#">
                                <div class="review-info">
                                    <h4>My husband love his new...
                                        <span>Alex Jaza
                                            </span>
                                    </h4>
                                    <ul class="stars">
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star"></i></li>
                                    </ul>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                        tempor...</p>
                                </div>
                            </div>
                            <!-- End Single Review -->
                            <!-- Start Single Review -->
                            <div class="single-review">
                                <img src="https://via.placeholder.com/150x150" alt="#">
                                <div class="review-info">
                                    <h4>I love the built quality...
                                        <span>Jacob Hammond
                                            </span>
                                    </h4>
                                    <ul class="stars">
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                    </ul>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                        tempor...</p>
                                </div>
                            </div>
                            <!-- End Single Review -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</form>
<!-- End Item Details -->

<%@ include file="layout/footer.jsp" %>