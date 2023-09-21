<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>네이버 로그인 정보</title>
</head>
<body>
    <h1>네이버 로그인 정보</h1>
    <table>
        <tr>
            <th>Attribute</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Name:</td>
            <td>${userInfo.name}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>${userInfo.email}</td>
        </tr>
        <tr>
            <td>Birthday:</td>
            <td>${userInfo.birthday}</td>
        </tr>
        <tr>
            <td>Phone:</td>
            <td>${userInfo.phone}</td>
        </tr>
    </table>
</body>
</html>
