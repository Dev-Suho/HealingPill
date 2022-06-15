<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<body>
<div id="Header"></div>
<div id="layoutSidenav_content">
    <main>
        <br>
        <form role="form" action="/admin/product/modify" method="post" autocomplete="off">

            <input type="hidden" name="pd_num" value="${products.pd_num}"/>
            <div class="container">
                <h3>상품 등록</h3><br/>
                <div class="row">

                    <div class="col-lg-6">

                        <!-- 상품 이미지
                        <div class="inputArea">
                            <label for="gdsImg">상품 이미지</label>
                            <input type="file" id="gdsImg" name="file"/>
                            <div class="select_img"><img src="" /></div>
                        </div>
                        -->
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label><h3>상품명</h3></label>
                            <div><input type="text" id = "pd_name" name="pd_name" value="${products.pd_name}"/></div>
                        </div>
                        <br/>
                        <div class="form-group">
                            <label><h3>상품가격</h3></label>
                            <div><input type="text" id = "pd_price" name="pd_price" value="${products.pd_price}"/></div>                        </div>
                        <br/>
                        <div class="form-group">
                            <label><h3>상품수량</h3></label>
                            <div><input type="text" id = "pd_stock" name="pd_stock" value="${products.pd_stock}"/></div>                        </div>
                        <br/>
                        <div class="form-group">
                            <label><h3>상품설명</h3></label>
                            <div><textarea rows="5" cols="50" id = "pd_content" name="pd_content">${products.pd_content}</textarea>                     </div>
                        <br/>
                        <div>
                            <label><h5>1차 분류</h5></label>
                            <select class="category1">
                                <option value="">전체</option>
                            </select>
                            <label>2차 분류</label>
                            <select class="category2" name="ctg_code">
                                <option value="">전체</option>
                            </select>
                        </div>
                        <br/>
                        <div style="float:left">
                            <button type="submit" style="border-color:#e6e6fa; background-color:#e6e6fa; color:black;" class="btn btn-success modBtn" id = "update_btn">완료</button>
                            <button type="button" style="border-color:black; background-color:black; color:white;" class="btn btn-secondary" id = "back_btn">취소</button></div>
                        </div>
                    </div>

                </div>
                <hr><br/>
            </div>
        </form>
    </main>
</div>
<script>
    $("#back_btn").click(function (){
        var con = confirm("정말로 삭제하시겠습니까?");

        if(con) {
            formObj.attr("action", "/admin/product/delete");
            formObj.submit();
        }
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

</body>
</html>