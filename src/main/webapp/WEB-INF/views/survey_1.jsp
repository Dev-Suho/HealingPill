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
                질문 1
              </span>
                    <div class="survey-form survey-intro survey-enable" id="3">

                        <div class="container" style="min-height: calc(452px);">
                            <div class="service_guide_area">
                                <!--개인정보 section-->
                                <h2 id="" maxallowed="1">
                                    <p style="font-size: 20px"> <strong> 힐링필이 고객님을 어떻게 부르는 게 좋을까요 ? </strong> </p><br><br>
                                </h2>
                                <ul class="question-answer-wrap">
                                    <div class="mb-6">
                                        <input
                                                type="text"
                                                placeholder="이름"
                                                class="bordder-[#E9EDF4] rounded-md border bg-[#FCFDFE] py-3 px-5 text-base text-body-color placeholder-[#ACB6BE] outline-none transition focus:border-primary focus-visible:shadow-none"
                                        />
                                    </div>
                                </ul>
                            </div>
                        </div>
                        <!-- div.contents_wrap -->

                        <div class="bot_btn_area type01" style="text-align: center">
                            <button type="button" onclick="location.href='survey_2'">다음</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- ====== Question Section End -->

<%@ include file="layout/footer.jsp" %>