<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: 오전 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/style.css">
    <title>index</title>
</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
<div id="section">
    ${sessionScope.loginEmail}님 반갑습니다<br>
        <button onclick="fun1(${sessionScope.loginEmail})">정보수정</button>
        <button onclick="fun3()">로그아웃</button>
        <button onclick="fun2()">세션값 js에서 확인</button>
        <a href="/">처음으로</a>
</div>
<%@include file="component/footer.jsp"%>

</body>
<script>
    const fun1 = (${sessionScope.loginEmail}) => {
        location.href = "/member?memberEmail="+${sessionScope.loginEmail};
    }
    const fun2 = () => {
        const loginEmail = '${sessionScope.loginEmail}';
        console.log("로그인이메일 : "+loginEmail);
    }
    const fun3 = () => {
        location.href = "logout";
    }
</script>
</html>
