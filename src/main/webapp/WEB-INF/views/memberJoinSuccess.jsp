<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2022-05-21
  Time: 오후 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<style>
    body {
        text-align: center;
    }
    fieldset {
        padding-top: 50px;
        padding-bottom: 50px;
        width: 400px;
        border: 3px dotted black;
        margin: 0 auto;
    }
    input {
        width: 200px;
        height: 35px;
        margin-top: 10px;
    }
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String mem_id = (String) request.getAttribute("mem_id");
    String mem_password = (String) request.getAttribute("mem_password");
    String mem_username = (String) request.getAttribute("mem_username");
    String mem_phone = (String) request.getAttribute("mem_phone");
    String mem_birth_year = (String) request.getAttribute("mem_birth_year");
    int mem_birth_month = (Integer) request.getAttribute("mem_birth_month");
    int mem_birth_day = (Integer) request.getAttribute("mem_birth_day");
    String mem_address = (String) request.getAttribute("mem_address");
    String mem_email = (String) request.getAttribute("mem_email");
    String mem_sex = (String) request.getAttribute("mem_sex");
    String mem_is_admin = (String) request.getAttribute("mem_is_admin");

%>


<fieldset>
    <legend>회원 가입 성공</legend>
    <%= mem_id %>(<%=mem_username %>)환영합니다! <br />
</fieldset>

</body>
</html>
