<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MS Shop - Admin</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="/css/styles.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="/js/datatables-simple-demo.js"></script>
</head>
<body class="sb-nav-fixed">
	<!-- adm_header 부분  -->
	<jsp:include page="adm_header.jsp"></jsp:include>

	<!-- 메인보드 영역 -->

 

   	<section id="company">
   		 <div class="container-fluid px-4">
            <h1 class="mt-4"></h1>
            <!-- <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">회사정보</li>
            </ol> -->
			<div class="col-xxl">
		        <div class="card mb-4">
		          <div class="card-header d-flex align-items-center justify-content-between">
		            <h5 class="mb-0">회사 정보</h5>
		            <!-- <small class="text-muted float-end">Merged input group</small> -->
		          </div>
		          <div class="card-body">
		             <form:form action="/admin/company" method="post">
		              <div class="row mb-3">
		                <label class="col-sm-2 col-form-label" for="basic-icon-default-fullname">회사명</label>
		                <div class="col-sm-10">
		                  <div class="input-group input-group-merge">
		                    <span id="basic-icon-default-fullname2" class="input-group-text"><i class="fa-regular fa-building"></i></span>
		                    <input type="text" name="companyName" class="form-control" id="basic-icon-default-fullname" placeholder="회사명" aria-describedby="basic-icon-default-fullname2">
		                  </div>
		                </div>
		              </div>
		              <div class="row mb-3">
		                <label class="col-sm-2 col-form-label" for="basic-icon-default-company">대표자</label>
		                <div class="col-sm-10">
		                  <div class="input-group input-group-merge">
		                    <span id="basic-icon-default-company2" class="input-group-text"><i class="fa-solid fa-user"></i></span>
		                    <input type="text" name="ceoName" id="basic-icon-default-company" class="form-control" placeholder="대표자" aria-describedby="basic-icon-default-company2">
		                  </div>
		                </div>
		              </div>
		              <div class="row mb-3">
		                <label class="col-sm-2 col-form-label" for="basic-icon-default-email">사업자</label>
		                <div class="col-sm-10">
		                  <div class="input-group input-group-merge">
		                    <span class="input-group-text"><i class="fa-solid fa-file-lines"></i></span>
		                    <input type="text" name="companyNum" id="basic-icon-default-email" class="form-control" placeholder="000-00-00000" aria-describedby="basic-icon-default-email2">
		                  </div>
		                </div>
		              </div>
		              <div class="row mb-3">
		                <label class="col-sm-2 form-label" for="basic-icon-default-phone">전화번호</label>
		                <div class="col-sm-10">
		                  <div class="input-group input-group-merge">
		                    <span id="basic-icon-default-phone2" class="input-group-text"><i class="fa-solid fa-phone"></i></span>
		                    <input type="text" name="comTel" id="basic-icon-default-phone" class="form-control phone-mask" placeholder="대표번호" aria-describedby="basic-icon-default-phone2">
		                  </div>
		                </div>
		              </div>
		              <div class="row mb-3">
		                <label class="col-sm-2 form-label" for="basic-icon-default-phone">고객센터</label>
		                <div class="col-sm-10">
		                  <div class="input-group input-group-merge">
		                    <span id="basic-icon-default-phone2" class="input-group-text"><i class="fa-solid fa-headset"></i></span>
		                    <input type="text" name="comCS" id="basic-icon-default-phone" class="form-control phone-mask" placeholder="고객센터" aria-describedby="basic-icon-default-phone2">
		                  </div>
		                </div>
		              </div>
		              <div class="row mb-3">
		                <label class="col-sm-2 form-label" for="basic-icon-default-message">주소</label>
		                <div class="col-sm-10">
		                  <div class="com-add row g-2">
		                    <div class="col-sm-10">
			                  <div class="input-group input-group-merge w-75">
			                    <span id="basic-icon-default-phone2" class="input-group-text"><i class="fa-solid fa-location-dot"></i></span>
		                  		<input type="text" name="comAddress1" id="sample4_postcode" placeholder="우편번호" class="form-control phone-mask w-25 me-2">
								<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="phone-mask w-25">
			                  </div>	
			                </div>
							<input type="text" name="comAddress2" id="sample4_roadAddress" placeholder="도로명주소" class="form-control phone-mask">
							<input type="text" name="comAddress3" id="sample4_jibunAddress" placeholder="지번주소" class="form-control phone-mask">
							<span id="guide" style="color:#999;display:none"></span>
							<input type="text" name="comAddress4" id="sample4_detailAddress" placeholder="상세주소" class="form-control phone-mask w-75 pe-2">
							<input type="text" name="comAddress5" id="sample4_extraAddress" placeholder="참고항목" class="form-control phone-mask w-25">
		                  </div>
		                </div>
		              </div>
		              <div class="row justify-content-end">
		                <div class="col-sm-10">
		                  	<button type="submit" class="btn btn-primary">저장</button>
		                </div>
		              </div>
		            </form:form>
		          </div>
		        </div>
		      </div>
	      </div>
    </section>


	<!-- adm_footer 부분  -->
	<jsp:include page="adm_footer.jsp"></jsp:include>
	
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
</html>