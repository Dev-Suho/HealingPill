<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2022-11-03
  Time: 오후 1:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<style>
#sform, #sform2 {
text-align: center;
}

.jb-th-1 {
    width: 350px;
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- partial -->
<div class="main-panel">
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">
                <i class="mdi mdi-barcode icon-md text-primary"></i>  Product Details
            </h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">상품 상세 정보</li>
                    <li class="breadcrumb-item active" aria-current="page">상품 조회</li>
                </ol>
            </nav>
        </div>
        <form role="form" method="post" autocomplete="off">
            <input type="hidden" name="num" value="${products.pd_num}"/>
            <div class="row">
                <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title"><b>상품 정보</b></h4>
                            <p class="card-description">
                                상품 상세 정보
                            </p>
                            <div id="sform">
                                <div class="card-body">
                                    <blockquote class="blockquote blockquote-warning">
                                        <h3><b>상품 이미지</b></h3>
                                    </blockquote>
                                </div>
                                <ul class="list-arrow">
                                    <div class="form-group">
                                        <h4><li>원본 이미지</li></h4>
                                        <img src = "resources\ ${products.pd_mainImage}"/>
                                    </div>
                                    <div class="form-group">
                                        <h4><li>썸네일</li></h4>
                                        <img src = "resources\ ${products.pd_subImage}"/>
                                    </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <br><br><br><br><br><br>
                            <table class="table table-striped">
                                <tr>
                                    <th class="jb-th-1"><h5><b>상품명</b></h5></th>
                                    <td class="data_td"><h5>${products.pd_name}</h5></td>
                                </tr>
                                <tr>
                                    <th class="jb-th-1"><h5><b>상품 가격</b></h5></th>
                                    <td class="data_td"><h5><fmt:formatNumber value="${products.pd_price}" pattern="###,###,###"/></h5></td>
                                </tr>
                                <tr>
                                    <th class="jb-th-1"><h5><b>상품 수량</b></h5></th>
                                    <td class="data_td"><h5>${products.pd_stock}</h5></td>
                                </tr>
                                <tr>
                                    <th class="jb-th-1"><h5><b>상품 설명</b></h5></th>
                                    <td class="data_td"><h5>${products.pd_content}</h5></td>
                                </tr>
                                <tr>
                                    <th class="jb-th-1"><h5><b>카테고리 코드</b></h5></th>
                                    <td class="data_td"><h5>${products.ctg_code}</h5></td>
                                </tr>
                            </table>
                            <div id="sform2">
                                <br><br><br>
                                <button type="submit" class="btn btn-gradient-primary mr-2" id = "modify_btn">상품 수정</button>
                                <button class="btn btn-light" id = "delete_btn">상품 삭제</button>
                                <script>
                                    var formObj = $("form[role='form']");

                                    $("#modify_btn").click(function (){
                                        formObj.attr("action", "/admin/product/modify");
                                        /*formObj.attr("action", "/admin2/product/modify?num=${products.pd_num}");*/
                                        formObj.attr("method", "get");
                                        formObj.submit();
                                    });

                                    $("#delete_btn").click(function (){
                                        formObj.attr("action", "/admin/product/delete");
                                        formObj.submit();
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    <!-- content-wrapper ends -->
<%@ include file="layout/footer.jsp" %>