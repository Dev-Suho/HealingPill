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

                <div class="survey-form survey-intro survey-enable" id="3">
                    <div class="contents_wrap" style="min-height: calc(452px);">
                        <div class="service_guide_area">
                            <!--개인정보 section-->
                            <!--질문  3-->
                            <em id="qNum">질문 3</em>
                            <h2 id="qTitle" maxallowed="1">
                                <p> @@님은 몇살이신가요? </p>
                                <span class="">나이에 따라 필요한 영양성분이 달라질 수 있어요.</span>
                            </h2>
                            <ul class="question-answer-wrap">
                                <div class="mb-6">
                                    <input
                                            type="text"
                                            placeholder="나이"
                                            class="bordder-[#E9EDF4] rounded-md border bg-[#FCFDFE] py-3 px-5 text-base text-body-color placeholder-[#ACB6BE] outline-none transition focus:border-primary focus-visible:shadow-none"
                                    />
                                </div>
                            </ul>

                        </div>
                    </div>
                    <!-- div.contents_wrap -->
                    <div class="bot_btn_area type01">
                        <button type="button" onclick="location.href='survey_4'">다음</button>
                    </div>
                </div>
            </div>
            </div>
            <!-- div.section_wrap -->
        </section>
        <!-- section.intro_section -->

    </main>
</section>

<%@ include file="layout/footer.jsp" %>