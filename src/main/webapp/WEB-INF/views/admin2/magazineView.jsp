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
                <i class="mdi mdi mdi-desktop-mac icon-md text-primary"></i>  Magazine Details
            </h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">매거진 상세 정보</li>
                    <li class="breadcrumb-item active" aria-current="page">매거진 조회</li>
                </ol>
            </nav>
        </div>
        <form role="form" method="post" autocomplete="off">
            <input type="hidden" name="num" value="${magazine.mg_no}"/>
            <div class="row">
                <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title"><b>매거진 정보</b></h4>
                            <p class="card-description">
                                매거진 상세 정보
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
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th><h5><b>제목</b></h5></th>
                                </thead>
                                <tr>
                                    <td class="data_td">${magazine.mg_title}</td>
                                </tr>
                                <tr>
                                    <th><h5><b>소제목</b></h5></th>
                                </tr>
                                <tr>
                                    <td class="data_td">${magazine.mg_sum}</td>
                                </tr>
                                <tr>
                                    <th><h5><b>내용 1</b></h5></th>
                                </tr>
                                <tr>
                                    <td class="data_td">${magazine.mg_content}</td>
                                </tr>
                                <tr>
                                    <th><h5><b>내용 2</b></h5></th>
                                </tr>
                                <tr>
                                    <td class="data_td">${magazine.mg_contents}</td>
                                </tr>
                                <tr>
                                    <th><h5><b>작성일</b></h5></th>
                                </tr>
                                <tr>
                                    <td class="data_td"><fmt:formatDate value="${magazine.mg_datetime}" pattern="yyyy-MM-dd"/></td>
                                </tr>
<%--
                                <tr>
                                    <th class="jb-th-1"><h5><b>제목</b></h5></th>
                                    <td class="data_td"><h5>${magazine.mg_title}</h5></td>
                                </tr>
                                <tr>
                                    <th class="jb-th-1"><h5><b>소제목</b></h5></th>
                                    <td class="data_td"><h5>${magazine.mg_sum}</h5></td>
                                </tr>
                                <tr>
                                    <th class="jb-th-1"><h5><b>내용 1</b></h5></th>
                                    <td class="data_td"><h5>${magazine.mg_content}</h5></td>
                                </tr>
                                <tr>
                                    <th class="jb-th-1"><h5><b>내용 2</b></h5></th>
                                    <td class="data_td"><h5>${magazine.mg_contents}</h5></td>
                                </tr>
                                <tr>
                                    <th class="jb-th-1"><h5><b>작성일</b></h5></th>
                                    <td class="data_td"><h5>${magazine.mg_datetime}</h5></td>
                                </tr>--%>
                            </table>
                            <div id="sform2">
                                <br><br><br>
                                <button type="submit" class="btn btn-gradient-primary mr-2" id = "modify_btn">매거진 수정</button>
                                <a  class="btn btn-gradient-primary mr-2" href="/admin2/magazine/delete?mg_no=${magazine.mg_no}" onclick="return confirm('삭제하시겠습니까?');">삭제</a>
                                <script>
                                    var formObj = $("form[role='form']");

                                    $("#modify_btn").click(function (){
                                        formObj.attr("action", "/admin2/magazineModify");
                                        /*formObj.attr("action", "/admin2/magazine/modify?num=${magazine.mg_no}");*/
                                        formObj.attr("method", "get");
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