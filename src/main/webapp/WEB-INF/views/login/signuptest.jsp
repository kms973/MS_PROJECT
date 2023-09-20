<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- index 메인 시작 -->

<style>
.form-signup {
width: 500px;
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
		<form method="post" action ="/login/signup" onsubmit="return checkDuplicate();">
			<div class="form-floating form-group my-2">
			<c:if test="${email == null }">
				<input name="username" type="email" class="form-control" id="username"
					placeholder="name@example.com" required onblur="checkUsername()"> <label
					for="floatingInput">이메일</label>
					</c:if>
					<c:if test="${email != null }">
				<input value="${email }" name="username" type="email" class="form-control" id="username"
					placeholder="name@example.com" required onblur="checkUsername()"> <label
					for="floatingInput">이메일</label>
					</c:if>
				<div class="invalid-feedback">이메일을 입력해주세요.</div>
				<span id="usernameMessage" style="color: red;"></span> <!-- 아이디 중복 메시지 표시할 위치 -->
			</div>
			<div class="form-floating my-2">
				<input name="password" type="password" class="form-control" id="password"
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
				<input name="cname" type="text" class="form-control" id="cname"
					placeholder="name" required> <label for="floatingname">이름</label>
				<div class="invalid-feedback">이름을 입력해주세요.</div>
			</div>
			
			<div class="row">
			    <div class="col-md-3">
			        <div class="form-floating my-2">
					    <select class="form-select" id="phone1" name="phone">
					        <option value="010">010</option>
					        <option value="011">011</option>
					        <option value="016">016</option>
					        <option value="017">017</option>
					        <option value="019">019</option>
					    </select>
			        </div>
			    </div>
			    <div class="col-md-4">
			        <div class="form-floating my-2">
			            <input name="phone1" type="text" class="form-control" id="cphone2" placeholder="phone" required>
			            <label for="cphone1">전화번호</label>
			            <div class="invalid-feedback">전화번호를 입력해주세요.</div>
			        </div>
			    </div>
			    <div class="col-md-5">
			        <div class="form-floating my-2">
			            <input name="phone2" type="text" class="form-control" id="cphone3" placeholder="phone" required>
			            <label for="cphone2">전화번호</label>
			            <div class="invalid-feedback">전화번호를 입력해주세요.</div>
			        </div>
			    </div>
			</div>
			
	
			<div class="form-floating d-flex my-2">
				<input type="text" name="caddress1" id="caddress1"
					placeholder="주소" class="form-control phone-mask"> <label
					for="floatingname">주소</label>
				<div class="invalid-feedback">주소를 입력해주세요.</div>
				<input type="button" onclick="sample4_execDaumPostcode()"
					value="우편번호" class="phone-mask">
			</div>
			<div class="form-floating my-2">
				<input name="caddress2" type="text" id="caddress2" placeholder="도로명주소"
					class="form-control phone-mask"> <label for="floatingname">도로명주소</label>
				<div class="invalid-feedback">도로명주소를 입력해주세요.</div>
			</div>
			<div class="form-floating my-2">
				<input name="caddress3" type="text" id="caddress3" placeholder="지번주소"
					class="form-control phone-mask"> <label for="floatingname">지번주소</label>
				<div class="invalid-feedback">지번주소를 입력해주세요.</div>
			</div>
			<div class="form-floating my-2">
				<input name="caddress5" type="text" id="caddress5" placeholder="상세주소"
					class="form-control phone-mask"> <label for="floatingname">상세주소</label>
				<div class="invalid-feedback">상세주소를 입력해주세요.</div>
			</div>
			<div class="form-floating my-2">
				<input name="caddress4" type="text" id="caddress4" placeholder="참고항목"
					class="form-control phone-mask"> <label for="floatingname">참고항목</label>
				<div class="invalid-feedback">참고헝목을 입력해주세요.</div>
				<span id="guide" style="color: #999; display: none"></span>
			</div>

			<table class="table table-hover signUp-table">
       
            <tr>
                <td>
                       <!-- (필수) 이용약관 동의 -->
                    <div class="accordion-item">
                        <div class="accordion-header" id="headingOne">
                           <button class="accordion-button collapsed mb-0" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal1" aria-expanded="false" aria-controls="collapseOne">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="checkbox1" name="chkSelect" onclick="checkSelectAll()">
                                    <label class="form-check-label" for="checkbox1">(필수) 이용약관 동의</label>
                                </div>
                            </button>
                        </div>
                        <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="checkbox1" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h1 class="modal-title fs-5" id="checkbox1">(필수) 이용약관 동의</h1>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						        
						      <p>아래의 내용을 숙지하고 이해하였으며, 아래와 같은 조건으로 이용약관에 동의합니다:</p>

    <h5>1. 약관의 목적</h5>
    <p>본 약관의 목적은 회사의 서비스를 이용하는 데 필요한 조건 및 규정을 정의하는 것입니다.</p>

    <h5>2. 이용약관의 적용</h5>
    <p>본 약관은 회사의 모든 서비스 및 제품에 대한 이용 조건을 규정합니다.</p>

    <h5>3. 이용자의 권리와 의무</h5>
    <p>이용자는 회사의 서비스를 이용함에 있어 다음과 같은 권리와 의무가 있습니다:</p>
    <ul>
        <li>[이용자의 권리 1]</li>
        <li>[이용자의 의무 1]</li>

    </ul>

    <h5>4. 서비스의 변경 및 중단</h5>
    <p>회사는 사전 고지 없이 서비스를 변경하거나 중단할 수 있습니다.</p>

    <h5>5. 개인정보 보호</h5>
    <p>개인정보 처리에 대한 정보는 개인정보 보호 정책에서 규정합니다.</p>

    <h5>6. 약관의 변경</h5>
    <p>회사는 약관을 변경할 권리가 있으며, 변경 사항은 웹사이트 또는 앱을 통해 공지됩니다.</p>

    <h5>7. 분쟁 해결</h5>
    <p>이용자와 회사 간의 분쟁은 관련 법률 및 규정에 따라 해결됩니다.</p>

    <p>본인은 이용약관의 내용을 검토하고 동의합니다.</p>

    <p>동의자 정보:</p>
    <p>이름: [동의자 이름]</p>
    <p>서명: __________________________</p>
    <p>날짜: [동의 일자]</p>
						        
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
						      </div>
						    </div>
						  </div>
						</div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <!-- (필수) 개인정보 수집 및 이용 동의 -->
                    <div class="accordion-item">
                            <button class="accordion-button collapsed mb-0" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal2" aria-expanded="false" aria-controls="collapseTwo">
                                <div class="form-check">
                                      <input class="form-check-input" type="checkbox" id="checkbox2" name="chkSelect" onclick="checkSelectAll()">
                                      <label class="form-check-label" for="checkbox2">(필수) 개인정보 수집 및 이용 동의</label>
                                  </div>
                            </button>
                            <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="checkbox2" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h1 class="modal-title fs-5" id="checkbox2">(필수) 개인정보 수집 및 이용 동의</h1>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						        
						       <p>아래와 같이 개인정보 수집 및 이용에 동의합니다:</p>

    <h5>1. 수집 및 이용 목적</h5>
    <p>본인은 개인정보가 다음과 같은 목적으로 수집 및 이용되는 것에 동의합니다:</p>
    <ul>
        <li>[수집 및 이용 목적 1]</li>
        <li>[수집 및 이용 목적 2]</li>
        <!-- 필요한 만큼 수집 및 이용 목적을 나열합니다. -->
    </ul>

    <h5>2. 수집하는 개인정보 항목</h5>
    <p>본인은 다음의 개인정보 항목을 수집하는 데 동의합니다:</p>
    <ul>
        <li>[수집되는 개인정보 항목 1]</li>
        <li>[수집되는 개인정보 항목 2]</li>
        <!-- 필요한 만큼 개인정보 항목을 나열합니다. -->
    </ul>

    <h5>3. 개인정보 보유 및 이용 기간</h5>
    <p>개인정보는 다음과 같은 기간 동안 보유 및 이용됩니다: [보유 및 이용 기간]</p>

    <h5>4. 동의 철회</h5>
    <p>본인은 언제든지 개인정보 수집 및 이용에 대한 동의를 철회할 수 있습니다. 동의 철회 시 개인정보 수집 및 이용이 중단됩니다.</p>

    <p>동의자 정보:</p>
    <p>이름: [동의자 이름]</p>
    <p>서명: __________________________</p>
    <p>날짜: [동의 일자]</p>
						        
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
						      </div>
						    </div>
						  </div>
						</div>	
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <!-- (필수) 전자금융거래 약관 동의 -->
                    <div class="accordion-item">
                            <button class="accordion-button collapsed mb-0" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal3" aria-expanded="false" aria-controls="collapseThree">
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" id="checkbox3" name="chkSelect" onclick="checkSelectAll()">
                                  <label class="form-check-label" for="checkbox3">(필수) 전자금융거래 약관 동의</label>
                              </div>
                            </button>
                        <div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="checkbox3" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h1 class="modal-title fs-5" id="checkbox3">(필수) 전자금융거래 약관 동의</h1>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						        
						        <h5>제1장: 총칙</h5>
    <p>1. 이 약관은 전자금융거래 주체(이하 "회사"라 함)와 회사와 계약을 체결한 자(이하 "이용자"라 함) 간의 전자금융거래에 관한 제반사항을 규정합니다.</p>

    <h5>제2장: 이용자의 권리 및 의무</h5>
    <p>1. 이용자는 회사가 제공하는 전자금융서비스를 이용할 권리가 있습니다.</p>
    <p>2. 이용자는 제공되는 서비스를 이용함에 있어 모든 관련 법률 및 규정을 준수해야 합니다.</p>

    <h5>제3장: 회사의 권리 및 의무</h5>
    <p>1. 회사는 전자금융서비스를 안정적으로 제공하기 위해 노력해야 합니다.</p>
    <p>2. 회사는 이용자에게 사전 고지 없이 서비스 내용을 변경하거나 중단할 수 있습니다.</p>

    <h5>제4장: 손해배상 및 면책</h5>
    <p>1. 회사는 서비스 이용 과정에서 발생한 이용자의 손해에 대해 책임을 부담하지 않습니다.</p>
    <p>2. 그 외의 손해배상 및 면책 사항은 별도의 계약 또는 약관에 따릅니다.</p>

    <h5>제5장: 준거법 및 재판관할</h5>
    <p>1. 본 약관에 관한 분쟁은 관련 법률과 규정에 따라 해결됩니다.</p>

    <p>이상의 내용은 일반적인 예시일 뿐이며, 실제 전자금융거래 약관은 귀하의 조직 또는 기업의 필요와 법률적 상황에 따라 맞춤화되어야 합니다. 전문적인 법률 조언을 얻기 위해 법률 전문가와 상담하는 것이 중요합니다.</p>
						        
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
						      </div>
						    </div>
						  </div>
						</div>	
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <!-- (필수) 개인정보 제 3자 제공 동의 -->
                    <div class="accordion-item">
                            <button class="accordion-button collapsed mb-0" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal4" aria-expanded="false" aria-controls="collapseFour">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="checkbox4" name="chkSelect" onclick="checkSelectAll()">
                                    <label class="form-check-label" for="checkbox4">(필수) 개인정보 제 3자 제공 동의</label>
                                </div>
                            </button>
                        <div class="modal fade" id="exampleModal4" tabindex="-1" aria-labelledby="checkbox4" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h1 class="modal-title fs-5" id="checkbox4">(필수) 개인정보 제 3자 제공 동의</h1>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">

<p>본인은 아래의 내용을 숙지하고 이해하였으며, 아래와 같은 조건으로 개인정보의 제3자 제공에 동의합니다:</p>

    <h5>1. 개인정보 제공자 정보</h5>
    <p>이름: [개인정보 제공자의 이름]</p>
    <p>주소: [개인정보 제공자의 주소]</p>
    <p>연락처: [개인정보 제공자의 연락처]</p>

    <h5>2. 제공받는 자 정보</h5>
    <p>이름: [개인정보를 제공받는 자의 이름]</p>
    <p>주소: [개인정보를 제공받는 자의 주소]</p>
    <p>연락처: [개인정보를 제공받는 자의 연락처]</p>

    <h5>3. 제공되는 개인정보</h5>
    <p>본인은 아래의 개인정보 항목을 제공하거나 제공받는데 동의합니다:</p>
    <ul>
        <li>[제공되는 개인정보 항목 1]</li>
        <li>[제공되는 개인정보 항목 2]</li>

    </ul>

    <h5>4. 제공 목적</h5>
    <p>제공되는 개인정보는 다음과 같은 목적으로 사용됩니다:</p>
    <ul>
        <li>[제공 목적 1]</li>
        <li>[제공 목적 2]</li>

    </ul>

    <h5>5. 제공 기간</h5>
    <p>개인정보 제공은 다음과 같은 기간 동안 유지됩니다: [제공 기간]</p>

    <h5>6. 동의 철회</h5>
    <p>본인은 언제든지 개인정보 제공에 대한 동의를 철회할 수 있습니다. 동의 철회 시 개인정보 제공이 중단됩니다.</p>

    <p>본인은 개인정보 제공에 대한 동의를 하기 전에 신중히 검토하였으며, 동의서의 내용을 이해하고 있습니다.</p>

    <p>동의자 정보:</p>
    <p>이름: [동의자 이름]</p>
    <p>서명: __________________________</p>
    <p>날짜: [동의 일자]</p>

						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
						      </div>
						    </div>
						  </div>
						</div>	
                    </div>
                </td>
            </tr>
            
            <tr>
                <td>
                       <!-- (필수) 만 14세 이상 -->
                    <div class="accordion-item">
                            <button class="accordion-button collapsed mb-0" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal5" aria-expanded="false" aria-controls="collapseFive">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="checkbox5" name="chkSelect" onclick="checkSelectAll()">
                                    <label class="form-check-label" for="checkbox5">(필수) 만 14세 이상</label>
                                </div>
                            </button>
                        <div class="modal fade" id="exampleModal5" tabindex="-1" aria-labelledby="checkbox5" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h1 class="modal-title fs-5" id="checkbox5">(필수) 만 14세 이상</h1>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">

<p>본인은 만 14세 이상으로, 아래의 내용을 숙지하고 이해하였으며, 아래와 같은 조건으로 개인정보의 제3자 제공에 동의합니다:</p>

    <h5>1. 개인정보 제공자 정보</h5>
    <p>이름: [개인정보 제공자의 이름]</p>
    <p>주소: [개인정보 제공자의 주소]</p>
    <p>연락처: [개인정보 제공자의 연락처]</p>

    <h5>2. 제공받는 자 정보</h5>
    <p>이름: [개인정보를 제공받는 자의 이름]</p>
    <p>주소: [개인정보를 제공받는 자의 주소]</p>
    <p>연락처: [개인정보를 제공받는 자의 연락처]</p>

    <h5>3. 제공되는 개인정보</h5>
    <p>본인은 아래의 개인정보 항목을 제공하거나 제공받는데 동의합니다:</p>
    <ul>
        <li>[제공되는 개인정보 항목 1]</li>
        <li>[제공되는 개인정보 항목 2]</li>

    </ul>

    <h5>4. 제공 목적</h5>
    <p>제공되는 개인정보는 다음과 같은 목적으로 사용됩니다:</p>
    <ul>
        <li>[제공 목적 1]</li>
        <li>[제공 목적 2]</li>
        
    </ul>

    <h5>5. 제공 기간</h5>
    <p>개인정보 제공은 다음과 같은 기간 동안 유지됩니다: [제공 기간]</p>

    <h5>6. 동의 철회</h5>
    <p>본인은 언제든지 개인정보 제공에 대한 동의를 철회할 수 있습니다. 동의 철회 시 개인정보 제공이 중단됩니다.</p>

    <p>본인은 개인정보 제공에 대한 동의를 하기 전에 신중히 검토하였으며, 동의서의 내용을 이해하고 있습니다.</p>

    <p>동의자 정보:</p>
    <p>이름: [동의자 이름]</p>
    <p>서명: __________________________</p>
    <p>날짜: [동의 일자]</p>

						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
						      </div>
						    </div>
						  </div>
						</div>	
                    </div>
                </td>
            </tr>
        <tr>
            <td>
                <div class="form-check">
                	<b>
	                    <input class="form-check-input" type="checkbox" id="selectAll" name="selectall" onclick="selectAll(this)" >
	                    <label class="form-check-label" for="selectAll">전체 동의</label>
                	</b>
                </div>
            </td>
        </tr>
    </table>
        <button type="submit" class="btn btn-primary" onclick="return validateCheckboxes();">회원가입</button>
    </form>
	</div>
</div>
<script>
function checkSelectAll()  {
// 전체 체크박스
	const checkboxes 
	= document.querySelectorAll('input[name="chkSelect"]');
// 선택된 체크박스
	const checked 
	= document.querySelectorAll('input[name="chkSelect"]:checked');
// select all 체크박스
	const selectAll 
	= document.querySelector('input[name="selectall"]');

	if(checkboxes.length === checked.length)  {
		selectAll.checked = true;
	} else {
		selectAll.checked = false;
	}

}

function selectAll(selectAll)  {
	const checkboxes 
	= document.getElementsByName('chkSelect');

	checkboxes.forEach((checkbox) => {
	checkbox.checked = selectAll.checked
	})
}
</script>
<script>
    function checkUsername() {
        const username = document.getElementById("username").value;
        const usernameMessage = document.getElementById("usernameMessage");
        const usernameList = ${usernameList}; // 모델 속성에서 JSON 데이터를 가져옴

        // 아이디 중복 검사
        if (usernameList.includes(username)) {
            usernameMessage.textContent = "이미 사용 중인 아이디입니다.";
            usernameMessage.style.color = "red";
        } else {
            usernameMessage.textContent = "사용 가능한 아이디입니다.";
            usernameMessage.style.color = "green";
        }
    }
</script>
<script>
    function checkDuplicate() {
        const username = document.getElementById("username").value;
        const usernameList = ${usernameList}; // 모델 속성에서 JSON 데이터를 가져옴

        // 아이디 중복 검사
        if (usernameList.includes(username)) {
            alert("이미 사용 중인 아이디입니다.");
            return false; // 페이지 이동을 중단합니다.
        }

        // 중복 아이디가 아닌 경우
        return true; // 페이지 이동을 허용합니다.
    }
</script>

<script>
        function validateCheckboxes() {
            const checkboxes = document.querySelectorAll('.form-check-input');
            const selectedCheckboxes = Array.from(checkboxes).filter(checkbox => checkbox.checked);

            if (selectedCheckboxes.length < 5) {
                alert('필수 동의사항 약관에 동의해야 합니다.');
                return false; 
            }

            return true; 
        }

        const checkboxes = document.querySelectorAll('.form-check-input');
        document.getElementById('selectAll').addEventListener('change', function () {
            checkboxes.forEach(checkbox => {
                checkbox.checked = this.checked;
            });
        });
</script>

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
<!-- <script>

const username = ${usernameList};

console.log(username)
</script> -->
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />
