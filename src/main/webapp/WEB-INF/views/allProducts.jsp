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
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <c:forEach items="${products}" var="products">
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="${products.pd_subImage}" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder">${products.pd_name}</h5>
                                <!-- Product price-->
                                <p><fmt:formatNumber value="${products.pd_price}" pattern="###,###,###원"/></p>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="allProductsDetail?itemId=${products.pd_num}">View products</a></div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>





    </div>
</section>
<!-- End Features Area -->



<%@ include file="layout/footer.jsp" %>