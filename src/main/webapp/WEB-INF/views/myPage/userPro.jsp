<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 주문내역 헤더 -->
<div class="d-flex my-2 justify-content-between w-100">
	<h5>개인정보 수정</h5>
</div>

<!-- 주문 리스트 -->
<div class="container-fluid">
	<div class="card-body">
   	<form:form action="/login/userprofile" method="post">
	  	<div class="mb-2 row">
	    	<label for="staticEmail" class="col-sm-2 col-form-label">이름</label>
		    <div class="col-auto">
      			<input type="text" class="form-control" id="staticEmail" name="cname" value="${userInfo.cname}">
		    </div>
	  	</div>
    	<div class="mb-2 row">
	    	<label for="staticEmail" class="col-sm-2 col-form-label">아이디</label>
		    <div class="col-sm-10">
		      <input type="text" readonly class="form-control-plaintext" id="staticEmail" name="username" value="${userInfo.username }">
		    </div>
	  	</div>
	  	<div class="mb-2 row align-items-center">
	    	<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호</label>
		    <div class="col-auto">
		      <input type="password" name="password" class="form-control" id="password">
		    </div>
		    <div class="col-auto">
			    <span id="passwordHelpInline" class="form-text">비밀번호를 재입력하세요</span>
		  	</div>
	  	</div>
	  	<div class="mb-2 row">
	    	<label for="inputPassword" class="col-sm-2 col-form-label">전화번호</label>
		    <div class="col-sm-5">
		      <!-- 전화번호 입력 필드 -->
	            <div class=" d-flex align-items-center">
	                <div class="w-auto form-control-s mx-1">010</div><span class="fw-bold fz-12 px-2">-</span>
	                <input class="w-30 form-control mx-1" type="text" id="phone1" name="phone1" value="${userInfo.phone1 }" maxlength='4'><span class="fw-bold fz-12 px-2">-</span>
				    <input class="w-30 form-control mx-1" type="text" id="phone2" name="phone2" value="${userInfo.phone2 }" maxlength='4'>
	          	</div>
		    </div>
	  	</div>
	    <div class="row mb-2">
      		<label class="col-sm-2 form-label" for="basic-icon-default-message">주소</label>
      		<div class="col-sm-10">
        		<div class="com-add row g-2">
		          	<div class="col-sm-10">
		         		<div class="input-group input-group-merge w-75">
			        		<input value="${userInfo.caddress1}"type="text" name="caddress1" id="sample4_postcode" placeholder="우편번호" class="form-control phone-mask w-25 me-2">
							<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="phone-mask w-25">
		              	</div>	
		            </div>
					<div class="input-group input-group-merge w-100"><input name="caddress2" value="${userInfo.caddress2}" type="text" id="sample4_roadAddress" placeholder="도로명주소" class="form-control phone-mask col-sm-10"></div>
					<div class="input-group input-group-merge w-100"><input name="caddress3" value="${userInfo.caddress3}" type="text" id="sample4_jibunAddress" placeholder="지번주소" class="form-control phone-mask col-sm-10"></div>
					<span id="guide" style="color:#999;display:none"></span>
					<div class="input-group input-group-merge w-100">
						<input value="${userInfo.caddress4}" type="text" name="caddress4" id="sample4_detailAddress" placeholder="상세주소" class="form-control phone-mask w-50 me-2">
						<input value="${userInfo.caddress5}" type="text" name="caddress5" id="sample4_extraAddress" placeholder="참고항목" class="form-control phone-mask w-auto">
	             	</div>
	             </div>
           	</div>
         </div>
         <div class="row justify-content-end w-100 mx-0">
           <div class="d-flex justify-content-end px-0">
             	<button type="submit" class="btn btn-primary">저장</button>
           </div>
         </div>
  	</form:form>
	</div>
</div>

<script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

