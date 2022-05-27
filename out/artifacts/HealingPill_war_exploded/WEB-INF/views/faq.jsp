<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">FAQ</h1>
                </div>
                <ul class="breadcrumb-nav">
                    <li><a href="/">Home</a></li>
                    <li>FAQ</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<!-- ====== Faq Section Start -->
<section
        class="relative z-20 overflow-hidden bg-[#f3f4ff] pt-20 pb-12 lg:pt-[120px] lg:pb-[90px]"
>
    <div class="container">
        <div class="-mx-4 flex flex-wrap">
            <div class="w-full px-4">
                <div class="mx-auto mb-[60px] max-w-[620px] text-center lg:mb-20">
              <span class="mb-2 block text-lg font-semibold text-primary">
                FAQ
              </span>
                    <h2
                            class="mb-4 text-3xl font-bold text-dark sm:text-4xl md:text-[42px]"
                    >
                        Any Questions? Answered
                    </h2>
                    <p
                            class="text-lg leading-relaxed text-body-color sm:text-xl sm:leading-relaxed"
                    >
                        There are many variations of passages of Lorem Ipsum available
                        but the majority have suffered alteration in some form.
                    </p>
                </div>
            </div>
        </div>

        <div class="accordion" id="accordionExample">
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Accordion Item #1
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        Accordion Item #2
                    </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        Accordion Item #3
                    </button>
                </h2>
                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="absolute bottom-0 right-0 z-[-1]">
        <svg
                width="1440"
                height="886"
                viewBox="0 0 1440 886"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
        >
            <path
                    opacity="0.5"
                    d="M193.307 -273.321L1480.87 1014.24L1121.85 1373.26C1121.85 1373.26 731.745 983.231 478.513 729.927C225.976 477.317 -165.714 85.6993 -165.714 85.6993L193.307 -273.321Z"
                    fill="url(#paint0_linear)"
            />
            <defs>
                <linearGradient
                        id="paint0_linear"
                        x1="1308.65"
                        y1="1142.58"
                        x2="602.827"
                        y2="-418.681"
                        gradientUnits="userSpaceOnUse"
                >
                    <stop stop-color="#3056D3" stop-opacity="0.36" />
                    <stop offset="1" stop-color="#F5F2FD" stop-opacity="0" />
                    <stop offset="1" stop-color="#F5F2FD" stop-opacity="0.096144" />
                </linearGradient>
            </defs>
        </svg>
    </div>
</section>
<!-- ====== Faq Section End -->

<%@ include file="layout/footer.jsp" %>