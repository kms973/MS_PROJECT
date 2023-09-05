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
		                    <c:if test="${ company != null}">
		                    <input value="${company.companyName }"type="text" name="companyName" class="form-control" id="basic-icon-default-fullname" placeholder="회사명" aria-describedby="basic-icon-default-fullname2" disabled>
		                  </c:if>
		                  </div>
		                </div>
		              </div>
		              <div class="row mb-3">
		                <label class="col-sm-2 col-form-label" for="basic-icon-default-company">대표자</label>
		                <div class="col-sm-10">
		                  <div class="input-group input-group-merge">
		                    <span id="basic-icon-default-company2" class="input-group-text"><i class="fa-solid fa-user"></i></span>
		                    <c:if test="${ company != null}">
		                    <input value="${company.ceoName }" type="text" name="ceoName" id="basic-icon-default-company" class="form-control" placeholder="대표자" aria-describedby="basic-icon-default-company2" disabled>
		                  </c:if>
		                  </div>
		                </div>
		              </div>
		              <div class="row mb-3">
		                <label class="col-sm-2 col-form-label" for="basic-icon-default-email">사업자</label>
		                <div class="col-sm-10">
		                  <div class="input-group input-group-merge">
		                    <span class="input-group-text"><i class="fa-solid fa-file-lines"></i></span>
		                    <c:if test="${ company != null}">
		                    <input value="${company.companyNum }" type="text" name="companyNum" id="basic-icon-default-email" class="form-control" placeholder="000-00-00000" aria-describedby="basic-icon-default-email2" disabled>
		                  </c:if>
		                  </div>
		                </div>
		              </div>
		              <div class="row mb-3">
		                <label class="col-sm-2 form-label" for="basic-icon-default-phone">전화번호</label>
		                <div class="col-sm-10">
		                  <div class="input-group input-group-merge">
		                    <span id="basic-icon-default-phone2" class="input-group-text"><i class="fa-solid fa-phone"></i></span>
		                    <c:if test="${ company != null}">
		                    <input value="${company.comTel }" type="text" name="comTel" id="basic-icon-default-phone" class="form-control phone-mask" placeholder="대표번호" aria-describedby="basic-icon-default-phone2" disabled>
		                  </c:if>
		                  </div>
		                </div>
		              </div>
		              <div class="row mb-3">
		                <label class="col-sm-2 form-label" for="basic-icon-default-phone">고객센터</label>
		                <div class="col-sm-10">
		                  <div class="input-group input-group-merge">
		                    <span id="basic-icon-default-phone2" class="input-group-text"><i class="fa-solid fa-headset"></i></span>
		                    <c:if test="${ company != null}">
		                    <input value="${company.comCS }"type="text" name="comCS" id="basic-icon-default-phone" class="form-control phone-mask" placeholder="고객센터" aria-describedby="basic-icon-default-phone2" disabled>
		                  </c:if>
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
		                  		<c:if test="${ company != null}">
		                  		<input value="${company.comAddress1}"type="text" name="comAddress1" id="sample4_postcode" placeholder="우편번호" class="form-control phone-mask w-25 me-2" disabled>
								<!-- <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="phone-mask w-25"> -->
			                  </div>	
			                </div>
							<div class="input-group input-group-merge w-100"><input value="${company.comAddress2}"type="text" name="comAddress2" id="sample4_roadAddress" placeholder="도로명주소" class="form-control phone-mask col-sm-10" disabled></div>
							<div class="input-group input-group-merge w-100"><input value="${company.comAddress3}"type="text" name="comAddress3" id="sample4_jibunAddress" placeholder="지번주소" class="form-control phone-mask col-sm-10" disabled></div>
							<span id="guide" style="color:#999;display:none"></span>
							<div class="input-group input-group-merge w-100">
								<input value="${company.comAddress4}"type="text" name="comAddress4" id="sample4_detailAddress" placeholder="상세주소" class="form-control phone-mask w-50 me-2" disabled>
								<input value="${company.comAddress5}"type="text" name="comAddress5" id="sample4_extraAddress" placeholder="참고항목" class="form-control phone-mask w-auto" disabled>
		                  	</c:if>
		                  	</div>
		                  </div>
		                </div>
		              </div>
		              <div class="row justify-content-end w-100 mx-0">
		                <div class="d-flex justify-content-end px-0">
		                  	<a href="company_write" class="btn btn-primary ">수정</a>
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
</html>