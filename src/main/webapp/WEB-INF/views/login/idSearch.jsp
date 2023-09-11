<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

등록된 이메일을 입력해주세요.
<form method = "post" action = "/login/idsearch" onsubmit="return checkDuplicate();">
	<input type="text" id="username" name="username">
	<button type="submit">확인</button>
</form>
<script>
    function checkDuplicate() {
        const username = document.getElementById("username").value;
        const usernameList = ${usernameList}; // 모델 속성에서 JSON 데이터를 가져옴

        // 아이디 중복 검사
        if (usernameList.includes(username)) {
            alert("동일한 아이디가 존재합니다.");
            return false; // 페이지 이동을 중단합니다.
        }

        // 중복 아이디가 아닌 경우
        return true; // 페이지 이동을 허용합니다.
    }
</script>