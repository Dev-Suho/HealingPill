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
                            <em id="qNum">질문 5</em>
                            <h2 id="qTitle" maxallowed="1">
                                <p>@@님의 식습관을 모두 선택하세요</p>
                                <span class=""></span>
                            </h2>
                            <ul class="question-answer-wrap">
                                <li>
                                    <label class="label-radio label-question">
                                        <input type="radio" class="input-radio input-answer" name="answer" value="354" data-only="null">
                                        <span></span>하루 12시간 이상의 업무 또는 학업을 일주일에 3일 이상해요.
                                    </label>
                                </li>
                                <li>
                                    <label class="label-radio label-question">
                                        <input type="radio" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                        <span></span>하루에 6시간 이상 핸드폰 또는 모니터 화면을 집중해서 봐요.
                                    </label>
                                </li>
                                <li>
                                    <label class="label-radio label-question">
                                        <input type="radio" class="input-radio input-answer" name="answer" value="352" data-only="null">
                                        <span></span>목이 자주 건조해지거나 칼칼함이 느껴져요.
                                    </label>
                                </li>
                                <li>
                                    <label class="label-radio label-question">
                                        <input type="radio" class="input-radio input-answer" name="answer" value="352" data-only="null">
                                        <span></span>시험을 준비하거나 승진 등으로 집중력이 필요한 시기예요.
                                    </label>
                                </li>
                                <li>
                                    <label class="label-radio label-question">
                                        <input type="radio" class="input-radio input-answer" name="answer" value="352" data-only="null">
                                        <span></span>식사량을 줄이는 다이어트를 하고 있어요.
                                    </label>
                                </li>
                                <li>
                                    <label class="label-radio label-question">
                                        <input type="radio" class="input-radio input-answer" name="answer" value="352" data-only="null">
                                        <span></span>입에 구내염이 자주 생겨요.
                                    </label>
                                </li>
                                <li>
                                    <label class="label-radio label-question">
                                        <input type="radio" class="input-radio input-answer" name="answer" value="352" data-only="null">
                                        <span></span>선택할 것이 없어요.
                                    </label>
                                </li>
                            </ul>


                        </div>
                    </div>
                    <!-- div.contents_wrap -->
                    <div class="bot_btn_area type01">
                        <button type="button" onclick="location.href='surveyresult'">결과보러가기</button>
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