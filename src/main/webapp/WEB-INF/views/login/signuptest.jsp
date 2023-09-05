<<<<<<< HEAD
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
<<<<<<< HEAD
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
=======
				<input type="email" class="form-control" id="floatingInput"
					placeholder="name@example.com" required> <label
					for="floatingInput">이메일</label>
				<div class="invalid-feedback">이메일을 입력해주세요.</div>
			</div>
			<div class="form-floating my-2">
				<input type="password" class="form-control" id="floatingPassword"
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
				<input type="text" class="form-control" id="floatingname"
					placeholder="name" required> <label for="floatingname">이름</label>
				<div class="invalid-feedback">이름을 입력해주세요.</div>
			</div>
	
			<div class="form-floating d-flex my-2">
				<input type="text" name="comAddress" id="sample4_postcode"
					placeholder="주소" class="form-control phone-mask"> <label
					for="floatingname">주소</label>
				<div class="invalid-feedback">주소를 입력해주세요.</div>
				<input type="button" onclick="sample4_execDaumPostcode()"
					value="우편번호" class="phone-mask">
			</div>
			<div class="form-floating my-2">
				<input type="text" id="sample4_roadAddress" placeholder="도로명주소"
					class="form-control phone-mask"> <label for="floatingname">도로명주소</label>
				<div class="invalid-feedback">도로명주소를 입력해주세요.</div>
			</div>
			<div class="form-floating my-2">
				<input type="text" id="sample4_jibunAddress" placeholder="지번주소"
					class="form-control phone-mask"> <label for="floatingname">지번주소</label>
				<div class="invalid-feedback">지번주소를 입력해주세요.</div>
			</div>
			<div class="form-floating my-2">
				<input type="text" id="sample4_detailAddress" placeholder="상세주소"
					class="form-control phone-mask"> <label for="floatingname">상세주소</label>
				<div class="invalid-feedback">상세주소를 입력해주세요.</div>
			</div>
			<div class="form-floating my-2">
				<input type="text" id="sample4_extraAddress" placeholder="참고항목"
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
				                    <div class="accordion-body" style="heigth:300px;">

'_[MS Shop]_'은 (이하 '회사'는) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다.<br/>
회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.<br/>
회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.<br/>
<br/>
ο 본 방침은 : 2023 년 9 월 1 일 부터 시행됩니다.<br/>
<br/>
■ 수집하는 개인정보 항목<br/>
회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br/>
ο 수집항목 : 아이디, 비밀번호, 이름, 연락처, 이메일, 주소, 주문내역 등 서비스 이용기록<br/>
ο 개인정보 수집방법 : 홈페이지내 회원가입, 주문서신청<br/>
<br/>
■ 개인정보의 수집 및 이용목적<br/>
회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br/>
ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 콘텐츠 제공 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송<br/>
ο 회원 관리<br/>
회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 불만처리 등 민원처리 , 고지사항 전달<br/>
ο 마케팅 및 광고에 활용<br/>
신규 서비스(제품) 개발 및 특화<br/>
<br/>
■ 개인정보의 보유 및 이용기간<br/>
회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.<br/>
<br/>
■ 개인정보의 파기절차 및 방법<br/>
회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다.<br/>
파기절차 및 방법은 다음과 같습니다.<br/>
ο 파기절차<br/>
회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져 (종이의 경우 별도의 서류함)<br/>
내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라 일정 기간 저장된 후 파기되어집니다.<br/>
별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.<br/>
ο 파기방법<br/>
전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.<br/>
<br/>
■ 개인정보 제공<br/>
회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다.<br/>
다만, 아래의 경우에는 예외로 합니다.<br/>
- 이용자들이 사전에 동의한 경우<br/>
- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우<br/>
<br/>
■ 수집한 개인정보의 위탁<br/>
회사는 이용자의 개인정보를 원칙적으로 위탁하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.<br/>
- 택배를 통한 주문상품의 배송시<br/>
<br/>
■ 이용자 및 법정대리인의 권리와 그 행사방법<br/>
이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다.<br/>
이용자들의 개인정보 조회,수정을 위해서는 ‘개인정보변경’(또는 ‘회원정보수정’ 등)을 가입해지(동의철회)를 위해서는 “회원탈퇴”를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.<br/>
혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조치하겠습니다.<br/>
귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다.<br/>
또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다.<br/>
회사는 이용자의 요청에 의해 해지 또는 삭제된 개인정보는 “회사가 수집하는 개인정보의 보유 및 이용기간”에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.<br/>
<br/>
1. 이용자 및 법정대리인의 권리와 그 행사방법<br/>
① 정보주체는 회사에 있으며 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.<br/>
1) 개인정보열람요구<br/>
2) 오류등이 있을경우 정정 요구<br/>
3) 삭제요구<br/>
4) 처리정지요구<br/>
② 제1항에 따른 권리행사는 회사에 대해 사면, 전화, 전자우편, 모사정송(FAX)등을 통하여 하실 수 있으며 회사는 이에지체없이 조치하겠습니다<br/>
③ 정보주체가 개인정보의 오류등에 대한 정정 또는 삭제를 요구한 경우에는 회사는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.<br/>
④ 1항에 따른 권리 행사는 정보주체의 법정 대리인이나 위임을 받은자 등 대리인을 통하여 할실 수 있습니다.<br/>
이 경우 개인정보 보호법 시핼규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.<br/>
⑤ 정보주체는 개인정보보호법 등 관계법령을 위반하여 회사가 처리하고 있는 정보주체 본인이나 타인의 개인정보 및 사생뢀을 침해 해서는 아니 됩니다<br/>
<br/>
■ 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항<br/>
회사는 귀하의 정보를 수시로 저장하고 찾아내는 ‘쿠키(cookie)’ 등을 운용합니다.<br/>
쿠키란 더농산물.KR의 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. 회사은(는) 다음과 같은 목적을 위해 쿠키를 사용합니다.<br/>
<br/>
1. 자동수집 장치의 설치, 운용 및 그 거부에 관한 사항<br/>
회사는 이용자 개인에게 개인화되고 맞춤화된 서비스를 제공하기 위해 이용자의 정보를 저장하고 수시로 불러오는 '쿠키(cookie)'를 사용합니다<br/>
① 쿠키의 사용목적<br/>
회원과 비회원의 접속 빈도나 방문 시간 등의 분석, 이용자의 취향과 관심분야의 파악 및 자취추적, 각종 이벤트 참여정도 및 방문횟수 파악등을 통한 타켓마케팅 및 개인맞춤 서비스 제공<br/>
② 쿠키설정거부방법<br/>
이용자는 쿠키설치에 대해 거부할 수 있습니다.단, 쿠키설치를 거부하였을 경우 로그인이 필요한 일부 서비스의 이용이 어려울수 있습니다.<br/>
(설정방법[IE기준] : 웹브라우저 상단의 도구 > 인터넷옵션 > 개인정보 > 사이트차단)<br/>
2. 자동수집 장치의 설치, 운용을 하지않는 경우
회사는 정보주체의 이용정보를 저절하고 ‘쿠키(cookie)’ 를 사용하지 않습니다.<br/>
<br/>
■ 개인정보에 관한 민원서비스<br/>
<br/>
회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.<br/>
<br/>
개인정보관리책임자 성명 : <br/>
전화번호 : <br/>
이메일 : <br/>
<br/>
귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다.<br/>
회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다<br/>
기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br/>
<br/>
1.개인분쟁조정위원회 (www.1336.or.kr/1336)<br/>
2.정보보호마크인증위원회 (www.eprivacy.or.kr/02-580-0533~4)<br/>
3.대검찰청 인터넷범죄수사센터 (icic.sppo.go.kr/02-3480-3600)<br/>
4.경찰청 사이버테러대응센터 (www.ctrc.go.kr/02-392-0330)

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
							<h5>
								<input class="form-check-input" type="checkbox" id="selectAll">
								<label class="form-check-label" for="selectAll">전체 동의</label>							
							</h5>
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
					document.getElementById('sample4_postcode').value = data.zonecode;
					document.getElementById("sample4_roadAddress").value = roadAddr;
					document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
					
					// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
					if(roadAddr !== ''){
						document.getElementById("sample4_extraAddress").value = extraRoadAddr;
					} else {
						document.getElementById("sample4_extraAddress").value = '';
>>>>>>> branch 'master' of https://github.com/kms973/MS_PROJECT
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
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
</head>
<body>
    <h1>회원 가입</h1>
    <form method="post" action="/login/signuptest">
        <label for="userId">사용자 ID:</label>
        <input type="text" id="userId" name="username"><br>
        
        <label for="name">이름:</label>
        <input type="text" id="name" name="cname"><br>
        
        <label for="birthday">생년월일:</label>
        <input type="text" id="birthday" name="cbirthdate"><br>
        
        <label for="address">주소:</label>
        <input type="text" id="address" name="caddress1"><br>
        
        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password"><br>
        
        <input type="submit" value="회원 등록">
    </form>
</body>
</html>
>>>>>>> parent of 3bd3c12 (풀하지마세요)
