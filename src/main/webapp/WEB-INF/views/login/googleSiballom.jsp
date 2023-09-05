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
            var redirect_uri = "http://localhost:8008/login/googleSiballom";
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

                    // 여기에 액세스 토큰을 사용하여 사용자 정보를 가져오는 코드를 작성하세요.
                    // 예를 들어, Google API를 호출하여 사용자 정보를 가져올 수 있습니다.
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
</body>
</html>
