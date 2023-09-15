<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.IOException" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<html>
<head>
    <title>Google Callback Page</title>
</head>
<body>
    <h1>Google Callback Page</h1>

    <%!
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // 콜백 파라미터에서 이메일, 이름, 집주소, 전화번호를 가져옵니다.
            String email = request.getParameter("email");
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String phoneNumber = request.getParameter("phoneNumber");

            // 사용자 정보를 출력하는 JavaScript 코드로 전달
            System.out.println("email: " + email);
            System.out.println("name: " + name);
            System.out.println("address: " + address);
            System.out.println("phoneNumber: " + phoneNumber);
        }
    %>

    <script>
        // 사용자 정보를 출력하는 함수
        function displayUserInfo(email, name, address, phoneNumber) {
            document.getElementById('userEmail').innerText = email;
            document.getElementById('userName').innerText = name;
            document.getElementById('userAddress').innerText = address;
            document.getElementById('userPhoneNumber').innerText = phoneNumber;
            document.getElementById('userInfo').style.display = 'block';
        }

        // URL에서 콜백 파라미터를 파싱하여 사용자 정보를 가져옴
        function parseCallbackParameters() {
            const urlParams = new URLSearchParams(window.location.search);
            const email = urlParams.get('email');
            const name = urlParams.get('name');
            const address = urlParams.get('address');
            const phoneNumber = urlParams.get('phoneNumber');
            if (email && name && address && phoneNumber) {
                displayUserInfo(email, name, address, phoneNumber);
            }
        }

        // 페이지 로드 시 파라미터 파싱 실행
        window.onload = parseCallbackParameters;
    </script>

    <!-- 사용자 정보 출력을 위한 div -->
    <div id="userInfo" style="display:none;">
        <h2>사용자 정보</h2>
        <p><strong>이메일:</strong> <span id="userEmail"></span></p>
        <p><strong>이름:</strong> <span id="userName"></span></p>
        <p><strong>집주소:</strong> <span id="userAddress"></span></p>
        <p><strong>전화번호:</strong> <span id="userPhoneNumber"></span></p>
    </div>
</body>
</html>