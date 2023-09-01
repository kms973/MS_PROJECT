<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- index 메인 시작 -->
<section id="login" class="board container wrap">
	<!-- <div id="sub-bnr"><h5>Commuunity</h5></div> -->
	<!-- TAB 메뉴 -->
   	<div class="container wrap">
		<div class="col justify-contant-center col-sm-5 col-md-5 m-0 p-0 accounts_col">
			<div id="sub-bnr"><h5 class="justify-content-center">Login</h5></div>
			<!--accounts_forms-->
			<div class="accounts_forms  w-100 h-100" id="login">
			  	<!--title-->
			  	<form method="post" name="form" class="form p-4" id="form">
					<div class="form-group"><input type="email" placeholder="이메일" name="email" class="form-control" id="id" onfocus="labelUp(this)" onblur="labelDown(this)" required /></div>
					<div class="form-group">
				  		<i class="fa fa-eye-slash" id="eye_icon_login"></i>
				  		<input type="password" placeholder="비밀번호" name="pass" class="form-control" id="login_password" onfocus="labelUp(this)" onblur="labelDown(this)" required />
						</div>

						<div class="box d-flex align-items-center justify-content-between my-4">
						<span class="input-wrap">
							<input type="checkbox" id="checkId" name="checkId">
							<label for="checkId"></label>아이디 저장
						</span>
						<ul class="find d-flex align-items-center mb-0" style="list-style-type: none; padding-left: 0;">
							<li class="idSearch mr-4" id="idSearch" style="cursor: pointer">아이디 찾기</li>
							<li class="pwSearch mr-4" id="pwSearch" style="cursor: pointer">비밀번호 찾기</li>
							<li class="signUp" id="signUp" style="cursor: pointer">회원가입</li>
						</ul>
					</div>
					<div class="form-group"><button type="submit" class="btn btn-primary register_btn w-100">로그인</button></div>
				
			    	<!-- separator -->
					<div class="separator"><p>OR</p></div>

					<!-- google button -->
					<div class="form-group"><button class="btn btn-primary w-100 google__btn"><i class="fa fa-google"></i>Sign in with Google</button></div>
				</form>
			</div>
		  </div>
	</div>
 </section>
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />
