<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
</head>
<body>
<c:forEach var="user" items="${userList }">
	<div>${user.cname} / ${user.phone1 } / ${user.phone2 } /</div>
</c:forEach>
<form onsubmit="return checkDuplicate();">
	회원명<input type="text" id="cname" name="cname"> 
	전화번호 010-<input type="text" id="phone1" name="phone1">-<input type="text" id="phone2" name="phone2">
	<button type="submit">확인</button>
</form>
<form method="get" action="/login/login">
	<button type="submit">로그인하러가기</button>
</form> 

</body>
</html>

<script>
	function checkDuplicate() {
		const cname = document.getElementById("cname").value;
		const phone1 = document.getElementById("phone1").value;
		const phone2 = document.getElementById("phone2").value;
		const userList = ${userList}; // 모델 속성에서 JSON 데이터를 가져옴

		// 아이디 중복 검사
		if (userList.includes(cname)) {
			if (userList.includes(phone1)) {
				if (userList.includes(phone2)) {
					console.log(dd);
				}
			}
			
			// return false; // 페이지 이동을 중단합니다.
		} else {
			alert("동일한 아이디가 존재하지 않습니다.")
		}

		// 중복 아이디가 아닌 경우
		//return true; // 페이지 이동을 허용합니다.
	}
</script> 