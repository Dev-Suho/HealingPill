<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="layout/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body>
<div id="Header"></div>
<div id="layoutSidenav_content">
    <main>
        <br>
        <form role="form" id="pdaddForm" name="pdaddForm" method="post" autocomplete="off">
            <div class="container">
                <h3>상품 등록</h3><br/>
                <div class="row">

                    <div class="col-lg-6">
                        <!-- 상품 이미지 -->
                        <div class="inputArea">
                            <label for="gdsImg">상품 이미지</label>
                            <input type="file" id="gdsImg" name="file"/>
                            <div class="select_img"><img src="" /></div>
                        </div>

                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <input type="text" class="form-control" id="pd_name" name="pd_name" placeholder="상품명">
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-control" id="pd_simplecontent" name="pd_simplecontent" placeholder="한줄 설명">
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-control" id="pd_price" name="pd_price" placeholder="가격">
                        </div>

                        <select class="category1">
                            <option value="">전체</option>
                        </select> <br><br/>

                        <select class="category2">
                            <option value="">전체</option>
                        </select> <br><br/>
                    </div>
                </div>
                <hr><br/>
                <div style="float:left">
                    <button type="button" style="border-color:#e6e6fa; background-color:#e6e6fa; color:black;" class="btn btn-success modBtn" onclick="jebal();" >추가</button>
                    <button type="button" style="border-color:black; background-color:black; color:white;" class="btn btn-secondary" >취소</button></div>
            </div>
        </form>
    </main>
</div>

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
            cate2Select.append("<option value = ''>전체</option>");

            for (var i = 0; i < cate2Arr.length; i++) {
                // selectVal과 ctg_CodeRef를 비교해서 동일할 경우에 실행
                if (selectVal == cate2Arr[i].ctg_CodeRef) {
                    cate2Select.append("<option value = '" + cate2Arr[i].ctg_Code + "'>" + cate2Arr[i].ctg_Name + "</option>");
                }
            }
        });
    });
</script>

</body>
</html>