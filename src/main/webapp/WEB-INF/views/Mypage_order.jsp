<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">마이페이지</h1><br>
                    <div class="button wow fadeInUp" data-wow-delay=".8s">
                        <a href="/Mypage" class="btn">회원 정보 수정</a>
                        <a href="/Mypage_order" class="btn">주문 내역</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->
<section class="features section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h3 class="wow zoomIn" data-wow-delay=".2s">주문내역</h3><br>
                </div>
                <div class="section-title">
                    <table class="table table-hover" id="memberList">
                        <thead>
                        <tr>
                            <th>주문일자</th>
                            <th>주문번호</th>
                            <th>결제금액</th>
                            <th>처리현황</th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${orderList}" var="orderList">
                            <tr onClick="location.href='/ex/mypage_orderdetail?or_id=${orderList.getOr_id()}'">
                                <td><c:out value="${orderList.getOr_datetime()}"/></td>
                                <td><c:out value="${orderList.getOr_id() }"/></td>
                                <td><c:out value="${orderList.getOr_price() }"/> 원</td>
                                <td><c:if test="${orderList.getOr_cancel_state() eq 1}">주문 취소</c:if>
                                    <c:if test="${orderList.getOr_cancel_state() eq 0}">결제 완료</c:if></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="row">

        </div>
    </div>
</section>
<!--/ End Shopping Cart -->
<%@ include file="layout/footer.jsp" %>
