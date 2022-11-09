<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">결제하기</h1>
                </div>
                <ul class="breadcrumb-nav">
                    <li><a href="/">Home</a></li>
                    <li>결제하기</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<!--====== Checkout Form Steps Part Start ======-->
<section class="checkout-wrapper section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="checkout-steps-form-style-1">
                    <ul id="accordionExample">
                        <li>
                            <h6 class="title" data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                aria-expanded="true" aria-controls="collapseThree">주문자 정보 </h6>
                            <section class="checkout-steps-form-content collapse show" id="collapseThree"
                                     aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <label>이름</label>
                                            <div class="row">
                                                <div class="col-md-6 form-input form">
                                                    <input type="text" placeholder="이름" name="order_name" value="${member.mem_username}">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="single-form form-default">
                                            <label>전화번호</label>
                                            <div class="form-input form">
                                                <input type="text" placeholder="전화번호" name="order_phone" value="${member.mem_phone}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <label>이메일</label>
                                            <div class="form-input form">
                                                <input type="text" placeholder="이메일" name="order_email" value="${member.mem_email}" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="single-form form-default">
                                            <label>우편번호</label>
                                            <div class="form-input form">
                                                <input type="text" name="mem_address1" placeholder="우편번호" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <label>주소</label>
                                            <div class="form-input form">
                                                <input type="text" name="mem_address2" placeholder="주소">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <label>상세주소</label>
                                            <div class="form-input form">
                                                <input type="text" name="mem_address3" placeholder="상세주소">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form button">
                                            <button class="btn" data-bs-toggle="collapse"
                                                    data-bs-target="#collapseFour" aria-expanded="false"
                                                    aria-controls="collapseFour">다음</button>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </li>
                        <li>
                            <h6 class="title collapsed" data-bs-toggle="collapse" data-bs-target="#collapseFour"
                                aria-expanded="false" aria-controls="collapseFour">상품 정보</h6>
                            <section class="checkout-steps-form-content collapse" id="collapseFour"
                                     aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                                <div class="row">
                                    <!-- Shopping Cart -->
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
                                                        <div class="col-lg-3 col-md-2 col-12">
                                                            <p>수량</p>
                                                        </div>
                                                        <div class="col-lg-4 col-md-2 col-12">
                                                            <p>상품 금액</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- End Cart List Title -->
                                                <c:forEach items="${cartList}" var="products">
                                                <!-- Cart Single List list -->
                                                <div class="cart-single-list">
                                                    <div class="row align-items-center">
                                                        <div class="col-lg-1 col-md-1 col-12">
                                                            <a href="orderComplete"><img src="${products.pd_subImage}"></a>
                                                        </div>
                                                        <div class="col-lg-4 col-md-3 col-12">
                                                            <h5 class="product-name"><a href="allProductsDetail?itemId=${products.pd_num}">
                                                                    ${products.pd_name}</a></h5>
                                                            <p class="product-des">
                                                                <span>${products.ctg_name}</span>
                                                            </p>
                                                        </div>
                                                        <div class="col-lg-2 col-md-2 col-12">
                                                            <div class="count-input">
                                                                <input type="text" class="quantity_input${products.pd_num}" value="1">
                                                                    <span>
                                                                        <button class="plus_btn${products.pd_num}">+</button>
                                                                        <button class="minus_btn${products.pd_num}">-</button>
                                                                    </span>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 col-md-4 col-12">
                                                            <p><fmt:formatNumber value="${products.pd_price}" pattern="###,###,###원"/></p>
                                                        </div>
                                                    </div>
                                                </div>
                                                    <script>
                                                        let quantity${products.pd_num} = $(".quantity_input${products.pd_num}").val();

                                                        $(".plus_btn${products.pd_num}").on("click", function (){
                                                            $(".quantity_input${products.pd_num}").val(++quantity${products.pd_num});
                                                        });

                                                        $(".minus_btn${products.pd_num}").on("click", function (){
                                                            if(quantity${products.pd_num} > 1) {
                                                                $(".quantity_input${products.pd_num}").val(--quantity${products.pd_num});
                                                            }
                                                        });
                                                    </script>
                                                </c:forEach>
                                                <!-- End Single List list -->
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="checkout-payment-form">
                                                        <div class="single-form form-default">
                                                            <label>카드 번호</label>
                                                            <div class="form-input form">
                                                                <input id="credit-input" type="text"
                                                                       placeholder="0000-0000-0000-0000">
                                                            </div>
                                                        </div>
                                                        <div class="payment-card-info">
                                                            <div class="single-form form-default mm-yy">
                                                                <label>만료일</label>
                                                                <div class="expiration d-flex">
                                                                    <div class="form-input form">
                                                                        <input type="text" placeholder="MM">
                                                                    </div>
                                                                    <div class="form-input form">
                                                                        <input type="text" placeholder="YYYY">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="single-form form-default">
                                                                <label>CVC/CVV <span><i
                                                                        class="mdi mdi-alert-circle"></i></span></label>
                                                                <div class="form-input form">
                                                                    <input type="text" placeholder="***">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="single-form form-default">
                                                        <label>포인트 사용</label>
                                                        <div class="form-input form">
                                                            <input type="text" placeholder="사용할 포인트를 입력해주세요">
                                                            <p>현재 보유하신 포인트 : <fmt:formatNumber value="${member.mem_point}" pattern="###,###,###원"/></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <!--/ End Shopping Cart -->
                                </div>
                            </section>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="checkout-sidebar">
                    <div class="checkout-sidebar-price-table">
                        <h5 class="title">최종 결제 금액</h5>

                        <div class="sub-total-price">
                            <div class="total-price">
                                <p class="value">상품 가격 1 :</p>
                                <p class="price">$144.00</p>
                            </div>
                            <div class="total-price shipping">
                                <p class="value">상품 가격 2 :</p>
                                <p class="price">$10.50</p>
                            </div>
                            <div class="total-price discount">
                                <p class="value">상품 가격 3 :</p>
                                <p class="price">$10.00</p>
                            </div>
                        </div>

                        <div class="total-payable">
                            <div class="payable-price">
                                <p class="value">총 결제 금액 :</p>
                                <p class="price">$164.50</p>
                            </div>
                        </div>
                        <div class="price-table-btn button">
                            <a href="/checkoutComplete" class="btn btn-alt">결제하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--====== Checkout Form Steps Part Ends ======-->

<script language="javascript">
    function goPopup() {
        // 주소검색을 수행할 팝업 페이지를 호출합니다.
        // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
        var pop = window.open("/juso","pop","width=570,height=420, scrollbars=yes, resizable=yes");
    }

    function jusoCallBack(roadFullAddr) {
        var roadAddress = document.querySelector("#roadAddress");
        roadAddress.value = roadFullAddr;

    }
</script>

<%@ include file="layout/footer.jsp" %>