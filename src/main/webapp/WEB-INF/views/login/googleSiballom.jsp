<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Google 로그인 예제</title>
</head>
<body>
    <h1>Google 로그인 예제 페이지</h1>

    <!-- Google 로그인 버튼을 생성합니다. -->
    <a href="#" id="googleLoginButton">Google로 로그인</a>

    <script>
        // Google 로그인 버튼 클릭 시 처리
        document.getElementById('googleLoginButton').addEventListener('click', function () {
            // Google OAuth 2.0 인증 페이지로 이동
            var client_id = "471214335308-gl60imc2jdeseit0nfvdo8k51qdjvo10.apps.googleusercontent.com";
            var redirect_uri = "http://localhost:8008/login/google-callback";
            var scope = "openid email profile";
            var state = "xyz";
            
            var authURL = "https://accounts.google.com/o/oauth2/auth" +
                "?response_type=code" +
                "&client_id=" + encodeURIComponent(client_id) +
                "&redirect_uri=" + encodeURIComponent(redirect_uri) +
                "&scope=" + encodeURIComponent(scope) +
                "&state=" + encodeURIComponent(state);
            
            window.location.href = authURL;
        });
    </script>

</body>
</html>
