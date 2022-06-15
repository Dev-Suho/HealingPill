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
                질문 4
              </span>
                    <div class="survey-form survey-intro survey-enable" id="3">

                        <div class="container" style="min-height: calc(452px);">
                            <div class="service_guide_area">
                                <!--개인정보 section-->
                                <h2 id="qTitle" maxallowed="1">
                                    <p style="font-size: 20px"> <strong> @@님이 불편하시거나 걱정되는 3가지를 선택하세요. </strong> </p><br>
                                    <p style="font-size: 15px"> <strong> 우선적으로 관리가 필요한 것을 선택하세요. </strong> </p><br><br>
                                </h2>
                                <section
                                        class="relative z-20 overflow-hidden bg-white pt-5 pb-5 lg:pt-[120px] lg:pb-[90px]"
                                >
                                    <ul class="question-answer-wrap" align="left" style="margin-left: 190px;">
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 혈관/혈액순환
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 소화/장
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 피부
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 눈
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 두뇌활동
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 피로감
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 뼈와 관절
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 면역
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer" name="answer" value="353" data-only="null">
                                                <span></span> 모발
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
                            <button type="button" onclick="location.href='survey_5'">다음</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- ====== Question Section End -->

<%@ include file="layout/footer.jsp" %>