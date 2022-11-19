<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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


<form action="/saveRecommend" method="post">
    <c:forEach items="${recommendResult}" var="result">
        <input type="hidden" name="mem_id" value="${member.mem_id}">
        <input type="hidden" name="ctg_code" value="${result.ctg_code}">
        <input type="hidden" name="ctg_name" value="${result.ctg_name}">
    </c:forEach>
<!-- Start Features Area -->
<section class="features section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2 class="wow zoomIn" data-wow-delay=".2s">건강 설문 결과</h2><br>
                    <h3 class="wow fadeInUp" data-wow-delay=".4s">${member.mem_username}님의 건강설문 결과표</h3>
                    <p class="wow fadeInUp" data-wow-delay=".6s">성별 : ${member.mem_sex}</p>
                    <p class="wow fadeInUp" data-wow-delay=".6s">나이 : ${memberAge}세</p>
                </div>
                <div class="section-title">
                    <h2 class="wow zoomIn" data-wow-delay=".2s">추천 영양 성분</h2><br>
                    <c:forEach items="${ctgResult}" var="ctg">
                    <a class="btn btn-outline-info" href="#" role="button">${ctg.ctg_name}</a>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="section-title">
                <h2 class="wow zoomIn" data-wow-delay=".2s">추천 제품</h2>
            </div>
            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                <c:forEach items="${recommendResult}" var="result">
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="resources\ ${result.pd_mainImage}" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder">${result.pd_name}</h5>
                                <h3 class="fw-bolder">영양 성분 : ${result.ctg_name}</h3>
                                <!-- Product price-->
                                <p><fmt:formatNumber value="${result.pd_price}" pattern="###,###,###"/>원</p>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="allProductsDetail?itemId=${result.pd_num}">View products</a></div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            <br><br><Br>
            <div class="bot_btn_area type01" style="text-align: center">
                <button type="submit">결과 저장하기 →
                </button>
            </div>
        </div>
    </div>
</section>
</form>
<%@ include file="layout/footer.jsp" %>