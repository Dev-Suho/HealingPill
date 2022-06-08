<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body>
<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid">
            <h1 class="mt-4">회원조회</h1>
        </div>
        <br>
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table mr-1"></i> 회원차트
            </div>
            <div class="memberManager">
                <table class="table table-hover" id="adminMemberList">
                    <thead>
                    <tr>
                        <th>등급</th>
                        <th>ID</th>
                        <th>이름</th>
                        <th>생년월일</th>
                        <th>번호</th>
                        <th>주문횟수</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
            </div>
        </div>
</div>
</main>

</body>
</html>