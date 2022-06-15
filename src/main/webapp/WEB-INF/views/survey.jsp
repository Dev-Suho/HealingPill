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
                    <h1 class="page-title">나만의 영양제 찾기</h1>
                </div>
                <ul class="breadcrumb-nav">
                    <li>몇 가지 질문에 답하고 나에게 필요한 영양성분을 알아보세요.</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<!-- ====== Question Section Start -->
<section
        id="pricing"
        class="relative z-20 overflow-hidden bg-white pt-5 pb-12 lg:pt-[120px] lg:pb-[90px]"
>
</section>
<section id="FormContent_MainContent_SECTION_SURVEY" class="intro_section">
    <div class="container">
        <div class="flex flex-wrap items-center justify-center">
            <div class="w-full md:w-1/2 lg:w-1/2">
                <div
                        class="wow fadeInUp relative z-10 mb-10 overflow-hidden rounded-xl bg-light bg-gradient-to-b from-light to-[#179BEE] py-10 px-8 text-center shadow-pricing sm:p-12 lg:py-10 lg:px-6 xl:p-12"
                        data-wow-delay=".1s
              "
                >
                    <div class="survey-form survey-intro survey-enable" id="step1">
                        <!-- div.top_btn_area -->
                        <!-- div.contents_wrap.left -->
                        <div class="bot_btn_area type01">
                            <div class="contents_wrap intro_start">
                                <strong class="intro_pillgram_text">개인맞춤 영양제 추천, 힐링필</strong> <br>
                                <p class="intro_text">
                                    나의 건강상태에 맞는<br>
                                    영양제를 추천받아볼까요?
                                </p><br>
                                <img src="resources\assets\images\tonic.jpg">
                            </div>
                            <p class="btn_intro_text">
                                <em id="FormContent_MainContent_acount">현재 37,569개!</em>
                                <br>
                                맞춤 영양제를 추천해 드렸어요.
                            </p>
                            <button type="button" onclick="location.href='survey_1'">시작하기</button>
                        </div>
                        <!-- div.bot_btn_area -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section
        class="relative z-20 overflow-hidden bg-white pt-20 pb-12 lg:pt-[120px] lg:pb-[90px]"
>

<%@ include file="layout/footer.jsp" %>