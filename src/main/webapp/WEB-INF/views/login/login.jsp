<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- JSP 페이지 설정: Java 언어, 문자 인코딩 설정 등 -->

<!-- 페이지 헤더를 포함합니다. -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- 로그인 페이지 메인 섹션 시작 -->
<section id="login" class="board container wrap">
    <!-- 로그인 페이지 섹션 -->

    <!-- 로그인 폼 시작 -->
    <div class="form-signin w-100 m-auto">
        <form method="post" action="/login" class="needs-validation" novalidate onsubmit="return checkDuplicate();">
            <!-- 로그인 폼 -->

            <!-- 서브 배너 (탭 메뉴와 관련된 부분으로 보이며 현재 주석 처리되어 있습니다) -->
            <!-- <div id="sub-bnr"><h5>Community</h5></div> -->

            <!-- 로그인 타이틀 -->
            <div id="sub-bnr"><h5 class="justify-content-center">Login</h5></div>

            <!-- 이메일 입력 필드 -->
            <div class="form-floating form-group">
                <input name="username" type="email" class="form-control" id="username" placeholder="name@example.com" required>
                <label for="floatingInput">이메일</label>
                <div class="invalid-feedback">이메일을 입력해주세요.</div>
            </div>

            <!-- 비밀번호 입력 필드 -->
            <div class="form-floating">
                <input name="password" type="password" class="form-control" id="password" placeholder="Password" required>
                <label for="floatingPassword">비밀번호</label>
                <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
            </div>
			<c:if test="${param.error != null}">
			        <script>
	        		// 오류 메시지를 alert 창으로 표시
	       			 alert("아이디와 비밀번호가 잘못되었습니다.");
	    			</script>
		    </c:if>
            <!-- 아이디 저장 체크박스 및 관련 정보 -->
            <div class="box d-flex align-items-center justify-content-between my-3 fz-75">
                <span class="input-wrap"><input type="checkbox" id="checkId" name="checkId" class="form-check-input" value="remember-me" style="position:relative; top: -2px;"><label for="checkId"></label>아이디 저장</span>
                <ul class="find d-flex align-items-center mb-0" style="list-style-type: none; padding-left: 0;">
                    <!-- 아이디 찾기, 비밀번호 찾기 및 회원가입 링크 -->
                    <li class="idSearch mr-4" id="idSearch" style="cursor: pointer"><a href="/login/idsearch">아이디 찾기</a></li>
                    <li class="pwSearch mr-4" id="pwSearch" style="cursor: pointer">비밀번호 찾기</li>
                    <li class="signUp" id="signUp" style="cursor: pointer"><a href="/login/signup">회원가입</a></li>
                </ul>
            </div>

            <!-- 로그인 버튼 -->
            <button class="btn btn-primary w-100 my-1 py-2" type="submit">Sign in</button>

            <!-- 구글 계정으로 로그인 버튼 -->
            <div class="d-flex justify-content-center align-items-center w-100 text-center my-1 py-1">OR</div>
            <button class="btn btn-dark w-100 my-1 py-2" type="">Sign in with Google</button>

            <!-- 카카오톡으로 로그인 버튼 -->
            <button class="btn btn-dark w-100 my-1 py-2" type="">Sign in with KakaoTalk</button>
        </form>
    </div>
    <!-- 로그인 폼 종료 -->
</section>
<!-- <script>
function checkDuplicate() {
    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value; // 비밀번호 입력 필드의 값을 가져옵니다.
    const usernameList = ${usernameList}; // 모델 속성에서 JSON 데이터를 가져옴

    // 아이디 중복 검사
    if (usernameList.includes(username)) {
        // 아이디가 중복된 경우
        if (!usernameList.includes(password)) {
            alert("비밀번호가 틀렸습니다.");
            return false; // 페이지 이동을 중단합니다.
        } else{
            return true;}
    }

  
}
</script> -->

<!-- 로그인 페이지 메인 섹션 종료 -->

<!-- JavaScript 코드 (폼 유효성 검사를 수행합니다) -->
<script>
    // 폼 유효성 검사를 위한 JavaScript 코드
    (function () {
        'use strict'

        // 사용자 입력 폼을 모두 가져옵니다.
        var forms = document.querySelectorAll('.needs-validation')

        // 각 폼에 대해 이벤트 리스너를 추가하여 유효성 검사를 수행합니다.
        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    // 폼이 유효하지 않으면 제출을 중지합니다.
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }

                    // 폼에 유효성 검사를 적용한 후 서버로 데이터를 전송할 수 있습니다.
                    form.classList.add('was-validated')
                }, false);
            }, false);
    }());
</script>
<!-- 페이지 푸터를 포함합니다. -->
<jsp:include page="/WEB-INF/views/footer.jsp" />
