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
                    <h1 class="page-title">맞춤영양제</h1>
                </div>
                <ul class="breadcrumb-nav">
                    <li>몇 가지 질문에 답하고 나에게 필요한 영양성분을 알아보세요.</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<section>
    <main>
        <section id="FormContent_MainContent_SECTION_SURVEY" class="intro_section">
            <div class="section_wrap" style="min-height: 618px;">
                <div class="top_btn_area">
                    <button type="button" onclick="location.href='/';">EXIT</button>
                </div>

                <div class="survey-form survey-intro survey-enable" id="step1">
                    <!-- div.top_btn_area -->
                    <div class="contents_wrap intro_start" style="min-height: calc(452px);">
                        <div class="icon_area">
                            <span></span>
                        </div>
                        <strong class="intro_pillgram_text">개인맞춤 영양제 추천, 힐링필</strong>
                        <p class="intro_text">
                            나의 건강상태에 맞는<br>
                            영양제를 추천받아볼까요?
                        </p>
                    </div>
                    <!-- div.contents_wrap.left -->
                    <div class="bot_btn_area type01">
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
            <!-- div.section_wrap -->
        </section>
        <!-- section.intro_section -->

    </main>
</section>

<%@ include file="layout/footer.jsp" %>