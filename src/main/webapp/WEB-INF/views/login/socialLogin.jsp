<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
    <title>구글 소셜로그인 만들기 강승현</title>
</head>

<body>
    <h1>쏘샬로그인 동작 테스트용 페이지</h1>
    <!-- 구글 소셜 로그인 링크 생성 -->
    <a href="https://accounts.google.com/o/oauth2/auth?response_type=code&client_id=471214335308-gl60imc2jdeseit0nfvdo8k51qdjvo10.apps.googleusercontent.com&redirect_uri=http://localhost:8008/login/google-callback&scope=openid%20email%20profile%20https://www.googleapis.com/auth/userinfo.profile&state=xyz">
        Login with Google
    </a>
</body>

</html>
