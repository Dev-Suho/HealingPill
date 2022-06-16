<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="layout/header.jsp"%>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">나만의 영양제 결과보기</h1>
                </div>
                <ul class="breadcrumb-nav">
                    <li>몇 가지 질문에 답하고 나에게 필요한 영양성분을 알아보세요.</li>
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
                    <h3 class="wow zoomIn" data-wow-delay=".2s">건강설문결과</h3><br>
                    <h2 class="wow fadeInUp" data-wow-delay=".4s">@@님의 건강설문 결과표</h2>
                    <p class="wow fadeInUp" data-wow-delay=".6s">성별 : 여성</p>
                    <p class="wow fadeInUp" data-wow-delay=".6s">나이 : ##세</p>
                </div>
                <div class="section-title">
                    <h3 class="wow zoomIn" data-wow-delay=".2s">추천 영양 성분</h3><br>
                    <a class="btn btn-outline-info" href="#" role="button">오메가</a>
                    <a class="btn btn-outline-info" href="#" role="button">비타민</a>
                    <a class="btn btn-outline-info" href="#" role="button">유산균</a>
                </div>
                <div class="section_contents_area">
                    영양 성분에 대한 정보 <br>
                    오메가 어쩌고 저쩌고 <br>
                    비타민 어쩌고 저쩌고 이거는 디비에 있는 영양성분 정보 가져오기
                </div>
            </div>
        </div>
        <div class="row">
            <div class="section-title">
                <h3 class="wow zoomIn" data-wow-delay=".2s">관련 제품</h3>
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Feature -->
                <div class="single-feature wow fadeInUp" data-wow-delay=".6s">
                    <a href="/allProductsDetail" class="block"><img class="card-img-top" src="https://via.placeholder.com/335x335" alt="Card image cap"></a>
                    <h3>Simple Queues</h3>
                    <p>It is a long established fact that a reader will be distracted by the readable content of a
                        page at its layout.</p>
                    <br>
                    <div class="button">
                        <a href="/cart"><i class="bi bi-cart-plus"></i></a>
                    </div>
                </div>
                <!-- End Single Feature -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Feature -->
                <div class="single-feature wow fadeInUp" data-wow-delay=".6s">
                    <a href="/allProductsDetail" class="block"><img class="card-img-top" src="https://via.placeholder.com/335x335" alt="Card image cap"></a>
                    <h3>Simple Queues</h3>
                    <p>It is a long established fact that a reader will be distracted by the readable content of a
                        page at its layout.</p>
                    <br>
                    <div class="button">
                        <a href="/cart"><i class="bi bi-cart-plus"></i></a>
                    </div>

                </div>
                <!-- End Single Feature -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Feature -->
                <div class="single-feature wow fadeInUp" data-wow-delay=".2s">
                    <a href="/allProductsDetail" class="block"><img class="card-img-top" src="https://via.placeholder.com/335x335" alt="Card image cap"></a>
                    <h3>Advanced Security</h3>
                    <p>It is a long established fact that a reader will be distracted by the readable content of a
                        page at its layout.</p>
                    <br>
                    <div class="button">
                        <a href="/cart"><i class="bi bi-cart-plus"></i></a>
                    </div>
                </div>
                <!-- End Single Feature -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Feature -->
                <div class="single-feature wow fadeInUp" data-wow-delay=".4s">
                    <a href="/allProductsDetail" class="block"><img class="card-img-top" src="https://via.placeholder.com/335x335" alt="Card image cap"></a>
                    <h3>Powerful API</h3>
                    <p>It is a long established fact that a reader will be distracted by the readable content of a
                        page at its layout.</p>
                    <br>
                    <div class="button">
                        <a href="/cart"><i class="bi bi-cart-plus"></i></a>
                    </div>
                </div>
                <!-- End Single Feature -->
            </div>
        </div>
    </div>
</section>

<%@ include file="layout/footer.jsp" %>