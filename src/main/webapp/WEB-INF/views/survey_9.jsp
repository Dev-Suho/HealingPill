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
                질문 9
              </span>
                    <div class="survey-form survey-intro survey-enable" id="3">

                        <div class="container" style="min-height: calc(452px);">
                            <div class="service_guide_area">
                                <!--개인정보 section-->
                                <h2 id="" maxallowed="1">
                                    <p style="font-size: 20px"> <strong> @@님의 식습관을 모두 선택하세요. </strong> </p><br><br>
                                </h2>
                                <section
                                        class="relative z-20 overflow-hidden bg-white pt-5 pb-5 lg:pt-[120px] lg:pb-[90px]"
                                >
                                <ul class="question-answer-wrap" align="left" style="margin-left:30px;">
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="checkbox" class="input-radio input-answer" name="answer" value="354" data-only="null">
                                            <span>생선을 일주일에 3번 이상 먹어요.</span>
                                        </label>
                                    </li>
                                    <br>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                            <span>녹황색 채소(시금치, 브로콜리 등)를 거의 매일 먹어요.</span>
                                        </label>
                                    </li>
                                    <br>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="checkbox" class="input-radio input-answer" name="answer" value="352" data-only="null">
                                            <span>일주일 동안 과일(사과 1개 또는 귤 3개 정도)을 4일 이상 먹어요.</span>
                                        </label>
                                    </li>
                                    <br>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="checkbox" class="input-radio input-answer" name="answer" value="352" data-only="null">
                                            <span>일주일 동안 4일 이상 고기(삼겹살 등 메인 요리)를 먹어요.</span>
                                        </label>
                                    </li>
                                    <br>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="checkbox" class="input-radio input-answer" name="answer" value="352" data-only="null">
                                            <span>단 음식(빵/과자, 초콜릿, 탄산음료 등)을 자주 먹어요.</span>
                                        </label>
                                    </li>
                                    <br>
                                    <li>
                                        <label class="label-radio label-question">
                                            <input type="checkbox" class="input-radio input-answer" name="answer" value="352" data-only="null">
                                            <span>일주일 동안 식사를 5회 이상 거르고 있어요.</span>
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
                            <button type="button" onclick="location.href='survey_10'">다음</button><br><br>
                            <button type="button" onclick="location.href='survey_8'">이전으로</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- ====== Question Section End -->

<%@ include file="layout/footer.jsp" %>