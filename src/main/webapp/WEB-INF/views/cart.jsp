<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<tbody>
    <c:forEach items="${cartList}" var="cartList">
        <tr>
            <td class = "cart_info_td">
                <input type="hidden" class="individual_pd_num_input" value="${cartList.pd_num}">
                <input type="hidden" class = "hidden_pd_price" value="${cartList.pd_price}"/>
                <input type="hidden" class = "hidden_salePrice" value=""/>
                <input type="hidden" class = "hidden_cart_stock" value="${cartList.cart_stock}"/>
                <input type="hidden" class = "hidden_totalPrice" value="${cartList.pd_price * cartList.cart_stock}"/>
                <input type="hidden" class = "hidden_point" value=""/>
                <input type="hidden" class = "hidden_totalPoint" value=""/>
            </td>
        </tr>
    </c:forEach>
</tbody>
    <form action="/order/${member.mem_id}" method="get" class="order_form">

    </form>
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
            <div class="col-lg-1 col-md-1 col-12">
                <input type="checkbox" name = "allCheck" id = "allCheck"/><label for="allCheck"><p>전체선택</p></label>
            </div>

            <div>
                <button type="button" class="selectDeleteBtn">선택 삭제</button>
            </div>
            <script>
                $(".selectDeleteBtn").click(function () {
                    const confirm_val = confirm("선택한 상품을 삭제하시겠습니까?");

                    if(confirm_val) {
                        const checkArr = new Array();

                        $("input[class='chBox']:checked").each(function () {
                            checkArr.push($(this).attr("data-cartNum"));
                        });

                        $.ajax({
                            url: "deleteCart",
                            type: "post",
                            data: {chbox: checkArr},
                            success: function (result) {
                                if(result == 1){
                                    location.href = "cart";
                                } else {
                                    alert("삭제 실패")
                                }
                            }
                        });
                    }
                });
            </script>
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
                        <p>상품금액</p>
                    </div>
                    <div class="col-lg-2 col-md-2 col-12">
                        <p>총 주문금액</p>
                    </div>
                    <div class="col-lg-1 col-md-2 col-12">
                        <p>삭제</p>
                    </div>
                </div>
            </div>
            <!-- End Cart List Title -->
            <!-- Cart Single List list -->
            <c:set var = "sum" value="0" />

            <c:forEach items="${cartList}" var="cartList">
                <div class="cart-single-list">
                    <div class="row align-items-center">
                        <div class="col-lg-1 col-md-1 col-12">
                            <div class="checkbox">
                                <input type="checkbox" name="chBox" class="chBox" data-cartNum = "${cartList.cart_id}"/>
                                <script>
                                    $("#allCheck").click(function (){
                                       const chk = $("#allCheck").prop("checked");
                                       if(chk) {
                                           $(".chBox").prop("checked", true);
                                       } else {
                                           $(".chBox").prop("checked", false);
                                       }
                                    });
                                </script>
                            </div>
                        </div>
                        <div class="col-lg-1 col-md-1 col-12">
                            <a href="product-details.html"><img src="${cartList.pd_subImage}" alt="#"></a>
                        </div>
                        <div class="col-lg-3 col-md-3 col-12">
                            <h5 class="product-name"><a href="product-details.html">
                                ${cartList.pd_name}</a></h5>
                            <p class="product-des">
                                <span><em>${cartList.ctg_name}</em></span>
                            </p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <div class="count-input">
                                ${cartList.cart_stock}
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p><fmt:formatNumber pattern="###,###,###" value="${cartList.pd_price}"/></p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p><fmt:formatNumber pattern="###,###,###" value="${cartList.pd_price * cartList.cart_stock}"/></p>
                        </div>
                        <div class="col-lg-1 col-md-2 col-12">
                            <a class="remove-item-${cartList.cart_id}" data-cartNum="${cartList.cart_id}"><i class="lni lni-close"></i></a>
                            <script>
                                $(".remove-item-${cartList.cart_id}").click(function () {
                                    const confirm_val = confirm("선택한 상품을 삭제하시겠습니까?");

                                    if(confirm_val) {
                                        const checkArr = new Array();

                                        checkArr.push($(this).attr("data-cartNum"));

                                        $.ajax({
                                            url: "deleteCart",
                                            type: "post",
                                            data: { chbox : checkArr },
                                            success: function (result) {
                                                if(result == 1){
                                                    location.href = "cart";
                                                } else {
                                                    alert("삭제 실패");
                                                }
                                            }
                                        });
                                    }
                                });
                            </script>
                            <script>
                                $(".chBox").click(function (){
                                    $("#allCheck").prop("checked", false);
                                });
                            </script>
                        </div>
                    </div>
                </div>
                <c:set var = "sum" value="${sum + (cartList.pd_price * cartList.cart_stock)}"/>
            </c:forEach>

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
                                    <li>장바구니 총 금액<span><fmt:formatNumber pattern="###,###,###원" value="${sum}"/></span></li>
                                    <li>배송료<span>무료</span></li>
                                    <li class="last">결제 금액<span><fmt:formatNumber pattern="###,###,###원" value="${sum}"/></span></li>
                                </ul>
                                <div class="button">
                                    <a class="order_btn" href="orderList">결제하기</a>
                                    <a href="allProducts" class="btn btn-alt">계속 쇼핑하기</a>
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
