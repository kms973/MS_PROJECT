<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- index 메인 시작 -->

<style>
.form-signup {
width:700px;
disply:flex;
}

.button-padding {
    padding: 5px 10px;
}
.accordion-button::after {
    transform: rotate(270deg);
    transform-origin: center;
}
table.signUp-table {
    width: 100%;
    border: 1px solid #ccc;
}
.container-signup {
margin-bottom :100px; 
}
</style>

<div class="container-signup">
	<div class="form-signup m-auto">
		<h2 class="mt-5 text-center">회원가입</h2>

		<form>
			<div class="form-floating form-group my-2">
				<input type="email" class="form-control" id="username"
					placeholder="name@example.com" required> <label
					for="floatingInput">이메일</label>
				<div class="invalid-feedback">이메일을 입력해주세요.</div>
			</div>
			<div class="form-floating my-2">
				<input type="password" class="form-control" id="password"
					placeholder="Password" required> <label
					for="floatingPassword">비밀번호</label>
				<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
			</div>
			<div class="form-floating my-2">
				<input type="password" class="form-control"
					id="floatingPasswordConfirm" placeholder="confirmPassword" required>
				<label for="floatingPasswordConfirm">비밀번호 확인</label>
				<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
			</div>
			<div class="form-floating my-2">
				<input type="text" class="form-control" id="cname"
					placeholder="name" required> <label for="floatingname">이름</label>
				<div class="invalid-feedback">이름을 입력해주세요.</div>
			</div>
	
			<div class="form-floating d-flex my-2">
				<input type="text" name="comAddress" id="caddress1"
					placeholder="주소" class="form-control phone-mask"> <label
					for="floatingname">주소</label>
				<div class="invalid-feedback">주소를 입력해주세요.</div>
				<input type="button" onclick="sample4_execDaumPostcode()"
					value="우편번호" class="phone-mask">
			</div>
			<div class="form-floating my-2">
				<input type="text" id="caddress2" placeholder="도로명주소"
					class="form-control phone-mask"> <label for="floatingname">도로명주소</label>
				<div class="invalid-feedback">도로명주소를 입력해주세요.</div>
			</div>
			<div class="form-floating my-2">
				<input type="text" id="caddress3" placeholder="지번주소"
					class="form-control phone-mask"> <label for="floatingname">지번주소</label>
				<div class="invalid-feedback">지번주소를 입력해주세요.</div>
			</div>
			<div class="form-floating my-2">
				<input type="text" id="caddress5" placeholder="상세주소"
					class="form-control phone-mask"> <label for="floatingname">상세주소</label>
				<div class="invalid-feedback">상세주소를 입력해주세요.</div>
			</div>
			<div class="form-floating my-2">
				<input type="text" id="caddress4" placeholder="참고항목"
					class="form-control phone-mask"> <label for="floatingname">참고항목</label>
				<div class="invalid-feedback">참고헝목을 입력해주세요.</div>
				<span id="guide" style="color: #999; display: none"></span>
			</div>

			<table class="table table-hover signUp-table">
				<div class="accordion" id="accordionExample">
		            <tr>
			            <td>
			           		<!-- (필수) 이용약관 동의 -->
				            <div class="accordion-item">
				                <div class="accordion-header" id="headingOne">
					               <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="checkbox1">
											<label class="form-check-label" for="checkbox1">(필수) 이용약관 동의</label>
										</div>
									</button>
				                </div>
				                <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				                    <div class="accordion-body">이용약관 내용을 여기에 추가하세요.
				                    </div>
				                </div>
				            </div>
			            </td>
					</tr>
					<tr>
						<td>
				            <!-- (필수) 개인정보 수집 및 이용 동의 -->
				            <div class="accordion-item">
				                <h2 class="accordion-header" id="headingTwo">
				                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
				                        <div class="form-check">
											  <input class="form-check-input" type="checkbox" id="checkbox2">
											  <label class="form-check-label" for="checkbox2">(필수) 개인정보 수집 및 이용 동의</label>
										  </div>
				                    </button>
				                </h2>
				                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
				                    <div class="accordion-body">
				                        개인정보 수집 및 이용 동의 내용을 여기에 추가하세요.
				                    </div>
				                </div>
				            </div>
			            </td>
					</tr>
					<tr>
						<td>
				            <!-- (필수) 전자금융거래 약관 동의 -->
				            <div class="accordion-item">
				                <h2 class="accordion-header" id="headingThree">
				                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				                        <div class="form-check">
										  <input class="form-check-input" type="checkbox" id="checkbox3">
										  <label class="form-check-label" for="checkbox3">(필수) 전자금융거래 약관 동의</label>
									  </div>
				                    </button>
				                </h2>
				                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
				                    <div class="accordion-body">
				                        전자금융거래 약관 동의 내용을 여기에 추가하세요.
				                    </div>
				                </div>
				            </div>
			            </td>
					</tr>
					
					<tr>
						<td>
				            <!-- (필수) 개인정보 제 3자 제공 동의 -->
				            <div class="accordion-item">
				                <h2 class="accordion-header" id="headingFour">
				                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
				                        <div class="form-check">
														  <input class="form-check-input" type="checkbox" id="checkbox4">
														  <label class="form-check-label" for="checkbox4">(필수) 개인정보 제 3자 제공 동의</label>
													  </div>
				                    </button>
				                </h2>
				                <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
				                    <div class="accordion-body">
				                        개인정보 제 3자 제공 동의 내용을 여기에 추가하세요.
				                    </div>
				                </div>
				            </div>
			            </td>
		            </tr>
		            
		            <tr>
			            <td>
			           		<!-- (필수) 만 14세 이상 -->
				            <div class="accordion-item">
				                <h2 class="accordion-header" id="headingFive">
				                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
				                        <div class="form-check">
											<input class="form-check-input" type="checkbox" id="checkbox5">
											<label class="form-check-label" for="checkbox5">(필수) 만 14세 이상</label>
										</div>
				                    </button>
				                </h2>
				                <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
				                    <div class="accordion-body">
				                        만 14세 이상 동의 내용을 여기에 추가하세요.
				                    </div>
				                </div>
				            </div>
			            </td>
		            </tr>
		        </div>
		    
				<tr>
					<td>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" id="selectAll">
							<label class="form-check-label" for="selectAll">전체 동의</label>
						</div>
					</td>
				</tr>
			</table>
			<button type="submit" class="btn btn-primary">회원가입</button>
		</form>

		<script>
			const checkboxes = document.querySelectorAll('.form-check-input');
		
			document.getElementById('selectAll').addEventListener('change', function () {
				checkboxes.forEach(checkbox => {
					checkbox.checked = this.checked;
				});
			});
		</script>

	</div>
</div>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
					document.getElementById('caddress1').value = data.zonecode;
					document.getElementById("caddress2").value = roadAddr;
					document.getElementById("caddress3").value = data.jibunAddress;
					
					// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
					if(roadAddr !== ''){
						document.getElementById("caddress4").value = extraRoadAddr;
					} else {
						document.getElementById("caddress4").value = '';
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

<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />
