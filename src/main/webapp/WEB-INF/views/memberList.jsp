<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <table style="width: 100%; text-align: center;">
        <tr>
            <th>Id</th>
            <th>Email</th>
            <th>Password</th>
            <th>Name</th>
            <th>Birth</th>
            <th>Mobile</th>
            <th>조회</th>
        </tr>
        <c:forEach items="${List}" var="member">
            <tr>
                <td>${member.id}</td>
                <td>${member.memberEmail}</td>
                <td>${member.memberPassword}</td>
                <td>${member.memberName}</td>
                <td>${member.memberBirth}</td>
                <td>${member.memberMobile}</td>
                <td><button onclick="fun2('${member.id}')">상세조회</button></td>

            </tr>
        </c:forEach>
    </table>
</div>
<%@include file="component/footer.jsp"%>

</body>
<script>
    const fun1 = () => {
        location.href="/";
    }
    const fun2 = (id) => {
        location.href = "/member?id="+id;
    }

</script>
</html>