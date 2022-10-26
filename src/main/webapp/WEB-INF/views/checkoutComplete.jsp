<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>

<!-- Start Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                <div class="breadcrumbs-content">
                    <h1 class="page-title">${orderList}결제완료</h1>
                </div>
                <div>
                    ${memberInfo}
                </div>
                <ul class="breadcrumb-nav">
                    <li><a href="/">Home</a></li>
                    <li>결제완료</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->




<%@ include file="layout/footer.jsp" %>

