        <%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.healingpill.dao.MagazineVO" %>
<%@ page import="com.healingpill.dao.MagazineDDAO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>


<%
    request.setCharacterEncoding("utf-8");
    String num = "1";
    //String num = request.getParameter("mg_no");
    MagazineVO magazineVO = new MagazineVO();
    magazineVO.setMg_no(num);
    MagazineDDAO ddao = new MagazineDDAO();
    List magazineList = ddao.listmembers(magazineVO);

    String mg_title = null;
    String mg_datetime = null;
    for (int i = 0; i < magazineList.size(); i++) {
        MagazineVO vo = (MagazineVO) magazineList.get(i);
        String mg_no = vo.getMg_no();
        String mg_image = vo.getMg_image();
        mg_title = vo.getMg_title();
        String mg_content = vo.getMg_content();
        mg_datetime = vo.getMg_datetime();
    }
%>

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

                    <% System.out.println(mg_datetime); %>
                <%=mg_datetime%>
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                <%//=mg_title%>
                                [작약추출물등복합물(HT074) 효능] 작약추출물등복합물은 위 점막을 보호합니다.

                            </a>
                        </h3>
                        <p class="text-base text-body-color">
                            작약추출물등복합물(HT074)
                            작약추출물등복합물은 위 점막을 보호합니다.
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
                  2022-06-07
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                [식물성 단백질 효능] 식물성 단백질에 대한 오해를 풀어드립니다
                            </a>
                        </h3>
                        <p class="text-base text-body-color">
                            식물성 단백질
                            식물성 단백질도 단백질입니다
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
                  2022-06-01

                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                [비오틴 효능] 비오틴, 정말 모발과 피부 건강에 좋은가요?
                            </a>
                        </h3>
                        <p class="text-base text-body-color">
                            비오틴, 모발에 좋은 거 확실한가요?
                            해당 내용은 특정 제품과 직접적으로 관련된 내용이 아닌 성분에 대한 건강정보입니다.
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