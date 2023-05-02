
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>
<%-- ajax(Asynchronous Javascript and XML) --%>
<button onclick="ajax07()">함수호출</button>
</body>
<script>
    const ajax07 = () => {
        const member = {
            "memberEmail": "aaa@aaa.com",
            "memberPassword": "1q2w3e",
            "memberName": "회원1"
        }
        $.ajax({
            type: "post",
            url: "/ajax_07",
            // js object를 JSON으로 변환
            data: JSON.stringify(member),
            // 서버에게 보내는 데이터의 타입을 지정
            contentType: "application/json",
            success: function (res) {
                console.log("요청성공",res)
            },
            error: function () {
                console.log("요청실패");
            }
        });
    }
</script>
</html>
