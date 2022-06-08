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
                            <!--질문  2-->
                            <em id="qNum">질문 2</em>
                            <h2 id="qTitle" maxallowed="1">
                                <p> @@님의 성별을 알려주세요 </p>
                                <span class=""></span>
                            </h2>
                            <ul class="question-answer-wrap">
                                <div class="mb-6">
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="radio" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                            <span></span> 여성
                                        </label>
                                    </li>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="radio" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                            <span></span> 남성
                                        </label>
                                    </li>
                                </div>
                            </ul>

                        </div>
                    </div>
                    <!-- div.contents_wrap -->
                    <div class="bot_btn_area type01">
                        <button type="button" onclick="location.href='survey_3'">다음</button>
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