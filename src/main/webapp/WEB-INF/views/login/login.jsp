<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<title>MS Shop</title>
<!-- css 링크 연결 -->
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="/css/styles.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="/css/login_style.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- script 링크 연결 -->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="/js/scripts.js"></script>
<script src="/js/login_scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!-- header 시작 -->
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

	<!-- index 메인 시작 -->
	<section id="sub-bnr">
		<div class="container wrap">
			<h1>Login</h1>

			<div class="container outer_container accounts_container">

				<!--account_col-->
				<div class="col justify-contants-center col-sm-12 col-md-12 m-0 p-0 accounts_col">

					<!--accounts_forms-->
					<div class="accounts_forms  w-100 h-100" id="login">
						<div class="title  mt-4 p-4 w-100">
							<h1 style="text-align: center;">Login</h1>
						</div>
						<!--title-->
						<form method="post" name="form" class="form  w-100 p-4" id="form">
							<div class="form-group">

								<input type="email" placeholder="이메일" name="email"
									class="form-control" id="id" onfocus="labelUp(this)"
									onblur="labelDown(this)" required />
							</div>
							<div class="form-group">
								<i class="fa fa-eye-slash" id="eye_icon_login"></i> <input
									type="password" placeholder="비밀번호" name="pass"
									class="form-control" id="login_password"
									onfocus="labelUp(this)" onblur="labelDown(this)" required />
							</div>

							<div
								class="box d-flex align-items-center justify-content-between my-4">
								<span class="input-wrap"> <input type="checkbox" id="checkId" name="checkId"> <label for="checkId"></label>
									아이디 저장
								</span>
								<ul class="find d-flex align-items-center mb-0" style="list-style-type: none; padding-left: 0;">
									<li class="idSearch mr-4" id="idSearch" style="cursor: pointer">아이디 찾기</li>
									<li class="pwSearch mr-4" id="pwSearch" style="cursor: pointer">비밀번호 찾기</li>
									<li class="signUp" id="signUp" style="cursor: pointer">회원가입</li>
								</ul>
							</div>


							<div class="form-group mb-0">

								<button type="submit" class="btn btn-primary register_btn w-100">로그인</button>
							</div>

							<!-- separator -->
							<div class="separator">
								<p>OR</p>
							</div>
							<!-- google button -->
							<button class="google__btn">
								<i class="fa fa-google"></i> Google로 로그인 </button>
						</form>


					</div>
					<!--accounts_forms-->
				</div>
				<!--account_col-->
			</div>
			<!--row-->
		</div>

		</div>
	</section>




	<!-- footer 시작 -->
	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
<script>
const dropdownElementList = document.querySelectorAll('.dropdown-toggle')
const dropdownList = [...dropdownElementList].map(dropdownToggleEl => new bootstrap.Dropdown(dropdownToggleEl))
</script>
</html>