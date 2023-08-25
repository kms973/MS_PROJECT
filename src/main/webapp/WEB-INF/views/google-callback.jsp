<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="com.google.api.client.auth.oauth2.*, com.google.api.client.googleapis.auth.oauth2.*" %>
<%@ page import="com.google.api.services.oauth2.*" %>
<%
// client_secret JSON 파일의 경로
String clientSecretPath = "path/to/client_secret_471214335308-gl60imc2jdeseit0nfvdo8k51qdjvo10.apps.googleusercontent.com.json";

// OAuth 인증 플로우를 설정
GoogleClientSecrets clientSecrets = GoogleClientSecrets.load(
    JacksonFactory.getDefaultInstance(), new FileReader(clientSecretPath));

GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
    GoogleNetHttpTransport.newTrustedTransport(), new JacksonFactory(),
    clientSecrets.getDetails().getClientId(),
    clientSecrets.getDetails().getClientSecret(),
    Arrays.asList("openid", "email", "profile", "https://www.googleapis.com/auth/userinfo.profile"))
    .setAccessType("offline")
    .build();

// 인증 코드를 가져옴
String code = request.getParameter("code");

// 인증 코드로 토큰을 받아옴
GoogleTokenResponse tokenResponse = flow.newTokenRequest(code)
    .setRedirectUri("http://localhost:8008/google-callback")
    .execute();

// 토큰으로 Credential 생성
GoogleCredential credential = new GoogleCredential.Builder()
    .setTransport(GoogleNetHttpTransport.newTrustedTransport())
    .setJsonFactory(new JacksonFactory())
    .setClientSecrets(clientSecrets)
    .build()
    .setFromTokenResponse(tokenResponse);

// OAuth2 서비스 생성
Oauth2 oauth2 = new Oauth2.Builder(
    GoogleNetHttpTransport.newTrustedTransport(), new JacksonFactory(), credential)
    .setApplicationName("Your Application Name")
    .build();

// 사용자 정보 가져오기
Person userInfo = oauth2.userinfo().get().execute();
String email = userInfo.getEmail();
String userId = extractUserId(email); // 사용자 아이디 추출
String name = userInfo.getName();
String birthday = userInfo.getBirthday();
Address address = userInfo.getAddress();
String formattedAddress = address != null ? address.getFormatted() : "";

// 사용자 아이디 추출
private String extractUserId(String email) {
    int atIndex = email.indexOf("@");
    if (atIndex != -1) {
        return email.substring(0, atIndex);
    }
    return email;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>구글 로그인</title>
</head>
<body>
    <h1>구글 로그인 정보</h1>
    <p>이름 : <%= name %></p>
    <p>사용자 아이디 : <%= userId %></p>
    <p>생년월일 : <%= birthday %></p>
    <p>주소 : <%= formattedAddress %></p>
</body>
</html>
