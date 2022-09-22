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
                질문6
              </span>
                    <div class="survey-form survey-intro survey-enable" id="3">

                        <div class="container" style="min-height: calc(452px);">
                            <div class="service_guide_area">
                                <!--개인정보 section-->
                                <h2 id="qTitle" maxallowed="1">
                                    <p style="font-size: 20px"> <strong> @@님에게 해당하는 것을 모두 선택하세요. </strong> </p><br>
                                </h2>
                                <section
                                        class="relative z-20 overflow-hidden bg-white pt-5 pb-5 lg:pt-[120px] lg:pb-[90px]"
                                >
                                    <ul class="question-answer-wrap" align="left" style="margin-left: 190px;">
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 혈압이 높아요. (140/90 이상)
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 평소 더위를 타고, 땀을 많이 흘려요.
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 혈액 항응고제(와파린 등), 항혈전제(아스피린 등)를 복용하고 있습니다.
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 꿀 또는 프로폴리스에 알레르기가 있어요.
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 혈압이 낮아요. (수축기 90 또는 이완기 60 이하)
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 선택할 것이 없어요.
                                            </label>
                                        </li>
                                    </ul>
                                </section><br><br>
                            </div>
                        </div>
                        <!-- div.contents_wrap -->

                        <div class="bot_btn_area type01" style="text-align: center">
                            <button type="button" onclick="location.href='survey_7'">다음</button><br><br>
                            <button type="button" onclick="location.href='survey_5'">이전으로</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- ====== Question Section End -->

<%@ include file="layout/footer.jsp" %>