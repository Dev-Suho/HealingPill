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
                        <img class="img-fluid" src="resources/assets/images/banner/banner1.jpg" alt="" onclick="location.href='magazineDetail?mg_no=155';">
                    </div>
                    <div class="col-lg-6 mb-0 d-flex align-items-center">
                        <div class="text-align-left align-self-center">
                            <h1 class="h3"><b>[ 푸룬 효능 ]</b></h1><br>
                            <h4 class="h4"><b>천연 변비약, 푸룬의 숨겨진 효능</b></h4><br>
                            <p>
                                푸룬은 약이 아닌 서양자두를 건조시킨 건과일의 일종이긴 하지만, 수용성 및 불용성 식이섬유와 소르비톨을 풍부하게 함유하고 있어 섭취 후 만족하시는 분들이 많죠. <br>
                                특히 소르비톨은 단맛을 내지만 포도당과 달리 혈당을 높이지 않고 수분을 흡수해 변의 원활한 배출을 돕죠.
                                하지만 푸룬은 배변 관련 효과 이외에도 다양한 효과가 있는 것이 연구를 통해서 밝혀졌는데요. <br>
                                푸룬을 섭취했을 때 얻을 수 있는 다양한 이점을 알아보겠습니다.
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
                        <img class="img-fluid" src="resources/assets/images/banner/banner2.jpg" alt="" onclick="location.href='magazineDetail?mg_no=154';">
                    </div>
                    <div class="col-lg-6 mb-0 d-flex align-items-center">
                        <div class="text-align-left">
                            <h1 class="h3"><b>[ 테아닌 효능 ]</b></h1><br>
                            <h3 class="h4"><b>긴장 완화에 특효, 테아닌의 효능</b></h3><br>
                            <p>
                                테아닌은 녹차에 많이 함유된 아미노산의 일종으로 녹차의 단맛과 감칠맛을 내는 성분인데요.
                                긴장을 낮추는 효과가 있어, 식약처로부터 ‘스트레스로 인한 긴장완화에 도움을 줄 수 있음’이라는 기능성을 인정 받았죠. <br>
                                그럼 테아닌 섭취가 긴장 완화와 관련하여 어떤 도움을 주는지 알아보도록 하겠습니다.
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
                        <img class="img-fluid" src="resources/assets/images/banner/banner3.jpg" alt="" onclick="location.href='magazineDetail?mg_no=156';">
                    </div>
                    <div class="col-lg-6 mb-0 d-flex align-items-center">
                        <div class="text-align-left">
                            <h1 class="h3"><b>[ 프로폴리스 효능 ]</b></h1><br>
                            <h3 class="h4"><b>꿀벌이 만든 천연 항균제, 프로폴리스의 3가지 효능</b></h3><br>
                            <p>
                                꿀벌의 벌집은 무균 상태라는 것, 알고 계신가요? 그 이유는 바로 꿀벌이 식물의 분비물을 채취하여 자신의 침과 밀랍을 섞어 만들어내는 ‘프로폴리스’가 천연항생물질이기 때문입니다.
                                이러한 프로폴리스의 항산화, 항균 효과가 여러 연구를 통해서 입증되면서, 영양제는 물론 치약, 구강 스프레이, 사탕 등 다양한 형태로 활용되고 있는데요. <br>
                                프로폴리스에 함유된 비타민과 미네랄, 플라보노이드 등의 성분이 프로폴리스의 항산화, 항균 효과에 기여하는 것으로 밝혀져 있습니다. <br>
                                프로폴리스의 섭취시 이점을 자세히 살펴보겠습니다.
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