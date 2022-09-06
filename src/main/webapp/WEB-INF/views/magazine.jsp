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


<%!
    // 변수선언
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    String uid = "healingpill";
    String pwd = "123456";
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
    String sql = "select * from magazine";
    String [][] MList = new String[9][5];
    int i = 0;
%>
        <%
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url,uid,pwd);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);

            while(rs.next()) {
                MList[i][0] = rs.getString("mg_no");
                MList[i][1] = rs.getString("mg_image");
                MList[i][2] = rs.getString("mg_title");
                MList[i][3] = rs.getString("mg_content");
                MList[i][4] = rs.getString("mg_datetime");
                i = i + 1;
                if(i == 9) { i = 0 ;}
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
                                    src="https://esther.wisacdn.com/board//_data/gallery_26/202206/03//8b392f651948c62710aaee1b814f87a7.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >

                <%=MList[0][4]%>
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                <%=MList[0][2]%>


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
                                    src="https://esther.wisacdn.com/board//_data/gallery_26/202206/10//bef257211453ea07424fedc7f19d8feb.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  <%=MList[1][4]%>
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                <%=MList[1][2]%>
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
                                    src="https://esther.wisacdn.com/board/_data/gallery_26/202205/06//gallery_26_0_1651801280.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  <%=MList[2][4]%>

                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                <%=MList[2][2]%>
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
                                    src="https://esther.wisacdn.com/board/_data/gallery_26/202205/17//gallery_26_0_1652775763.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  <%=MList[3][4]%>
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                <%=MList[3][2]%>
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
                                    src="https://esther.wisacdn.com/board//_data/gallery_26/202204/27//503d8532552b645e93268b896763991e.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  <%=MList[4][4]%>
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                <%=MList[4][2]%>
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
                                    src="https://esther.wisacdn.com/board/_data/gallery_26/202204/21//gallery_26_0_1650504952.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  <%=MList[5][4]%>
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                <%=MList[5][2]%>
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
                                    src="https://esther.wisacdn.com/board//_data/gallery_26/202205/30//3595683e2f92175d63adea974e6565ee.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  <%=MList[6][4]%>
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                <%=MList[6][2]%>
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
                                    src="https://esther.wisacdn.com/board//_data/gallery_26/202205/26//6da2da3f5400f712c61e96e3a1747cae.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  <%=MList[7][4]%>
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                <%=MList[7][2]%>
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
                                    src="https://esther.wisacdn.com/board//_data/gallery_26/202205/30//c708b282169b75335881dd29d3280f6e.jpg"
                                    alt="image"
                                    class="w-full transition group-hover:rotate-6 group-hover:scale-125"
                            />
                        </a>
                    </div>
                    <div>
                <span
                        class="mb-5 inline-block rounded bg-secondary py-1 px-4 text-center text-xs font-semibold leading-loose text-white"
                >
                  <%=MList[8][4]%>
                </span>
                        <h3>
                            <a
                                    href="/magazineDetail"
                                    class="mb-4 inline-block text-xl font-semibold text-dark hover:text-primary sm:text-2xl lg:text-xl xl:text-2xl"
                            >
                                <%=MList[8][2]%>
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