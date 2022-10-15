<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>


<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">매거진</h1>
                </div>
                <ul class="breadcrumb-nav">
                    <li><a href="/">Home</a></li>
                    <li>매거진</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<!-- ====== Blog Section Start -->
<section class="pt-20 pb-10 lg:pt-[120px] lg:pb-20">
    <div class="section-title">
        <h3 class="wow zoomIn" data-wow-delay=".2s">Magazine</h3> <br>
        <h2 class="wow fadeInUp" data-wow-delay=".4s"> 힐링필에서 알려주는 영양 필승법 <br> </h2>
        <p class="wow fadeInUp" data-wow-delay=".6s">5분만 투자하세요, <br> 언젠가 쓸모가 생긴답니다.</p>
    </div>
    <div class="container">
        <c:forEach items="${products}" var="products">
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Feature -->
                <div class="single-feature wow fadeInUp" data-wow-delay=".6s">

                    <a href="/allProductsDetail?itemId=${products.pd_num}" class="block"><img class="card-img-top" src="${products.pd_subImage}" alt="Card image cap">
                        <h3>${products.pd_name}</h3>
                        <p>${products.pd_content}</p></a>
                    <br>
                    <div class="button">
                        <p><fmt:formatNumber value="${products.pd_price}" pattern="###,###,###원"/></p>
                    </div>
                </div>
                <!-- End Single Feature -->
            </div>
        </c:forEach>
    </div>
</section>
<!-- ====== Blog Section End -->

<%@ include file="layout/footer.jsp" %>