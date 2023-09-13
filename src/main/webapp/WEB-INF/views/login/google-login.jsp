<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>구글 소셜로그인 만들기 강승현</title>
</head>
<body>
    <h1>쏘샬로그인 동작 테스트용 페이지</h1>
    <!-- 구글 소셜 로그인 링크 생성 -->
    <a href="https://accounts.google.com/o/oauth2/v2/auth?scope=https://www.googleapis.com/auth/userinfo.email+https://www.googleapis.com/auth/userinfo.profile&access_type=offline&include_granted_scopes=true&response_type=code&state=state_parameter_passthrough_value&redirect_uri=http://localhost:8008/login/google-callback&client_id=471214335308-gl60imc2jdeseit0nfvdo8k51qdjvo10.apps.googleusercontent.com">구글 로그인</a>

    <!-- 사용자 정보 출력을 위한 div -->
    <div id="userInfo" style="display:none;">
        <h2>사용자 정보</h2>
        <p><strong>이메일:</strong> <span id="userEmail"></span></p>
        <p><strong>이름:</strong> <span id="userName"></span></p>
        <p><strong>집주소:</strong> <span id="userAddress"></span></p>
        <p><strong>전화번호:</strong> <span id="userPhoneNumber"></span></p>
    </div>

    <!-- JavaScript 코드 -->
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
</body>
</html>
