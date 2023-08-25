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
<link href="/css/styles.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="/js/datatables-simple-demo.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body class="bg-gradient-primary">
	<section class="vh-100 gradient-custom">
		<div class="container py-5 h-100">
			<div class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card bg-dark text-white" style="border-radius: 1rem;">
						<div class="card-body p-5 text-center">
							<div class="mb-md-5 mt-md-4 pb-5">
								<h2 class="fw-bold mb-2 text-uppercase">관리자 로그인</h2>
								<!-- <p class="text-white-50 mb-5">Please enter your login and password!</p> -->
								<form:form action="/login" method="POST">
									<div class="form-outline form-white mb-4">
										<label class="form-label" for="username">아이디</label> <input type="text" id="username" name="username" class="form-control form-control-lg" />
									</div>
									<div class="form-outline form-white mb-4">
										<label class="form-label" for="password">비밀번호</label> <input type="password" id="password" name="password" class="form-control form-control-lg" />
									</div>
									
									<!-- id input -->
					              	<!-- <div class="chips chips-placeholder">
					              	<div class="form-outline chips-input-wrapper">
				      					<input type="text" id="" class="form-control chips-input">
				      						<label class="form-label" for="" style="margin-left: 0px;">아이디</label>
				
									      <div class="form-notch">
									        <div class="form-notch-leading" style="width: 9px;"></div>
									        <div class="form-notch-middle" style="width: 87.2px;"></div>
									        <div class="form-notch-trailing"></div>
									      </div>
									</div>
				   					</div> -->
				   					
									<p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>
									<button class="btn btn-outline-light btn-lg px-5" type="submit">로그인하기</button>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>