<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/style.css">
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
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
                <td><button id="button_id" onclick="ajax_01(${member.id})">${member.id}</button></td>
                <td>${member.memberEmail}</td>
                <td>${member.memberPassword}</td>
                <td>${member.memberName}</td>
                <td>${member.memberBirth}</td>
                <td>${member.memberMobile}</td>
                <td><button onclick="fun2('${member.id}')">상세조회</button></td>

            </tr>
        </c:forEach>
    </table>
    <div id="container">

    </div>
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
    const ajax_01 = (id) => {
        $.ajax({
            type:"post",
            url:"member_table",
            data:{
                "id": id
            },
            success: function (res) {
                const resultArea = document.getElementById("container");
                let result = "<table style='width: 100%; text-align: center'>";
                result += "<tr> <th>Id</th> <th>Email</th> <th>Password</th> <th>Name</th> <th>Birth</th> <th>Mobile</th> <th>조회</th> </tr>";
                result += "<tr>";
                result += "<td>"+res.id+"</td>";
                result += "<td>"+res.memberEmail+"</td>";
                result += "<td>"+res.memberPassword+"</td>";
                result += "<td>"+res.memberName+"</td>";
                result += "<td>"+res.memberBirth+"</td>";
                result += "<td>"+res.memberMobile+"</td>";
                result += "<td>"+"조회"+"</td>";
                result += "</tr>";
                result += "</table>";
                resultArea.innerHTML = result;
            },
            error: function () {
                alert("에러");
            }
        })
    }

</script>
</html>