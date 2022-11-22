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

<form role="form" method="post" action="orderProduct" autocomplete="off">
    <input type="hidden" name="mem_id" value="${member.mem_id}">
    <input type="hidden" name="deliveryCost" value=0>
    <input type="hidden" name="pd_num" value="${products.pd_num}">
    <input type="hidden" name="pd_price" value="${products.pd_price}">
    <!--====== Checkout Form Steps Part Start ======-->
<section class="checkout-wrapper section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="checkout-steps-form-style-1">
                    <ul id="accordionExample">
                        <li>
                            <h6 class="title" data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                aria-expanded="true" aria-controls="collapseThree">배송 정보 </h6>
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
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <div style=" text-align: center;">
                                                <br><button type="button" class="btn btn-outline-info" onclick="goPopup();">주소 찾기</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <label>주소</label>
                                            <div class="form-input form">
                                                <input type="text" id="mem_address1" name="mem_address1" placeholder="주소">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <label>상세주소</label>
                                            <div class="form-input form">
                                                <input type="text" id="mem_address2" name="mem_address2" placeholder="상세주소">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form form-default">
                                            <label>우편번호</label>
                                            <div class="form-input form">
                                                <input type="text" id="mem_address3" name="mem_address3" placeholder="우편번호" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="single-form button">
                                            <button type="button" class="btn" data-bs-toggle="collapse"
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
                                                            <span>${products.ctg_Name}</span>
                                                        </p>
                                                    </div>
                                                    <div class="col-lg-2 col-md-2 col-12">
                                                        <div class="count-input">
                                                                <span>
                                                                    <button type="button" class="minus_btn"><i class="bi bi-dash-circle"></i></button>
                                                                    <input type="text" class="quantity_input" name="order_stock" value="1">
                                                                    <button type="button" class="plus_btn"><i class="bi bi-plus-circle"></i></button>
                                                                </span>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4 col-md-4 col-12">
                                                        <p><fmt:formatNumber value="${products.pd_price}" pattern="###,###,###원"/></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- End Single List list -->
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
                                            </script>

                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="single-form form-default">
                                                    <label>포인트 사용</label>
                                                    <div class="form-input form">
                                                        <input name="usePoint" type="text" placeholder="사용할 포인트를 입력해주세요" value="0">
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
                                <p class="value">${products.pd_name} :</p>
                                <p class="price">${products.pd_price}</p>
                            </div>
                            <div class="total-price">
                                <p class="value">배송료 : </p>
                                <p class="price">0</p>
                            </div>
                        </div>

                        <div class="total-payable">
                            <div class="payable-price">
                                <p class="value">총 결제 금액 :</p>
                                <p class="price"><fmt:formatNumber pattern="###,###,###" value="${products.pd_price}"/>원</p>
                            </div>
                        </div>
                        <div class="price-table-btn button">
                            <input type="submit" class="btn btn-alt" value="결제하기"></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</form>

<!--====== Checkout Form Steps Part Ends ======-->

<script language="javascript">
    function goPopup() {
        // 주소검색을 수행할 팝업 페이지를 호출합니다.
        // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
        var pop = window.open("/juso","pop","width=600,height=500, scrollbars=yes, resizable=yes");
    }

    function jusoCallBack(zipNo, roadFullAddr, addrDetail) {
        var mem_address1 = document.querySelector("#mem_address1");
        var mem_address2 = document.querySelector("#mem_address2");
        var mem_address3 = document.querySelector("#mem_address3");
        mem_address1.value = roadFullAddr;
        mem_address2.value = addrDetail;
        mem_address3.value = zipNo;
    }
</script>

<%@ include file="layout/footer.jsp" %>