
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>
<%-- ajax(Asynchronous Javascript and XML) --%>
<button onclick="ajax08()">함수호출</button>
<div id="result-area">

</div>
</body>
<script>
  const ajax08 = () => {
    const member = {
      "memberEmail": "aaa@aaa.com",
      "memberPassword": "abcdef1234!#$%",
      "memberName": "회원1"
    }
    $.ajax({
      type: "post",
      url: "/ajax_08",
      // js object를 JSON으로 변환
      data: JSON.stringify(member),
      // 서버에게 보내는 데이터의 타입을 지정
      contentType: "application/json",
      success: function (res) {
        console.log("요청성공",res)
        const resultArea = document.getElementById("result-area");
        let result = "<table>";
        for ( let i in res ) {
          result +="<tr>";
          result +="<td>"+ res[i].memberEmail+"</td>";
          result +="<td>"+ res[i].memberName+"</td>";
          result +="</tr>";
        }
        result += "</table>";
        resultArea.innerHTML= result;
      },
      error: function () {
        console.log("요청실패");
      }
    });
  }
</script>
</html>
