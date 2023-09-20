<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- JSP 페이지 설정: Java 언어, 문자 인코딩 설정 등 -->

<!-- 페이지 헤더를 포함합니다. -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- 로그인 페이지 메인 섹션 시작 -->
<section id="idsearch" class="board container wrap d-flex jutify-content-center align-items-center">
	<div class="form-signin w-100 m-auto">
		
		<!-- 로그인 타이틀 -->
        <h5 class="justify-content-center text-center mb-3">아이디 찾기</h5>
		
		<form onsubmit="return checkDuplicate();" class="my-3">
			<!-- 이름 입력 필드 -->
            <div class="form-floating form-group">
                <input type="text" id="cname" name="cname" class="form-control" required>
                <label for="floatingInput">이름</label>
                <div class="invalid-feedback">이름을 입력해주세요.</div>
            </div>
            
             <!-- 전화번호 입력 필드 -->
            <div class="form-floating d-flex align-items-center mt-3">
                <div class="w-auto form-control-lg mx-1">010</div><span class="fw-bold fz-12 px-2">-</span>
                <input class="w-30 form-control form-control-lg mx-1 p-2" type="text" id="phone1" name="phone1" maxlength='4'><span class="fw-bold fz-12 px-2">-</span>
			    <input class="w-30 form-control form-control-lg mx-1 p-2" type="text" id="phone2" name="phone2" maxlength='4'>
          	</div>

			<!-- 로그인 버튼 -->
            <button class="btn btn-primary w-100 mt-4 mb-2 py-2" type="submit">확인</button>

		</form>
		
		<form method="get" action="/login">
            <button class="btn btn-primary w-100 my-1 py-2" type="submit">로그인하러가기</button>
		</form>

	</div>
</section>

<!-- 페이지 푸터를 포함합니다. -->
<jsp:include page="/WEB-INF/views/footer.jsp" />

<script>
	var userList = ${userListJson}; // userListJson을 JavaScript 객체로 파싱
	console.log(userList); // JavaScript 객체로 사용 가능

	function checkDuplicate() {
	    const cname = document.getElementById("cname").value;
	    const phone1 = document.getElementById("phone1").value;
	    const phone2 = document.getElementById("phone2").value;

	    // 아이디 중복 검사
	    let isDuplicate = false;

	    for (const user of userList) {
	        if (user.cname == cname && user.phone1 == phone1 && user.phone2 == phone2) {
	            alert("일치하는 사용자의 아이디는: "+ user.username + "입니다.");
	            console.log(user.username);
	            console.log("userList: ", userList);
	            
	            isDuplicate = true;
	            break;
	        } 
	    }

	    if (isDuplicate) {
	        // alert("동일한 아이디가 존재합니다.");
	        return false; // 중복 아이디인 경우 페이지 이동을 중단합니다.
	    } else {
	        alert("동일한 아이디가 존재하지 않습니다.");
	        return true; // 중복 아이디가 아닌 경우 페이지 이동을 허용합니다.
	    }
	}

</script>
