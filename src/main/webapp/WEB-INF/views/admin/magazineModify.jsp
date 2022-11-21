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
                <i class="mdi mdi mdi mdi-spotlight-beam icon-md text-primary"></i>  Magazine Modification
            </h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">매거진 수정</li>
                    <li class="breadcrumb-item active" aria-current="page">매거진 조회</li>
                </ol>
            </nav>
        </div>
        <form role="form" action="/admin/magazineModify" method="post" autocomplete="off">
            <input type="hidden" name="mg_no" value="${magazine.mg_no}"/>
            <div class="row">
                <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title"><b>매거진 수정</b></h4>
                            <p class="card-description">
                                매거진 정보 수정
                            </p>
                            <div id="sform">
                                <div class="card-body">
                                    <blockquote class="blockquote blockquote-warning">
                                        <h3><b>매거진 이미지</b></h3>
                                    </blockquote>
                                </div>
                                <ul class="list-arrow">
                                    <div class="form-group">
                                        <h4><li>원본 이미지</li></h4>
                                        <img src = "resources\ ${magazine.mg_image}"/>
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
                                <label>매거진 제목</label>
                                <input type="text" class="form-control form-control-lg" id="mg_title" name="mg_title" value="${magazine.mg_title}" placeholder="Magazine name" aria-label="Magazine name">
                            </div>
                            <div class="form-group">
                                <label>매거진 소제목</label>
                                <input type="text" class="form-control form-control-lg" id="mg_sum" name="mg_sum" value="${magazine.mg_sum}" placeholder="Magazine Summary" aria-label="Magazine Summary">
                            </div>
                            <div class="form-group">
                                <label>매거진 상세 내용 1</label>
                                <textarea class="form-control" id="mg_content" name="mg_content" rows="10" placeholder="Detail text" aria-label="Detail text">${magazine.mg_content}</textarea>
                            </div>
                            <div class="form-group">
                                <label>매거진 상세 내용 2</label>
                                <textarea class="form-control" id="mg_contents" name="mg_contents" rows="10" placeholder="Detail text" aria-label="Detail text">${magazine.mg_contents}</textarea>
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

                formObj.attr("action", "/admin/magazine_list");
                formObj.attr("method", "get");
                formObj.submit();
            });
        </script>
<%@ include file="layout/footer.jsp" %>