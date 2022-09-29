<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="layout/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<body class="sb-nav-fixed">
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">회원 목록</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">회원관리</li>
                </ol>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        회원차트
                    </div>
                    <div class="card-body">
                        <table class="table table-hover" id="datatablesSimple">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>이름</th>
                                <th>생년월일</th>
                                <th>번호</th>
                                <th>주문횟수</th>
                                <th>등급</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>이름</th>
                                <th>생년월일</th>
                                <th>번호</th>
                                <th>주문횟수</th>
                                <th>등급</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <tr>
                                <td>DBWLS</td>
                                <td>정유진</td>
                                <td>2000.09.07</td>
                                <td>01050546393</td>
                                <td>10</td>
                                <td>GOLD</td>
                            </tr>

                            <tr>
                                <td>TNGH</td>
                                <td>이수호</td>
                                <td>1999.05.04</td>
                                <td>01012345678</td>
                                <td>5</td>
                                <td>SILVER</td>
                            </tr>
                            <tr>
                                <td>TNALS</td>
                                <td>김수민</td>
                                <td>1999.10.04</td>
                                <td>01056781234</td>
                                <td>30</td>
                                <td>GOLD</td>
                            </tr>
                            <tr>
                                <td>GKSTN</td>
                                <td>심한수</td>
                                <td>1999.04.01</td>
                                <td>01014785236</td>
                                <td>1</td>
                                <td>-</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Your Website 2022</div>
                    <div>
                        <a href="#">Privacy Policy</a>
                        &middot;
                        <a href="#">Terms &amp; Conditions</a>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</div>
</body>
</html>
