<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>구글 로그인</title>
    <!-- Google API 라이브러리 추가 -->
    <script src="https://apis.google.com/js/api.js"></script>
</head>
<body>
    <h1>구글 로그인 정보</h1>
    <p>이름 : <span id="name"></span></p>
    <p>사용자 아이디 : <span id="userId"></span></p>
<<<<<<< HEAD
    <p>생년월일 : <span id="birthday"></span></p>
    <p>주소 : <span id="address"></span></p>

    <!-- 구글 로그인 버튼 -->
    <button onclick="signInWithGoogle()">구글로 로그인</button>

    <script>
        // 클라이언트 ID 설정
        var clientId = '471214335308-gl60imc2jdeseit0nfvdo8k51qdjvo10.apps.googleusercontent.com';
        var scopes = 'openid email profile https://www.googleapis.com/auth/userinfo.profile';

        // Google API 초기화
        gapi.load('auth2', function () {
            gapi.auth2.init({
                client_id: clientId,
            });
        });

        // 구글 로그인 버튼 클릭 시 실행되는 함수
        function signInWithGoogle() {
            gapi.auth2.getAuthInstance().signIn().then(function (googleUser) {
                // 로그인 성공 시 사용자 정보 가져오기
                var profile = googleUser.getBasicProfile();
                var email = profile.getEmail();
                var userId = extractUserId(email);
                var name = profile.getName();
                var birthday = ""; // Google API에서 직접 생년월일을 가져오는 방법은 없습니다.
                var address = ""; // Google API에서 주소 정보를 가져오는 방법은 없습니다.

                // 정보를 화면에 표시
                document.getElementById('name').textContent = name;
                document.getElementById('userId').textContent = userId;
                document.getElementById('birthday').textContent = birthday;
                document.getElementById('address').textContent = address;
=======
  	<!--<p>생년월일 : <span id="birthday"></span></p>
    <p>주소 : <span id="address"></span></p>-->

    <!-- 구글 로그인 버튼 -->
    <button onclick="signInWithGoogle()">구글로 로그인</button>

    <script>
        // 클라이언트 ID 설정
        var clientId = '471214335308-gl60imc2jdeseit0nfvdo8k51qdjvo10.apps.googleusercontent.com';
        var scopes = 'openid email profile https://www.googleapis.com/auth/userinfo.profile';

        // Google API 초기화
        gapi.load('auth2', function () {
            gapi.auth2.init({
                client_id: clientId,
            });
        });

        // 구글 로그인 버튼 클릭 시 실행되는 함수
        function signInWithGoogle() {
            gapi.auth2.getAuthInstance().signIn().then(function (googleUser) {
                // 로그인 성공 시 사용자 정보 가져오기
                var profile = googleUser.getBasicProfile();
                var email = profile.getEmail();
                var userId = extractUserId(email);
                var name = profile.getName();
                //var birthday = ""; 
                //var address = ""; 

                // 정보를 화면에 표시
                document.getElementById('name').textContent = name;
                document.getElementById('userId').textContent = userId;
                //document.getElementById('birthday').textContent = birthday;
                //document.getElementById('address').textContent = address;
>>>>>>> branch 'master' of https://github.com/kms973/MS_PROJECT.git
            });
        }

        // 사용자 아이디 추출 메소드
        function extractUserId(email) {
            var atIndex = email.indexOf("@");
            if (atIndex !== -1) {
                return email.substring(0, atIndex);
            }
            return email;
        }
    </script>
</body>
</html>
