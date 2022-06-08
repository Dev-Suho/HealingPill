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
                            <!--질문  4-->
                            <em id="qNum">질문 4</em>
                            <h2 id="qTitle" maxallowed="1">
                                <p> @@님이 불편하시거나 걱정되는 3가지를 선택하세요. </p>
                                <span class="">우선적으로 관리가 필요한 것을 선택하세요.</span>
                            </h2>
                            <ul class="question-answer-wrap">
                                <div class="mb-6">
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="radio" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                            <span></span> 혈관/혈액순환
                                        </label>
                                    </li>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="radio" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                            <span></span> 소화/장
                                        </label>
                                    </li>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="radio" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                            <span></span> 피부
                                        </label>
                                    </li>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="radio" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                            <span></span> 눈
                                        </label>
                                    </li>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="radio" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                            <span></span> 두뇌활동
                                        </label>
                                    </li>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="radio" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                            <span></span> 피로감
                                        </label>
                                    </li>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="radio" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                            <span></span> 뼈와 관절
                                        </label>
                                    </li>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="radio" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                            <span></span> 면역
                                        </label>
                                    </li>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="radio" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                            <span></span> 모발
                                        </label>
                                    </li>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="radio" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                            <span></span> 선택할 것이 없어요.
                                        </label>
                                    </li>
                                </div>
                            </ul>

                        </div>
                    </div>
                    <!-- div.contents_wrap -->
                    <div class="bot_btn_area type01">
                        <button type="button" onclick="location.href='survey_5'">다음</button>
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