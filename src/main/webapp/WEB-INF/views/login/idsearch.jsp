<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
</head>
<body>
	<form onsubmit="return checkDuplicate();">
		회원명<input type="text" id="cname" name="cname"> 전화번호 010-<input
			type="text" id="phone1" name="phone1">-<input type="text"
			id="phone2" name="phone2">
		<button type="submit">확인</button>
	</form>
	<form method="get" action="/login">
		<button type="submit">로그인하러가기</button>
	</form>

</body>
</html>

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
	        alert("동일한 아이디가 존재합니다.");
	        return false; // 중복 아이디인 경우 페이지 이동을 중단합니다.
	    } else {
	        alert("동일한 아이디가 존재하지 않습니다.");
	        return true; // 중복 아이디가 아닌 경우 페이지 이동을 허용합니다.
	    }
	}

</script>
