<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2022-11-14
  Time: 오후 3:03
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
</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- partial -->
<div class="main-panel">
    <div class="content-wrapper">
        <form role="form" method="post" autocomplete="off" enctype="multipart/form-data" id="magazineForm" name="magazineForm"  action="/admin/write">
            <div class="page-header">
                <h3 class="page-title">
                    <b>매거진 등록</b>
                </h3>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">매거진 등록</a></li>
                        <li class="breadcrumb-item active" aria-current="page">매거진 관리</li>
                    </ol>
                </nav>
            </div>
            <div class="row">
                <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Magazine registration</h4>
                            <p class="card-description">
                                매거진 등록
                            </p>
                            <br><br>
                            <div id="sform">
                                <div class="form-group">
                                    <div class="select_img"><img src="" /></div><br><br>
                                    <input type="file" id="mg_image" name="file" class="file-upload-default">
                                    <button class="file-upload-browse btn btn-gradient-danger btn-rounded btn-fw" type="button"><i class="mdi mdi-upload btn-icon-prepend"></i>Upload</button><br><br>
                                    <input type="text" class="form-control file-upload-info" style="text-align:center"; disabled placeholder="선택된 파일 없음">
                                    <script>
                                        $("#mg_image").change(function (){
                                            if(this.files && this.files[0]) {
                                                var reader = new FileReader;
                                                reader.onload = function(data) {
                                                    $(".select_img img").attr("src", data.target.result).width(500);
                                                }
                                                reader.readAsDataURL(this.files[0]);
                                            }
                                        });
                                    </script>
                                    <br><%= request.getSession().getServletContext().getRealPath("/")%>
                                </div>
                            </div>
                            <!--
                            <div class="form_group">
                                <label for = "mg_image">사진 추가</label><input type="file" class="form-control" id="mg_image" name="mg_image" placeholder="매거진 사진" value="">

                            </div>
                            -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <br><br>
                            <div class="form-group">
                                <label>매거진 제목</label>
                                <input type="text" class="form-control form-control-lg" id="mg_title" name="mg_title" placeholder="Magazine title" aria-label="Magazine title">
                            </div>
                            <div class="form-group">
                                <label>매거진 소제목</label>
                                <input type="text" class="form-control form-control-lg" id="mg_sum" name="mg_sum" placeholder="Short text" aria-label="Short text">
                            </div>

                            <div class="form-group">
                                <label>매거진 상세 내용 1</label>
                                <textarea class="form-control" id="mg_content" name="mg_content" rows="10" placeholder="Detail text" aria-label="Detail text"></textarea>
                            </div>

                            <div class="form-group">
                                <label>매거진 상세 내용 2</label>
                                <textarea class="form-control" id="mg_contents" name="mg_contents" rows="10" placeholder="Detail text" aria-label="Detail text"></textarea>
                            </div>
                            <div id="sform2">
                                <button type="submit" class="btn btn-gradient-primary mr-2 modBtn">매거진 추가</button>
                                <button type="reset" class="btn btn-light">입력 취소</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!-- content-wrapper ends --><!-- plugins:js -->
        <script src="../resources/admin/vendors/js/vendor.bundle.base.js"></script>
        <script src="../resources/admin/vendors/js/vendor.bundle.addons.js"></script>
        <!-- endinject -->
        <!-- inject:js -->
        <script src="../resources/admin/js/off-canvas.js"></script>
        <script src="../resources/admin/js/misc.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page-->
        <script src="../resources/admin/js/file-upload.js"></script>
<%@ include file="layout/footer.jsp" %>