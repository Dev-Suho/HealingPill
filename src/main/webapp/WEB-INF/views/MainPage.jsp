<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Start Hero Area -->
<section class="hero-area overlay">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                <div class="hero-content">
                    <h5 class="wow fadeInUp" data-wow-delay=".2s">Expert People, Quality Solutions</h5>
                    <h1 class="wow fadeInUp" data-wow-delay=".4s">힐링필에서 나에게 맞는<span>영양제를 찾아보세요!</span>
                    </h1>
                    <p class="wow fadeInUp" data-wow-delay=".6s">On the HealingPill site, <br> it's a perfect match for me
                        Look for nutritional supplements!</p>
                    <div class="button wow fadeInUp" data-wow-delay=".8s">
                        <a href="/allProducts" class="btn">제품 둘러보기</a>
                        <a href="/survey" class="btn btn-alt">나만의 영양제 찾기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Hero Area -->

<!-- Start Small Features Area -->
<section class="small-features">
    <div class="container">
        <div class="inner-content">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-12" onclick="location.href='allProducts';">
                    <!-- Start Single Feature -->
                    <div class="single-feature">
                        <i class="lni lni-investment"></i>
                        <h2>전 제품 보기
                            <span>카테고리 별로 영양제를 찾아보세요</span>
                        </h2>
                    </div>
                    <!-- End Single Feature -->
                </div>
                <div class="col-lg-4 col-md-4 col-12" onclick="location.href='survey';">
                    <!-- Start Single Feature -->
                    <div class="single-feature">
                        <i class="lni lni-pie-chart"></i>
                        <h2>나만의 영양제 찾기
                            <span>간단한 설문을 통해 영양제를 추천드립니다</span>
                        </h2>
                    </div>
                    <!-- End Single Feature -->
                </div>
                <div class="col-lg-4 col-md-4 col-12" onclick="location.href='faq';">
                    <!-- Start Single Feature -->
                    <div class="single-feature">
                        <i class="lni lni-handshake"></i>
                        <h2>커뮤니티
                            <span>영양제 정보를 찾아보세요</span>
                        </h2>
                    </div>
                    <!-- End Single Feature -->
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Small Features Area -->

<!-- Start Banner Area -->
<div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
    <ol class="carousel-indicators">
        <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
        <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
        <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <div class="container">
                <div class="row p-5">
                    <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                        <img class="img-fluid" src="resources/assets/images/banner/banner1.jpg" alt="">
                    </div>
                    <div class="col-lg-6 mb-0 d-flex align-items-center">
                        <div class="text-align-left align-self-center">
                            <h1 class="h1"><b>HealingPill</b> sale</h1><br>
                            <h4 class="h4">가을 맞이 더블 세일</h4><br>
                            <p>
                                Zay Shop is an eCommerce HTML5 CSS template with latest version of Bootstrap 5 (beta 1).
                                This template is 100% free provided by <a rel="sponsored" class="text-success" href="https://templatemo.com" target="_blank">TemplateMo</a> website.
                                Image credits go to <a rel="sponsored" class="text-success" href="https://stories.freepik.com/" target="_blank">Freepik Stories</a>,
                                <a rel="sponsored" class="text-success" href="https://unsplash.com/" target="_blank">Unsplash</a> and
                                <a rel="sponsored" class="text-success" href="https://icons8.com/" target="_blank">Icons 8</a>.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="container">
                <div class="row p-5">
                    <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                        <img class="img-fluid" src="resources/assets/images/banner/banner2.jpg" alt="">
                    </div>
                    <div class="col-lg-6 mb-0 d-flex align-items-center">
                        <div class="text-align-left">
                            <h1 class="h1">Proident occaecat</h1>
                            <h3 class="h2">Aliquip ex ea commodo consequat</h3>
                            <p>
                                You are permitted to use this Zay CSS template for your commercial websites.
                                You are <strong>not permitted</strong> to re-distribute the template ZIP file in any kind of template collection websites.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="container">
                <div class="row p-5">
                    <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                        <img class="img-fluid" src="resources\assets\images\banner\banner3.jpg" alt="">
                    </div>
                    <div class="col-lg-6 mb-0 d-flex align-items-center">
                        <div class="text-align-left">
                            <h1 class="h1">Repr in voluptate</h1>
                            <h3 class="h2">Ullamco laboris nisi ut </h3>
                            <p>
                                We bring you 100% free CSS templates for your websites.
                                If you wish to support TemplateMo, please make a small contribution via PayPal or tell your friends about our website. Thank you.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
        <i class="fas fa-chevron-left"></i>
    </a>
    <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
        <i class="fas fa-chevron-right"></i>
    </a>
</div>
<!-- End Banner Area -->

<%--<!-- Start Banner Area -->
<section class="py-5">
    <div class="container">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="resources\assets\images\banner\ny.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="resources\assets\images\banner\chicago.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="resources\assets\images\banner\la.jpg" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
</div>
</section>
<!-- End Banner Area -->--%>

<!-- Start Best Category Area -->
<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h3 class="wow zoomIn" data-wow-delay=".2s">BEST</h3><br>
                    <h2 class="wow fadeInUp" data-wow-delay=".4s">베스트 제품</h2>
                    <p class="wow fadeInUp" data-wow-delay=".6s">판매량이 증명하는 힐링필 몰 간판 제품들을 만나보세요.</p>
                </div>
            </div>
        </div>
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <c:forEach items="${list}" var="list">
            <div class="col mb-5">
                <div class="card h-100">
                    <!-- Product image-->
                    <img class="card-img-top" src="resources\ ${list.pd_subImage}" alt="..." />
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder">${list.pd_name}</h5>
                            <!-- Product price-->
                            <p><fmt:formatNumber value="${list.pd_price}" pattern="###,###,###원"/></p>
                        </div>
                    </div>
                    <!-- Product actions-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="allProductsDetail?itemId=${list.pd_num}">View products</a></div>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</section>
<!-- End Best Category Area -->

<%--
<!-- Start Best Category Area -->
<section class="features section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h3 class="wow zoomIn" data-wow-delay=".2s">BEST</h3><br>
                    <h2 class="wow fadeInUp" data-wow-delay=".4s">베스트 제품</h2>
                    <p class="wow fadeInUp" data-wow-delay=".6s">판매량이 증명하는 힐링필 몰 간판 제품들을 만나보세요.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Feature -->
                <div class="single-feature wow fadeInUp" data-wow-delay=".6s">
                    <a href="/allProductsDetail" class="block"><img class="card-img-top" src="https://via.placeholder.com/335x335" alt="Card image cap"><br>
                        <h3>Simple Queues</h3>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a
                            page at its layout.</p></a>
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
                    <a href="/allProductsDetail" class="block"><img class="card-img-top" src="https://via.placeholder.com/335x335" alt="Card image cap"><br>
                        <h3>Simple Queues</h3>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a
                            page at its layout.</p></a>
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
                    <a href="/allProductsDetail" class="block"><img class="card-img-top" src="https://via.placeholder.com/335x335" alt="Card image cap"><br>
                        <h3>Advanced Security</h3>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a
                            page at its layout.</p></a>
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
                    <a href="/allProductsDetail" class="block"><img class="card-img-top" src="https://via.placeholder.com/335x335" alt="Card image cap"><br>
                        <h3>Powerful API</h3>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a
                            page at its layout.</p></a>
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
                    <a href="/allProductsDetail" class="block"><img class="card-img-top" src="https://via.placeholder.com/335x335" alt="Card image cap"><br>
                        <h3>Database Backups</h3>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a
                            page at its layout.</p></a>
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
                    <a href="/allProductsDetail" class="block"><img class="card-img-top" src="https://via.placeholder.com/335x335" alt="Card image cap"><br>
                        <h3>Database Backups</h3>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a
                            page at its layout.</p></a>
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
                    <a href="/allProductsDetail" class="block"><img class="card-img-top" src="https://via.placeholder.com/335x335" alt="Card image cap"><br>
                        <h3>Database Backups</h3>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a
                            page at its layout.</p></a>
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
                    <a href="/allProductsDetail" class="block"><img class="card-img-top" src="https://via.placeholder.com/335x335" alt="Card image cap"><br>
                        <h3>Database Backups</h3>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a
                            page at its layout.</p></a>
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
<!-- End Best Category Area -->
--%>

<%@ include file="layout/footer.jsp" %>