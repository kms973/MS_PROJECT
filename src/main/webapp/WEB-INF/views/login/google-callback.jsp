<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.lang.*,java.io.*,java.util.*, javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="com.google.api.client.auth.oauth2.*, com.google.api.client.googleapis.auth.oauth2.*" %>
<%@ page import="com.google.api.services.oauth2.*" %>



<!DOCTYPE html>
<html>
<head>
    <title>구글 로그인</title>
</head>
<body>
    <h1>구글 로그인 정보</h1>
    <p id="name">이름 : </p>
    <p id="userId">사용자 아이디 : </p>
    <p id="birthday">생년월일 : </p>
    <p id="address">주소 : </p>

    <script>
        // client_secret JSON 파일의 경로
        const clientSecretPath = "path/to/client_secret_471214335308-gl60imc2jdeseit0nfvdo8k51qdjvo10.apps.googleusercontent.com.json";

        // OAuth 인증 플로우 설정
        const { google } = require('googleapis');
        const fs = require('fs');

        const OAuth2Client = new google.auth.OAuth2(
            "471214335308-gl60imc2jdeseit0nfvdo8k51qdjvo10.apps.googleusercontent.com",
            "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",
            "http://localhost:8008/login/google-callback" // Redirect URI
        );

        // 사용자 정보 가져오기 함수
        async function getUserInfo(code) {
            const tokenResponse = await OAuth2Client.getToken(code);
            OAuth2Client.setCredentials(tokenResponse.tokens);

            const oauth2 = google.oauth2({ version: 'v2', auth: OAuth2Client });
            const userInfo = await oauth2.userinfo.get();
            const email = userInfo.data.email;
            const userId = extractUserId(email); // 사용자 아이디 추출
            const name = userInfo.data.name;
            const birthday = userInfo.data.birthday;
            const addresses = userInfo.data.addresses;

            document.getElementById('name').textContent += name;
            document.getElementById('userId').textContent += userId;
            document.getElementById('birthday').textContent += birthday;

            if (addresses && addresses.length > 0) {
                document.getElementById('address').textContent += addresses[0].formatted;
            }
        }

        // 사용자 아이디 추출 메소드
        function extractUserId(email) {
            const atIndex = email.indexOf("@");
            if (atIndex !== -1) {
                return email.substring(0, atIndex);
            }
            return email;
        }

        // 여기서 인증 코드를 얻어와서 getUserInfo 함수 호출
        const code = "사용자로부터 얻은 인증 코드"; // 사용자로부터 받은 코드
        getUserInfo(code);
    </script>
</body>
</html>
