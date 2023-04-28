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
<table>
<tr>
    <th>id</th>
    <th>email</th>
    <th>password</th>
    <th>name</th>
    <th>birth</th>
    <th>mobile</th>
    <th>수정</th>
</tr>
    <tr>
        <td>${memberDTO.id}</td>
        <td>${memberDTO.memberEmail}</td>
        <td>${memberDTO.memberPassword}</td>
        <td>${memberDTO.memberName}</td>
        <td>${memberDTO.memberBirth}</td>
        <td>${memberDTO.memberMobile}</td>
        <td><button onclick="fun1(${memberDTO.id})">수정</button></td>
    </tr>
</table>
</div>

<%@include file="component/footer.jsp"%>

</body>
<script>
    const fun1 = (id) => {
        location.href = "/update?id="+id;
    }
</script>
</html>
