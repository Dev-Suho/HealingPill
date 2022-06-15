<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">장바구니</h1>
                </div>
                <ul class="breadcrumb-nav">
                    <li><a href="/">Home</a></li>
                    <li>장바구니</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<!-- Shopping Cart -->
<div class="shopping-cart section">
    <div class="container">
        <div class="cart-list-head">
            <!-- Cart List Title -->
            <div class="cart-list-title">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-12">

                    </div>
                    <div class="col-lg-4 col-md-3 col-12">
                        <p>상품명</p>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12">
                        <p>수량</p>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12">
                        <p>가격</p>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12">
                        <p>할인</p>
                    </div>
                    <div class="col-lg-1 col-md-2 col-12">
                        <p>삭제</p>
                    </div>
                </div>
            </div>
            <!-- End Cart List Title -->
            <!-- Cart Single List list -->
            <div class="cart-single-list">
                <div class="row align-items-center">
                    <div class="col-lg-1 col-md-1 col-12">
                        <a href="product-details.html"><img src="https://via.placeholder.com/220x200" alt="#"></a>
                    </div>
                    <div class="col-lg-4 col-md-3 col-12">
                        <h5 class="product-name"><a href="product-details.html">
                            Canon EOS M50 Mirrorless Camera</a></h5>
                        <p class="product-des">
                            <span><em>Type:</em> Mirrorless</span>
                            <span><em>Color:</em> Black</span>
                        </p>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12">
                        <div class="count-input">
                            <select class="form-control">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12">
                        <p>$910.00</p>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12">
                        <p>$29.00</p>
                    </div>
                    <div class="col-lg-1 col-md-2 col-12">
                        <a class="remove-item" href="javascript:void(0)"><i class="lni lni-close"></i></a>
                    </div>
                </div>
            </div>
            <!-- End Single List list -->
            <!-- Cart Single List list -->
            <div class="cart-single-list">
                <div class="row align-items-center">
                    <div class="col-lg-1 col-md-1 col-12">
                        <a href="product-details.html"><img src="https://via.placeholder.com/220x200" alt="#"></a>
                    </div>
                    <div class="col-lg-4 col-md-3 col-12">
                        <h5 class="product-name"><a href="product-details.html">
                            Apple iPhone X 256 GB Space Gray</a></h5>
                        <p class="product-des">
                            <span><em>Memory:</em> 256 GB</span>
                            <span><em>Color:</em> Space Gray</span>
                        </p>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12">
                        <div class="count-input">
                            <select class="form-control">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12">
                        <p>$1100.00</p>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12">
                        <p>—</p>
                    </div>
                    <div class="col-lg-1 col-md-2 col-12">
                        <a class="remove-item" href="javascript:void(0)"><i class="lni lni-close"></i></a>
                    </div>
                </div>
            </div>
            <!-- End Single List list -->
            <!-- Cart Single List list -->
            <div class="cart-single-list">
                <div class="row align-items-center">
                    <div class="col-lg-1 col-md-1 col-12">
                        <a href="product-details.html"><img src="https://via.placeholder.com/220x200" alt="#"></a>
                    </div>
                    <div class="col-lg-4 col-md-3 col-12">
                        <h5 class="product-name"><a href="product-details.html">HP LaserJet Pro Laser Printer</a></h5>
                        <p class="product-des">
                            <span><em>Type:</em> Laser</span>
                            <span><em>Color:</em> White</span>
                        </p>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12">
                        <div class="count-input">
                            <select class="form-control">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12">
                        <p>$550.00</p>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12">
                        <p>—</p>
                    </div>
                    <div class="col-lg-1 col-md-2 col-12">
                        <a class="remove-item" href="javascript:void(0)"><i class="lni lni-close"></i></a>
                    </div>
                </div>
            </div>
            <!-- End Single List list -->
        </div>
        <div class="row">
            <div class="col-12">
                <!-- Total Amount -->
                <div class="total-amount">
                    <div class="row">
                        <div class="col-lg-8 col-md-6 col-12">
                            <div class="left">

                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="right">
                                <ul>
                                    <li>장바구니 총 금액<span>$2560.00</span></li>
                                    <li>배송료<span>무료</span></li>
                                    <li class="last">결제 금액<span>$2531.00</span></li>
                                </ul>
                                <div class="button">
                                    <a href="/checkout" class="btn">결제하기</a>
                                    <a href="/allProducts" class="btn btn-alt">계속 쇼핑하기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/ End Total Amount -->
            </div>
        </div>
    </div>
</div>
<!--/ End Shopping Cart -->

<%@ include file="layout/footer.jsp" %>
