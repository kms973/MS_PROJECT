<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/styles.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="/css/adm_style.css" rel="stylesheet" />
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="/js/datatables-simple-demo.js"></script>
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="/js/scripts.js"></script>
</head>
<body id="LoginForm" class="d-flex xi-align-center justify-content-center h-100">
    <div class="container">
        <div class="login-form d-flex xi-align-center justify-content-center">
            <div class="main-div">
                <div class="panel">
                    <h2>관리자 로그인</h2>
                    <p>Please enter your ID and password</p>
                </div>
                <form:form id="Login" action="/login" method="POST">
                    <div class="form-group"><input type="text" class="form-control" id="username" name="username" placeholder="ID"></div>
                    <div class="form-group"><input type="password" class="form-control" id="password" name="password" placeholder="Password"></div>
                    <div class="forgot"><a href="#none">Forgot password?</a></div>

                    <button type="submit" class="btn btn-primary">Login</button>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>