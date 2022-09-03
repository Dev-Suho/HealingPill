<%@ page import="java.util.Vector" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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

<!-- Start Features Area -->
<section class="features section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h3 class="wow zoomIn" data-wow-delay=".2s">All Products</h3><br>
                    <h2 class="wow fadeInUp" data-wow-delay=".4s">힐링필 몰에 있는 전 제품 보기</h2>
                    <p class="wow fadeInUp" data-wow-delay=".6s">고객의 모든 건강 고민에 대한 솔루션을 제공합니다.</p>
                </div>
                <div class="section-title">
                    <br>
                    <a class="btn btn-outline-info" href="" role="button">비타민</a>
                    <a class="btn btn-outline-info" href="" role="button">오메가</a>
                    <a class="btn btn-outline-info" href="" role="button">유산균</a>
                    <a class="btn btn-outline-info" href="" role="button">칼슘</a>
                    <a class="btn btn-outline-info" href="" role="button">마그네슘</a>
                </div>
            </div>
        </div>
        <div class="row">

            <c:forEach items="${products}" var="products">
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Feature -->
                    <div class="single-feature wow fadeInUp" data-wow-delay=".6s">

                        <a href="/allProductsDetail?itemId=${products.pd_num}" class="block"><img class="card-img-top" src="${products.pd_subImage}" alt="Card image cap">
                            <h3>${products.pd_name}</h3>
                            <p>${products.pd_content}</p></a>
                        <br>
                        <div class="button">
                            <a href="cart"><i class="bi bi-cart-plus"></i></a>
                        </div>
                    </div>
                    <!-- End Single Feature -->
                </div>
            </c:forEach>

        </div>
    </div>
</section>
<!-- End Features Area -->



<%@ include file="layout/footer.jsp" %>