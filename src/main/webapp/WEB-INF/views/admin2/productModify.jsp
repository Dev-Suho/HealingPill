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
                <i class="mdi mdi mdi mdi-spotlight-beam icon-md text-primary"></i>  Product Modification
            </h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">상품 수정</li>
                    <li class="breadcrumb-item active" aria-current="page">상품 조회</li>
                </ol>
            </nav>
        </div>
        <form role="form" action="/admin2/product/modify" method="post" autocomplete="off">
            <input type="hidden" name="pd_num" value="${products.pd_num}"/>
            <div class="row">
                <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title"><b>상품 수정</b></h4>
                            <p class="card-description">
                                상품 정보 수정
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
                            <br><br>
                            <div class="form-group">
                                <label>상품명</label>
                                <input type="text" class="form-control form-control-lg" id="pd_name" name="pd_name" value="${products.pd_name}" placeholder="Product name" aria-label="Product name">
                            </div>
                            <div class="form-group">
                                <label>한 줄 설명</label>
                                <input type="text" class="form-control form-control-lg" id="pd_content" name="pd_content" value="${products.pd_content}" placeholder="Short text" aria-label="Short text">
                            </div>
                            <div class="form-group">
                                <label>가격</label>
                                <input type="text" class="form-control form-control-lg" id="pd_price" name="pd_price" value="${products.pd_price}" placeholder="Price" aria-label="Price">
                            </div>
                            <div class="form-group">
                                <label>수량</label>
                                <input type="text" class="form-control form-control-lg" id="pd_stock" name="pd_stock" value="${products.pd_stock}" placeholder="Quantity" aria-label="Quantity">
                            </div>
                            <div class="form-group">
                                <label>1차 분류</label>
                                <select class="category1 form-control">
                                    <option value="">전체</option>
                                </select> <br>
                                <label>2차 분류</label>
                                <select class="category2 form-control" name="ctg_code">
                                    <option value="">전체</option>
                                </select>
                            </div>
                            <div id="sform2">
                                <br><br>
                                <button type="submit" class="btn btn-gradient-primary mr-2 modBtn" id = "update_btn">수정 완료</button>
                                <button type="button" class="btn btn-light" id = "back_btn">수정 취소</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!-- content-wrapper ends -->

        <script>
            var formObj = $("form[role='form']");

            $("#back_btn").click(function (){

                formObj.attr("action", "/admin2/product_list");
                formObj.attr("method", "get");
                formObj.submit();
            });
        </script>
        <script>
            var select_ctg_code = '${products.ctg_code}';
            var select_ctg_codeRef = '${products.ctg_CodeRef}';
            var select_ctg_name = '${products.ctg_Name}';

            if(select_ctg_codeRef != null && select_ctg_codeRef != '') {
                $(".category1").val(select_ctg_codeRef);
                $(".category1").children().remove();
                $(".category1").append("<option value = '" + select_ctg_codeRef + "'>" + select_ctg_codeRef + "</option>");
                $(".category2").val(select_ctg_code);
                $(".category2").children().remove();
                $(".category2").append("<option value = '" + select_ctg_code + "'>" + select_ctg_name + "</option>");
            } else {
                $(".category1").val(select_ctg_code);
                $(".category1").children().remove();
                $(".category1").append("<option value = '" + select_ctg_code + "'>" + select_ctg_code + "</option>");
                $(".category2").children().remove();
                $(".category2").append("<option value= '" + select_ctg_code +  "' selected='selected'>전체</option>");
            }
        </script>
<%@ include file="layout/footer.jsp" %>