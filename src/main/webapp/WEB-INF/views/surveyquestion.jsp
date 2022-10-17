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
                        data-wow-delay=".1s
              "
                >
                        <!-- 질문 1 -->
                        <span
                                class="mb-5 inline-block rounded-full border border-secondary bg-secondary py-2 px-6 text-base font-semibold uppercase text-white"
                        >
                질문 1
              </span>
                            <div class="survey-form survey-intro survey-enable" id="3">
                            <div class="container" style="min-height: calc(352px);">
                                <div class="service_guide_area">
                                    <!--개인정보 section-->
                                    <h2 id="" maxallowed="1">
                                        <p style="font-size: 20px"><strong> @@님은 몇살이신가요? </strong></p><br>
                                        <p style="font-size: 15px"><strong> 나이에 따라 필요한 영양성분이 달라질 수 있어요. </strong></p>
                                        <br><br>
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

                            <!-- 질문 2 -->
                            <span
                                    class="mb-5 inline-block rounded-full border border-secondary bg-secondary py-2 px-6 text-base font-semibold uppercase text-white"
                            >
                질문 2
              </span>
                            <div class="survey-form survey-intro survey-enable" id="3">

                                <div class="container" style="min-height: calc(452px);">
                                    <div class="service_guide_area">
                                        <!--개인정보 section-->
                                        <h2 id="qTitle" maxallowed="1">
                                            <p style="font-size: 20px"><strong> @@님이 불편하시거나 걱정되는 3가지를 선택하세요. </strong>
                                            </p><br>
                                            <p style="font-size: 15px"><strong> 우선적으로 관리가 필요한 것을 선택하세요. </strong></p>
                                            <br><br>
                                        </h2>
                                        <section
                                                class="relative z-20 overflow-hidden bg-white pt-5 pb-5 lg:pt-[120px] lg:pb-[90px]"
                                        >
                                            <ul class="question-answer-wrap" align="left" style="margin-left: 500px;">
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="answer" value="353" data-only="null">
                                                        <span></span> 혈관/혈액순환
                                                    </label>
                                                </li>
                                                <br>
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="answer" value="353" data-only="null">
                                                        <span></span> 소화/장
                                                    </label>
                                                </li>
                                                <br>
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="answer" value="353" data-only="null">
                                                        <span></span> 피부
                                                    </label>
                                                </li>
                                                <br>
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="answer" value="353" data-only="null">
                                                        <span></span> 눈
                                                    </label>
                                                </li>
                                                <br>
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="answer" value="353" data-only="null">
                                                        <span></span> 두뇌활동
                                                    </label>
                                                </li>
                                                <br>
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="answer" value="353" data-only="null">
                                                        <span></span> 피로감
                                                    </label>
                                                </li>
                                                <br>
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="answer" value="353" data-only="null">
                                                        <span></span> 뼈와 관절
                                                    </label>
                                                </li>
                                                <br>
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="answer" value="353" data-only="null">
                                                        <span></span> 면역
                                                    </label>
                                                </li>
                                                <br>
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="answer" value="353" data-only="null">
                                                        <span></span> 모발
                                                    </label>
                                                </li>
                                                <br>
                                                <li>
                                                    <label class="label-radio label-question">
                                                        <input type="checkbox" class="input-radio input-answer"
                                                               name="answer" value="353" data-only="null">
                                                        <span></span> 선택할 것이 없어요.
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
                질문 3
              </span>
                                <div class="survey-form survey-intro survey-enable" id="3">

                                    <div class="container" style="min-height: calc(452px);">
                                        <div class="service_guide_area">
                                            <!--개인정보 section-->
                                            <h2 id="qTitle" maxallowed="1">
                                                <p style="font-size: 20px"><strong> @@님에게 해당하는 것을 모두 선택하세요. </strong>
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
                                                                   name="answer" value="353" data-only="null">
                                                            <span></span> 스트레스가 매우 많아요.
                                                        </label>
                                                    </li>
                                                    <br>
                                                    <li>
                                                        <label class="label-radio label-question">
                                                            <input type="checkbox" class="input-radio input-answer"
                                                                   name="answer" value="353" data-only="null">
                                                            <span></span> 아토피 또는 비염 등 알레르기 질환이 있어요.
                                                        </label>
                                                    </li>
                                                    <br>
                                                    <li>
                                                        <label class="label-radio label-question">
                                                            <input type="checkbox" class="input-radio input-answer"
                                                                   name="answer" value="353" data-only="null">
                                                            <span></span> 감기와 같은 감염성 질환에 자주 걸려요.
                                                        </label>
                                                    </li>
                                                    <br>
                                                    <li>
                                                        <label class="label-radio label-question">
                                                            <input type="checkbox" class="input-radio input-answer"
                                                                   name="answer" value="353" data-only="null">
                                                            <span></span> 선택할 것이 없지만 면역이 걱정돼요.
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
                질문 4
              </span>
                                    <div class="survey-form survey-intro survey-enable" id="3">

                                        <div class="container" style="min-height: calc(452px);">
                                            <div class="service_guide_area">
                                                <!--개인정보 section-->
                                                <h2 id="qTitle" maxallowed="1">
                                                    <p style="font-size: 20px"><strong> @@님에게 해당하는 것을 모두
                                                        선택하세요. </strong></p><br><br>
                                                </h2>
                                                <section
                                                        class="relative z-20 overflow-hidden bg-white pt-5 pb-5 lg:pt-[120px] lg:pb-[90px]"
                                                >
                                                    <ul class="question-answer-wrap" align="left"
                                                        style="margin-left: 400px;">
                                                        <li>
                                                            <label class="label-radio label-question">
                                                                <input type="checkbox" class="input-radio input-answer"
                                                                       name="answer" value="353" data-only="null">
                                                                <span></span> 혈압이 높아요. (140/90 이상)
                                                            </label>
                                                        </li>
                                                        <br>
                                                        <li>
                                                            <label class="label-radio label-question">
                                                                <input type="checkbox" class="input-radio input-answer"
                                                                       name="answer" value="353" data-only="null">
                                                                <span></span> 평소 더위를 타고, 땀을 많이 흘려요.
                                                            </label>
                                                        </li>
                                                        <br>
                                                        <li>
                                                            <label class="label-radio label-question">
                                                                <input type="checkbox" class="input-radio input-answer"
                                                                       name="answer" value="353" data-only="null">
                                                                <span></span> 혈액 항응고제(와파린 등), 항혈전제(아스피린 등)를 복용하고 있습니다.
                                                            </label>
                                                        </li>
                                                        <br>
                                                        <li>
                                                            <label class="label-radio label-question">
                                                                <input type="checkbox" class="input-radio input-answer"
                                                                       name="answer" value="353" data-only="null">
                                                                <span></span> 꿀 또는 프로폴리스에 알레르기가 있어요.
                                                            </label>
                                                        </li>
                                                        <br>
                                                        <li>
                                                            <label class="label-radio label-question">
                                                                <input type="checkbox" class="input-radio input-answer"
                                                                       name="answer" value="353" data-only="null">
                                                                <span></span> 혈압이 낮아요. (수축기 90 또는 이완기 60 이하)
                                                            </label>
                                                        </li>
                                                        <br>
                                                        <li>
                                                            <label class="label-radio label-question">
                                                                <input type="checkbox" class="input-radio input-answer"
                                                                       name="answer" value="353" data-only="null">
                                                                <span></span> 선택할 것이 없어요.
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
                질문 5
              </span>
                                                <div class="survey-form survey-intro survey-enable" id="3">

                                                    <div class="container" style="min-height: calc(452px);">
                                                        <div class="service_guide_area">
                                                            <!--개인정보 section-->
                                                            <h2 id="" maxallowed="1">
                                                                <p style="font-size: 20px"><strong> @@님의 식습관을 모두
                                                                    선택하세요. </strong></p><br><br>
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
                                                                                   name="answer" value="354"
                                                                                   data-only="null">
                                                                            <span>생선을 일주일에 3번 이상 먹어요.</span>
                                                                        </label>
                                                                    </li>
                                                                    <br>
                                                                    <li>
                                                                        <label class="label-radio label-question">
                                                                            <input type="checkbox"
                                                                                   class="input-radio input-answer"
                                                                                   name="answer" value="353"
                                                                                   data-only="null">
                                                                            <span>녹황색 채소(시금치, 브로콜리 등)를 거의 매일 먹어요.</span>
                                                                        </label>
                                                                    </li>
                                                                    <br>
                                                                    <li>
                                                                        <label class="label-radio label-question">
                                                                            <input type="checkbox"
                                                                                   class="input-radio input-answer"
                                                                                   name="answer" value="352"
                                                                                   data-only="null">
                                                                            <span>일주일 동안 과일(사과 1개 또는 귤 3개 정도)을 4일 이상 먹어요.</span>
                                                                        </label>
                                                                    </li>
                                                                    <br>
                                                                    <li>
                                                                        <label class="label-radio label-question">
                                                                            <input type="checkbox"
                                                                                   class="input-radio input-answer"
                                                                                   name="answer" value="352"
                                                                                   data-only="null">
                                                                            <span>일주일 동안 4일 이상 고기(삼겹살 등 메인 요리)를 먹어요.</span>
                                                                        </label>
                                                                    </li>
                                                                    <br>
                                                                    <li>
                                                                        <label class="label-radio label-question">
                                                                            <input type="checkbox"
                                                                                   class="input-radio input-answer"
                                                                                   name="answer" value="352"
                                                                                   data-only="null">
                                                                            <span>단 음식(빵/과자, 초콜릿, 탄산음료 등)을 자주 먹어요.</span>
                                                                        </label>
                                                                    </li>
                                                                    <br>
                                                                    <li>
                                                                        <label class="label-radio label-question">
                                                                            <input type="checkbox"
                                                                                   class="input-radio input-answer"
                                                                                   name="answer" value="352"
                                                                                   data-only="null">
                                                                            <span>일주일 동안 식사를 5회 이상 거르고 있어요.</span>
                                                                        </label>
                                                                    </li>
                                                                    <br>
                                                                    <li>
                                                                        <label class="label-radio label-question">
                                                                            <input type="checkbox"
                                                                                   class="input-radio input-answer"
                                                                                   name="answer" value="352"
                                                                                   data-only="null">
                                                                            <span>선택할 것이 없어요.</span>
                                                                        </label>
                                                                    </li>
                                                                </ul>
                                                            </section>
                                                            <br><br>
                                                        </div>
                                                    </div>
                                                    <br><br><br>
                                                    <!-- 질문 6 -->
                                                    <span
                                                            class="mb-5 inline-block rounded-full border border-secondary bg-secondary py-2 px-6 text-base font-semibold uppercase text-white"
                                                    >
                질문 6
              </span>
                                                    <div class="survey-form survey-intro survey-enable" id="3">

                                                        <div class="container" style="min-height: calc(452px);">
                                                            <div class="service_guide_area">
                                                                <!--개인정보 section-->
                                                                <h2 id="" maxallowed="1">
                                                                    <p style="font-size: 20px"><strong> @@님에게 해당하는 것을 모두
                                                                        선택하세요. </strong></p><br><br>
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
                                                                                       name="answer" value="354"
                                                                                       data-only="null">
                                                                                <span>하루 12시간 이상의 업무 또는 학업을 일주일에 3일 이상해요.</span>
                                                                            </label>
                                                                        </li>
                                                                        <br>
                                                                        <li>
                                                                            <label class="label-radio label-question">
                                                                                <input type="checkbox"
                                                                                       class="input-radio input-answer"
                                                                                       name="answer" value="353"
                                                                                       data-only="null">
                                                                                <span>하루에 6시간 이상 핸드폰 또는 모니터 화면을 집중해서 봐요.</span>
                                                                            </label>
                                                                        </li>
                                                                        <br>
                                                                        <li>
                                                                            <label class="label-radio label-question">
                                                                                <input type="checkbox"
                                                                                       class="input-radio input-answer"
                                                                                       name="answer" value="352"
                                                                                       data-only="null">
                                                                                <span>목이 자주 건조해지거나 칼칼함이 느껴져요.</span>
                                                                            </label>
                                                                        </li>
                                                                        <br>
                                                                        <li>
                                                                            <label class="label-radio label-question">
                                                                                <input type="checkbox"
                                                                                       class="input-radio input-answer"
                                                                                       name="answer" value="352"
                                                                                       data-only="null">
                                                                                <span>시험을 준비하거나 승진 등으로 집중력이 필요한 시기예요.</span>
                                                                            </label>
                                                                        </li>
                                                                        <br>
                                                                        <li>
                                                                            <label class="label-radio label-question">
                                                                                <input type="checkbox"
                                                                                       class="input-radio input-answer"
                                                                                       name="answer" value="352"
                                                                                       data-only="null">
                                                                                <span>식사량을 줄이는 다이어트를 하고 있어요.</span>
                                                                            </label>
                                                                        </li>
                                                                        <br>
                                                                        <li>
                                                                            <label class="label-radio label-question">
                                                                                <input type="checkbox"
                                                                                       class="input-radio input-answer"
                                                                                       name="answer" value="352"
                                                                                       data-only="null">
                                                                                <span>입에 구내염이 자주 생겨요.</span>
                                                                            </label>
                                                                        </li>
                                                                        <br>
                                                                        <li>
                                                                            <label class="label-radio label-question">
                                                                                <input type="checkbox"
                                                                                       class="input-radio input-answer"
                                                                                       name="answer" value="352"
                                                                                       data-only="null">
                                                                                <span>선택할 것이 없어요.</span>
                                                                            </label>
                                                                        </li>
                                                                    </ul>
                                                                </section>
                                                                <br><br>
                                                            </div>
                                                        </div>
                                                        <br><br><Br>
                                                        <div class="bot_btn_area type01" style="text-align: center">
                                                            <button type="button" onclick="location.href='surveyresult'">결과
                                                                보러가기 →
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
</section>
<!-- ====== Question Section End -->

<%@ include file="layout/footer.jsp" %>