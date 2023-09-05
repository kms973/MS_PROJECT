<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.lang.*,java.io.*,java.util.*, javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="com.google.api.client.auth.oauth2.*, com.google.api.client.googleapis.auth.oauth2.*" %>
<%@ page import="com.google.api.services.oauth2.*" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
    <title>구글 로그인</title>
</head>
<body>
<!DOCTYPE html>
<html>
<head>
    <title>Google Response</title>

</head>

<body>

    <!-- Google OAuth 2.0 콜백 처리 시작 -->
    <script>
        // 페이지 로드 시 URL에서 코드 파라미터를 확인합니다.
        window.addEventListener('load', function () {
            var urlParams = new URLSearchParams(window.location.search);
            var code = urlParams.get('code');

            if (code) {
                // 인증 코드가 있는 경우, Google API를 사용하여 인증 및 사용자 정보를 가져옵니다.
                var client_id = "471214335308-gl60imc2jdeseit0nfvdo8k51qdjvo10.apps.googleusercontent.com";
                var client_secret = "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";
                var redirect_uri = "http://localhost:8008/login/googleSiballom";
                var token_url = "https://oauth2.googleapis.com/token";

                // Access Token을 요청합니다.
                fetch(token_url, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    },
                    body: "code=" + encodeURIComponent(code) +
                        "&client_id=" + encodeURIComponent(client_id) +
                        "&client_secret=" + encodeURIComponent(client_secret) +
                        "&redirect_uri=" + encodeURIComponent(redirect_uri) +
                        "&grant_type=authorization_code"
                })
                .then(response => response.json())
                .then(data => {
                    var access_token = data.access_token;

                    // 액세스 토큰을 사용하여 사용자 정보를 가져오는 요청을 보냅니다.
                    fetch('https://www.googleapis.com/oauth2/v1/userinfo', {
                        headers: {
                            'Authorization': 'Bearer ' + access_token
                        }
                    })
                    .then(response => response.json())
                    .then(userInfo => {
                        // 사용자 정보를 userInfo div에 표시합니다.
                        document.getElementById('userInfo').innerHTML = `
                            <h2>사용자 정보</h2>
                            <p>이름: ${userInfo.name}</p>
                            <p>이메일: ${userInfo.email}</p>
                        `;
                    })
                    .catch(error => {
                        console.error('사용자 정보를 가져오는 중 오류 발생:', error);
                    });
                })
                .catch(error => {
                    console.error('인증 코드 교환 중 오류 발생:', error);
                });
            } else {
                // 인증 코드가 없는 경우, 오류 처리 또는 리디렉션 등을 수행할 수 있습니다.
                console.error('인증 코드가 없습니다.');
            }
        });
    </script>
    <!-- Google OAuth 2.0 콜백 처리 종료 -->
</body><!-- 
 <script>
        // 서버로부터 받은 JSON 응답을 JavaScript 객체로 파싱합니다.
        var responseData = ${resultJson}; // resultJson은 서버에서 전달한 JSON 응답입니다.

        // 원하는 데이터를 추출하고 표시합니다.
        var email = responseData.email; // 예시: JSON 응답에서 이메일 정보 추출
        var name = responseData.name;   // 예시: JSON 응답에서 이름 정보 추출

        // 표시할 HTML을 생성합니다.
        var responseHtml = "<p>Email: " + email + "</p>";
        responseHtml += "<p>Name: " + name + "</p>";

        // HTML을 responseContainer에 추가합니다.
        document.getElementById("responseContainer").innerHTML = responseHtml;
    </script> -->
</html>
