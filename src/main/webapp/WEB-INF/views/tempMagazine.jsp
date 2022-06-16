<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<%@ page import="com.healingpill.Community.Magazine" %>
<%@ page import="com.healingpill.Community.MagazineDAO" %>
<%@ page import="java.util.ArrayList" %>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">매거진</h1>
                </div>
                <ul class="breadcrumb-nav">
                    <li><a href="/">Home</a></li>
                    <li>매거진</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->
<%
    int pageNumber = 1; //기본은 1 페이지를 할당
    // 만약 파라미터로 넘어온 오브젝트 타입 'pageNumber'가 존재한다면
    // 'int'타입으로 캐스팅을 해주고 그 값을 'pageNumber'변수에 저장한다
    if(request.getParameter("pageNumber") != null){
        pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
    }
%>
<%
    //인스턴스 생성
    MagazineDAO magazineDAO = new MagazineDAO();
    ArrayList<Magazine> list = MagazineDAO.getlist(pageNumber);
    //int i = 0;
%>
<!-- ====== Blog Section Start -->
<section class="pt-20 pb-10 lg:pt-[120px] lg:pb-20">
    <div class="section-title">
        <h3 class="wow zoomIn" data-wow-delay=".2s">Magazine</h3> <br>
        <h2 class="wow fadeInUp" data-wow-delay=".4s"> 힐링필에서 알려주는 영양 필승법 <br> </h2>
        <p class="wow fadeInUp" data-wow-delay=".6s">5분만 투자하세요, <br> 언젠가 쓸모가 생긴답니다.</p>
    </div>
    <div class="container">
        <div class="-mx-4 flex flex-wrap">
            <div class="w-full px-4 md:w-1/2 lg:w-1/3">
                <div class="wow fadeInUp group mb-10" data-wow-delay=".1s">
                    <div class="mb-8 overflow-hidden rounded">
                        <a href="/magazineDetail" class="block">
                            <img
                                    src="resources/assets/images/blog/blog-01.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                    <% list.get(i).getMg_no(); %>
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                <% list.get(i).getMg_title(); %>
                            </a>
                        </h3>
                        <p class="text-base text-body-color">
                            <% list.get(i).getMg_content(); %>
                        </p>
                    </div>
                </div>
            </div>
            <div class="w-full px-4 md:w-1/2 lg:w-1/3">
                <div class="wow fadeInUp group mb-10" data-wow-delay=".15s">
                    <div class="mb-8 overflow-hidden rounded">
                        <a href="/magazineDetail" class="block">
                            <img
                                    src="resources/assets/images/blog/blog-02.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  Mar 15, 2023
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                How to earn more money as a wellness coach
                            </a>
                        </h3>
                        <p class="text-base text-body-color">
                            Lorem Ipsum is simply dummy text of the printing and
                            typesetting industry.
                        </p>
                    </div>
                </div>
            </div>
            <div class="w-full px-4 md:w-1/2 lg:w-1/3">
                <div class="wow fadeInUp group mb-10" data-wow-delay=".2s">
                    <div class="mb-8 overflow-hidden rounded">
                        <a href="/magazineDetail" class="block">
                            <img
                                    src="resources/assets/images/blog/blog-03.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  Jan 05, 2023

                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                The no-fuss guide to upselling and cross selling
                            </a>
                        </h3>
                        <p class="text-base text-body-color">
                            Lorem Ipsum is simply dummy text of the printing and
                            typesetting industry.
                        </p>
                    </div>
                </div>
            </div>
            <div class="w-full px-4 md:w-1/2 lg:w-1/3">
                <div class="wow fadeInUp group mb-10" data-wow-delay=".1s">
                    <div class="mb-8 overflow-hidden rounded">
                        <a href="/magazineDetail" class="block">
                            <img
                                    src="resources/assets/images/blog/blog-02.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  Mar 15, 2023
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                How to earn more money as a wellness coach
                            </a>
                        </h3>
                        <p class="text-base text-body-color">
                            Lorem Ipsum is simply dummy text of the printing and
                            typesetting industry.
                        </p>
                    </div>
                </div>
            </div>
            <div class="w-full px-4 md:w-1/2 lg:w-1/3">
                <div class="wow fadeInUp group mb-10" data-wow-delay=".15s">
                    <div class="mb-8 overflow-hidden rounded">
                        <a href="/magazineDetail" class="block">
                            <img
                                    src="resources/assets/images/blog/blog-03.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  Jan 05, 2023
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                The no-fuss guide to upselling and cross selling
                            </a>
                        </h3>
                        <p class="text-base text-body-color">
                            Lorem Ipsum is simply dummy text of the printing and
                            typesetting industry.
                        </p>
                    </div>
                </div>
            </div>
            <div class="w-full px-4 md:w-1/2 lg:w-1/3">
                <div class="wow fadeInUp group mb-10" data-wow-delay=".2s">
                    <div class="mb-8 overflow-hidden rounded">
                        <a href="/magazineDetail" class="block">
                            <img
                                    src="resources/assets/images/blog/blog-01.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  Dec 22, 2023
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                Meet AutoManage, the best AI management tools
                            </a>
                        </h3>
                        <p class="text-base text-body-color">
                            Lorem Ipsum is simply dummy text of the printing and
                            typesetting industry.
                        </p>
                    </div>
                </div>
            </div>
            <div class="w-full px-4 md:w-1/2 lg:w-1/3">
                <div class="wow fadeInUp group mb-10" data-wow-delay=".1s">
                    <div class="mb-8 overflow-hidden rounded">
                        <a href="/magazineDetail" class="block">
                            <img
                                    src="resources/assets/images/blog/blog-01.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  Dec 22, 2023
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                Meet AutoManage, the best AI management tools
                            </a>
                        </h3>
                        <p class="text-base text-body-color">
                            Lorem Ipsum is simply dummy text of the printing and
                            typesetting industry.
                        </p>
                    </div>
                </div>
            </div>
            <div class="w-full px-4 md:w-1/2 lg:w-1/3">
                <div class="wow fadeInUp group mb-10" data-wow-delay=".15s">
                    <div class="mb-8 overflow-hidden rounded">
                        <a href="/magazineDetail" class="block">
                            <img
                                    src="resources/assets/images/blog/blog-02.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  Mar 15, 2023
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                How to earn more money as a wellness coach
                            </a>
                        </h3>
                        <p class="text-base text-body-color">
                            Lorem Ipsum is simply dummy text of the printing and
                            typesetting industry.
                        </p>
                    </div>
                </div>
            </div>
            <div class="w-full px-4 md:w-1/2 lg:w-1/3">
                <div class="wow fadeInUp group mb-10" data-wow-delay=".2s">
                    <div class="mb-8 overflow-hidden rounded">
                        <a href="/magazineDetail" class="block">
                            <img
                                    src="resources/assets/images/blog/blog-03.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  Jan 05, 2023
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                The no-fuss guide to upselling and cross selling
                            </a>
                        </h3>
                        <p class="text-base text-body-color">
                            Lorem Ipsum is simply dummy text of the printing and
                            typesetting industry.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ====== Blog Section End -->

<%@ include file="layout/footer.jsp" %>