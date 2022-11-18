<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="layout/header.jsp" %>
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

<form action="surveyResult" method="get">
<!-- ====== Question Section Start -->
<section
        id="pricing"
        class="relative z-20 overflow-hidden bg-white pt-20 pb-12 lg:pt-[120px] lg:pb-[90px]"
>
    <div class="container">
        <div class="flex flex-wrap">
            <div class="w-full">
                <div
                        class="wow fadeInUp relative z-10 mb-10 overflow-hidden rounded-xl bg-light bg-gradient-to-b from-light to-[#179BEE] py-10 px-8 text-center shadow-pricing sm:p-12 lg:py-10 lg:px-6 xl:p-12"
                        data-wow-delay=".1s">
                    </span>

                    <!-- 질문 1 -->
                    <span
                            class="mb-5 inline-block rounded-full border border-secondary bg-secondary py-2 px-6 text-base font-semibold uppercase text-white"
                    >
                질문 1
              </span>
                    <div class="survey-form survey-intro survey-enable" id="1">

                        <div class="container" style="min-height: calc(452px);">
                            <div class="service_guide_area">
                                <!--개인정보 section-->
                                <h2 id="checkedValue" maxallowed="1">
                                    <p style="font-size: 20px"><strong> ${member.mem_username}님이 개선하고 싶은 부위를 선택하세요. </strong></p><br>
                                    <p style="font-size: 15px"><strong> 우선적으로 관리가 필요한 것을 선택하세요. </strong></p>
                                    <br><br>
                                </h2>
                                <section
                                        class="relative z-20 overflow-hidden bg-white pt-5 pb-5 lg:pt-[120px] lg:pb-[90px]">
                                    <ul class="question-answer-wrap" align="left" style="margin-left: 500px;">
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer"
                                                       name="checkedValue" value="유산균" data-only="null">
                                                <span></span> 장
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer"
                                                       name="checkedValue" value="비타민K" data-only="null">
                                                <span></span> 혈관
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer"
                                                       name="checkedValue" value="비타민E" data-only="null">
                                                <span></span> 피부
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer"
                                                       name="checkedValue" value="비타민A" data-only="null">
                                                <span></span> 눈
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer"
                                                       name="checkedValue" value="마그네슘" data-only="null">
                                                <span></span> 두뇌활동
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer"
                                                       name="checkedValue" value="비타민C" data-only="null">
                                                <span></span> 면역력
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer"
                                                       name="checkedValue" value="칼슘" data-only="null">
                                                <span></span> 뼈와 관절
                                            </label>
                                        </li>
                                        <br>
                                        <li>
                                            <label class="label-radio label-question">
                                                <input type="checkbox" class="input-radio input-answer"
                                                       name="checkedValue" value="비타민B" data-only="null">
                                                <span></span> 모발
                                            </label>
                                        </li>
                                    </ul>
                                </section>
                                <br><br>
                            </div>
                        </div>
                        <br><br><br>
                        <!-- 질문 3 -->
                        <span
                                class="mb-5 inline-block rounded-full border border-secondary bg-secondary py-2 px-6 text-base font-semibold uppercase text-white"
                        >
                질문 2
              </span>
                        <div class="survey-form survey-intro survey-enable" id="2">

                            <div class="container" style="min-height: calc(452px);">
                                <div class="service_guide_area">
                                    <!--개인정보 section-->
                                    <h2 id="qTitle2" maxallowed="1">
                                        <p style="font-size: 20px"><strong> ${member.mem_username}님에게 해당하는 증상을 선택하세요. </strong>
                                        </p><br><Br>
                                    </h2>
                                    <section
                                            class="relative z-20 overflow-hidden bg-white pt-5 pb-5 lg:pt-[120px] lg:pb-[90px]"
                                    >
                                        <ul class="question-answer-wrap" align="left"
                                            style="margin-left: 400px;">
                                            <li>
                                                <label class="label-radio label-question">
                                                    <input type="checkbox" class="input-radio input-answer"
                                                           name="checkedValue" value="비타민C" data-only="null">
                                                    <span></span> 목이 자주 아파요.
                                                </label>
                                            </li>
                                            <br>
                                            <li>
                                                <label class="label-radio label-question">
                                                    <input type="checkbox" class="input-radio input-answer"
                                                           name="checkedValue" value="비타민B" data-only="null">
                                                    <span></span> 구내염이 자주 생겨요
                                                </label>
                                            </li>
                                            <br>
                                            <li>
                                                <label class="label-radio label-question">
                                                    <input type="checkbox" class="input-radio input-answer"
                                                           name="checkedValue" value="유산균" data-only="null">
                                                    <span></span> 소화가 잘 되지 않아요.
                                                </label>
                                            </li>
                                            <br>
                                            <li>
                                                <label class="label-radio label-question">
                                                    <input type="checkbox" class="input-radio input-answer"
                                                           name="checkedValue" value="칼슘" data-only="null">
                                                    <span></span> 쉽게 멍이 들어요.
                                                </label>
                                            </li>
                                            <br>
                                            <li>
                                                <label class="label-radio label-question">
                                                    <input type="checkbox" class="input-radio input-answer"
                                                           name="checkedValue" value="오메가3" data-only="null">
                                                    <span></span> 수족냉증이 있어요.
                                                </label>
                                            </li>
                                            <br>
                                            <li>
                                                <label class="label-radio label-question">
                                                    <input type="checkbox" class="input-radio input-answer"
                                                           name="checkedValue" value="비타민D" data-only="null">
                                                    <span></span> 피부 트러블이 자주 생겨요
                                                </label>
                                            </li>
                                        </ul>
                                    </section>
                                    <br><br>
                                </div>
                            </div>
                            <!-- 질문 4 -->
                            <span
                                    class="mb-5 inline-block rounded-full border border-secondary bg-secondary py-2 px-6 text-base font-semibold uppercase text-white"
                            >
                질문 3
              </span>
                            <div class="survey-form survey-intro survey-enable" id="3">

                                <div class="container" style="min-height: calc(452px);">
                                    <div class="service_guide_area">
                                        <!--개인정보 section-->
                                        <h2 id="qTitle" maxallowed="1">
                                            <p style="font-size: 20px"><strong> ${member.mem_username}님에게 해당하는 것을 모두 선택하세요. </strong></p><br><br>
                                        </h2>
                                        <section
                                                class="relative z-20 overflow-hidden bg-white pt-5 pb-5 lg:pt-[120px] lg:pb-[90px]"
                                        >
                                            <ul class="question-answer-wrap" align="left"
                                                style="margin-left: 400px;">
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="checkedValue" value="오메가3" data-only="null">
                                                        <span></span> 혈압이 높아요. (수축기 140 이상 / 이완기 90 이상)
                                                    </label>
                                                </li>
                                                <br>
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="checkedValue" value="비타민D" data-only="null">
                                                        <span></span> 집중력이 낮아요.
                                                    </label>
                                                </li>
                                                <br>
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="checkedValue" value="칼슘" data-only="null">
                                                        <span></span> 다이어트를 하고 있어요.
                                                    </label>
                                                </li>
                                                <br>
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="checkedValue" value="비타민E" data-only="null">
                                                        <span></span> 현재 임신 중이에요.
                                                    </label>
                                                </li>
                                                <br>
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="checkedValue" value="오메가3" data-only="null">
                                                        <span></span> 혈압이 낮아요. (수축기 100 이하 / 이완기 60 이하)
                                                    </label>
                                                </li>
                                            </ul>
                                        </section>
                                        <br><br>
                                    </div>
                                </div>
                                <br><br><br>
                                <!-- 질문 5 -->
                                <span
                                        class="mb-5 inline-block rounded-full border border-secondary bg-secondary py-2 px-6 text-base font-semibold uppercase text-white"
                                >
                질문 4
              </span>
                                <div class="survey-form survey-intro survey-enable" id="4">

                                    <div class="container" style="min-height: calc(452px);">
                                        <div class="service_guide_area">
                                            <!--개인정보 section-->
                                            <h2 id="" maxallowed="1">
                                                <p style="font-size: 20px"><strong> ${member.mem_username}님의 평소 생활을 모두 선택하세요. </strong></p><br><br>
                                            </h2>
                                            <section
                                                    class="relative z-20 overflow-hidden bg-white pt-5 pb-5 lg:pt-[120px] lg:pb-[90px]"
                                            >
                                                <ul class="question-answer-wrap" align="left"
                                                    style="margin-left:400px;">
                                                    <li>
                                                        <label class="label-radio label-question">
                                                            <input type="checkbox"
                                                                   class="input-radio input-answer"
                                                                   name="checkedValue" value="비타민A"
                                                                   data-only="null">
                                                            <span>하루에 12시간 이상 업무를 하는 날이 많아요.</span>
                                                        </label>
                                                    </li>
                                                    <br>
                                                    <li>
                                                        <label class="label-radio label-question">
                                                            <input type="checkbox"
                                                                   class="input-radio input-answer"
                                                                   name="checkedValue" value="오메가3"
                                                                   data-only="null">
                                                            <span>하루에 6시간 이상 모니터를 보는 날이 많아요</span>
                                                        </label>
                                                    </li>
                                                    <br>
                                                    <li>
                                                        <label class="label-radio label-question">
                                                            <input type="checkbox"
                                                                   class="input-radio input-answer"
                                                                   name="checkedValue" value="비타민B"
                                                                   data-only="null">
                                                            <span>요즘 체중이 많이 감소했어요.</span>
                                                        </label>
                                                    </li>
                                                    <br>
                                                    <li>
                                                        <label class="label-radio label-question">
                                                            <input type="checkbox"
                                                                   class="input-radio input-answer"
                                                                   name="checkedValue" value="비타민B"
                                                                   data-only="null">
                                                            <span>요즘 식욕이 없어요.</span>
                                                        </label>
                                                    </li>
                                                    <br>
                                                    <li>
                                                        <label class="label-radio label-question">
                                                            <input type="checkbox"
                                                                   class="input-radio input-answer"
                                                                   name="checkedValue" value="마그네슘"
                                                                   data-only="null">
                                                            <span>자주 피로를 느껴요.</span>
                                                        </label>
                                                    </li>
                                                    <br>
                                                    <li>
                                                        <label class="label-radio label-question">
                                                            <input type="checkbox"
                                                                   class="input-radio input-answer"
                                                                   name="checkedValue" value="마그네슘"
                                                                   data-only="null">
                                                            <span>잠이 잘 오지 않아요.</span>
                                                        </label>
                                                    </li>
                                                    <br>
                                                    <li>
                                                        <label class="label-radio label-question">
                                                            <input type="checkbox"
                                                                   class="input-radio input-answer"
                                                                   name="checkedValue" value="비타민C"
                                                                   data-only="null">
                                                            <span>피부 상태가 좋지 않아요.</span>
                                                        </label>
                                                    </li>
                                                </ul>
                                            </section>
                                            <br><br>
                                        </div>
                                    </div>
                                    <br><br><br>
                                    <div class="survey-form survey-intro survey-enable" id="5">
                                        <br><br><Br>
                                        <div class="bot_btn_area type01" style="text-align: center">
                                            <button type="submit">결과 보러가기 →
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ====== Question Section End -->
</form>
<%@ include file="layout/footer.jsp" %>