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
        class="relative z-20 overflow-hidden bg-white pt-20 pb-12 lg:pt-[120px] lg:pb-[90px]"
>
    <div class="container">


        <div class="flex flex-wrap items-center justify-center">

            <div class="w-full md:w-1/2 lg:w-1/2">
                <div
                        class="wow fadeInUp relative z-10 mb-10 overflow-hidden rounded-xl bg-light bg-gradient-to-b from-light to-[#179BEE] py-10 px-8 text-center shadow-pricing sm:p-12 lg:py-10 lg:px-6 xl:p-12"
                        data-wow-delay=".1s
              "
                >
              <span
                      class="mb-5 inline-block rounded-full border border-secondary bg-secondary py-2 px-6 text-base font-semibold uppercase text-white"
              >
                질문 10
              </span>
                    <div class="survey-form survey-intro survey-enable" id="3">

                        <div class="container" style="min-height: calc(452px);">
                            <div class="service_guide_area">
                                <!--개인정보 section-->
                                <h2 id="" maxallowed="1">
                                    <p style="font-size: 20px"> <strong> @@님에게 해당하는 것을 모두 선택하세요. </strong> </p><br><br>
                                </h2>
                                <section
                                        class="relative z-20 overflow-hidden bg-white pt-5 pb-5 lg:pt-[120px] lg:pb-[90px]"
                                >
                                <ul class="question-answer-wrap" align="left" style="margin-left:30px;">
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="checkbox" class="input-radio input-answer" name="answer" value="354" data-only="null">
                                            <span>하루 12시간 이상의 업무 또는 학업을 일주일에 3일 이상해요.</span>
                                        </label>
                                    </li>
                                    <br>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                            <span>하루에 6시간 이상 핸드폰 또는 모니터 화면을 집중해서 봐요.</span>
                                        </label>
                                    </li>
                                    <br>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="checkbox" class="input-radio input-answer" name="answer" value="352" data-only="null">
                                            <span>목이 자주 건조해지거나 칼칼함이 느껴져요.</span>
                                        </label>
                                    </li>
                                    <br>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="checkbox" class="input-radio input-answer" name="answer" value="352" data-only="null">
                                            <span>시험을 준비하거나 승진 등으로 집중력이 필요한 시기예요.</span>
                                        </label>
                                    </li>
                                    <br>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="checkbox" class="input-radio input-answer" name="answer" value="352" data-only="null">
                                            <span>식사량을 줄이는 다이어트를 하고 있어요.</span>
                                        </label>
                                    </li>
                                    <br>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="checkbox" class="input-radio input-answer" name="answer" value="352" data-only="null">
                                            <span>입에 구내염이 자주 생겨요.</span>
                                        </label>
                                    </li>
                                    <br>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="checkbox" class="input-radio input-answer" name="answer" value="352" data-only="null">
                                            <span>선택할 것이 없어요.</span>
                                        </label>
                                    </li>
                                </ul>
                                </section><br><br>
                            </div>
                        </div>
                        <!-- div.contents_wrap -->

                        <div class="bot_btn_area type01" style="text-align: center">
                            <button type="button" onclick="location.href='surveyresult'">결과 보러가기</button><br><br>
                            <button type="button" onclick="location.href='survey_9'">이전으로</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- ====== Question Section End -->

<%@ include file="layout/footer.jsp" %>