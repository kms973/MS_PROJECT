<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- index 메인 시작 -->
<section id="login" class="board container wrap">
	<!-- <div id="sub-bnr"><h5>Commuunity</h5></div> -->
	<!-- TAB 메뉴 -->
   	<div class="form-signin w-100 m-auto">
	  	<form class="needs-validation" novalidate>
	    	<div id="sub-bnr"><h5 class="justify-content-center">Login</h5></div>
		    <div class="form-floating form-group">
		      <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" required>
		      <label for="floatingInput">이메일</label>
		      <div class="invalid-feedback">이메일을 입력해주세요.</div>
		    </div>
		    <div class="form-floating">
		      <input type="password" class="form-control" id="floatingPassword" placeholder="Password" required>
		      <label for="floatingPassword">비밀번호</label>
		      <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
		    </div>

		    <div class="box d-flex align-items-center justify-content-between my-3 fz-75">
			    <span class="input-wrap"><input type="checkbox" id="checkId" name="checkId" class="form-check-input" value="remember-me" style="position:relative; top: -2px;"><label for="checkId"></label>아이디 저장</span>
				<ul class="find d-flex align-items-center mb-0" style="list-style-type: none; padding-left: 0;">
			    	<li class="idSearch mr-4" id="idSearch" style="cursor: pointer">아이디 찾기</li>
			    	<li class="pwSearch mr-4" id="pwSearch" style="cursor: pointer">비밀번호 찾기</li>
			    	<li class="signUp" id="signUp" style="cursor: pointer">회원가입</li>
				</ul>
			</div>
	    	<button class="btn btn-primary w-100 my-1 py-2" type="submit">Sign in</button>
	    	<div class="d-flex justify-content-center align-items-center w-100 text-center my-1 py-1">OR</div>
	    	<button class="btn btn-dark w-100 my-1 py-2" type="">Sign in with Google</button>
	    	<button class="btn btn-dark w-100 my-1 py-2" type="">Sign in with KakaoTalk</button>
	  	</form>
	</div>
</section>
<script>
//Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
   'use strict'

   // Fetch all the forms we want to apply custom Bootstrap validation styles to
   var forms = document.querySelectorAll('.needs-validation')

   // Loop over them and prevent submission
   Array.prototype.slice.call(forms)
     .forEach(function (form) {
       form.addEventListener('submit', function (event) {
         if (!form.checkValidity()) {
           event.preventDefault()
           event.stopPropagation()
         }

         form.classList.add('was-validated')
         // 서버 연동 처리
       }, false);
     }, false);
   }());
 </script>
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />
