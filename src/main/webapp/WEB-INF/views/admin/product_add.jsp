<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2022-11-03
  Time: 오후 1:38
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
        <form role="form" method="post" autocomplete="off" enctype="multipart/form-data" action="product_add">
            <div class="page-header">
                <h3 class="page-title">
                    <b>상품 등록</b>
                </h3>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">상품 등록</a></li>
                        <li class="breadcrumb-item active" aria-current="page">상품 관리</li>
                    </ol>
                </nav>
            </div>
            <div class="row">
                <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Product registration</h4>
                            <p class="card-description">
                                새 상품 등록
                            </p>
                            <br><br>
                            <div id="sform">
                                <div class="form-group">
                                    <div class="select_img"><img src="" /></div><br><br>
                                    <input type="file" id="pd_mainImage" name="file" class="file-upload-default">
                                    <button class="file-upload-browse btn btn-gradient-danger btn-rounded btn-fw" type="button"><i class="mdi mdi-upload btn-icon-prepend"></i>Upload</button><br><br>
                                    <input type="text" class="form-control file-upload-info" style="text-align:center"; disabled placeholder="선택된 파일 없음">
                                    <script>
                                        $("#pd_mainImage").change(function (){
                                            if(this.files && this.files[0]) {
                                                var reader = new FileReader;
                                                reader.onload = function(data) {
                                                    $(".select_img img").attr("src", data.target.result).width(400);
                                                }
                                                reader.readAsDataURL(this.files[0]);
                                            }
                                        });
                                    </script>
                                    <br><%= request.getSession().getServletContext().getRealPath("/")%>
                                </div>
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
                                <input type="text" class="form-control form-control-lg" id="pd_name" name="pd_name" placeholder="Product name" aria-label="Product name">
                            </div>
                            <div class="form-group">
                                <label>한 줄 설명</label>
                                <input type="text" class="form-control form-control-lg" id="pd_content" name="pd_content" placeholder="Short text" aria-label="Short text">
                            </div>
                            <div class="form-group">
                                <label>가격</label>
                                <input type="text" class="form-control form-control-lg" id="pd_price" name="pd_price" placeholder="Price" aria-label="Price">
                            </div>
                            <div class="form-group">
                                <label>수량</label>
                                <input type="text" class="form-control form-control-lg" id="pd_stock" name="pd_stock" placeholder="Quantity" aria-label="Quantity">
                            </div>
                            <div class="form-group">
                                <label>전체</label>
                                <select class="category1 form-control">
                                    <option value="">전체</option>
                                </select> <br>
                                <select class="category2 form-control" name="ctg_code">
                                    <option value="">전체</option>
                                </select>
                            </div>
                            <div id="sform2">
                                <br><br>
                                <button type="submit" class="btn btn-gradient-primary mr-2 modBtn" id = "register_Btn">상품 추가</button>
                                <button type="reset" class="btn btn-light">입력 취소</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <!-- 컨트롤러에서 데이터 받기 -->
        <script>
            var jsonData = JSON.parse('${category}');
            console.log(jsonData);

            var cate1Arr = new Array();
            var cate1Obj = new Object();

            // 1차 분류 셀렉트 박스에 삽일할 데이터
            for(var i = 0; i < jsonData.length; i++) {
                if(jsonData[i].ctg_level == "1") {
                    cate1Obj = new Object();
                    cate1Obj.ctg_Code = jsonData[i].ctg_Code;
                    cate1Obj.ctg_Name = jsonData[i].ctg_Name;
                    cate1Arr.push(cate1Obj);
                }
            }

            var cate1Select = $("select.category1");

            for(var i = 0; i < cate1Arr.length; i++) {
                cate1Select.append("<option value = '" + cate1Arr[i].ctg_Code + "'>" + cate1Arr[i].ctg_Name + "</option>");
            }
        </script>
        <script>
            // 2차 분류
            $(document).on("change", "select.category1", function (){
                var cate2Arr = new Array();
                var cate2Obj = new Object();

                for(var i = 0; i < jsonData.length; i++) {
                    if(jsonData[i].ctg_level == "2") {
                        cate2Obj = new Object();
                        cate2Obj.ctg_Code = jsonData[i].ctg_Code;
                        cate2Obj.ctg_Name = jsonData[i].ctg_Name;
                        cate2Obj.ctg_CodeRef = jsonData[i].ctg_CodeRef;

                        cate2Arr.push(cate2Obj);
                    }
                }
                var cate2Select = $("select.category2");

                // 기존 데이터 삭제
                cate2Select.children().remove();

                $("option:selected", this).each(function () {
                    // 현재 선택된(:selected) 1차 분류값($(this).val();)을 저장한다
                    var selectVal = $(this).val();
                    cate2Select.append("<option value = '" + selectVal + "'>전체</option>");

                    for (var i = 0; i < cate2Arr.length; i++) {
                        // selectVal과 ctg_CodeRef를 비교해서 동일할 경우에 실행
                        if (selectVal == cate2Arr[i].ctg_CodeRef) {
                            cate2Select.append("<option value = '" + cate2Arr[i].ctg_Code + "'>" + cate2Arr[i].ctg_Name + "</option>");
                        }
                    }
                });
            });
        </script>

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