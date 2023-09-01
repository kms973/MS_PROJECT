<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
</head>
<body>
    <h1>User Profile</h1>
    <div>
        <strong>Name:</strong> <%= request.getParameter("name") %><br>
        <strong>Email:</strong> <%= request.getParameter("email") %><br>
    </div>
</body>
</html>
