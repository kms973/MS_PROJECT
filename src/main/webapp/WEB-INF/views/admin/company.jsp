<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
   	<main>
		<div class="container-fluid px-4">
			<h1 class="mt-4">회사정보</h1>
           	<ol class="breadcrumb mb-4"><li class="breadcrumb-item active">회사정보</li></ol>
           
			<table>
				<tr class="w-100 p-4 d-flex justify-content-center">
					<th>회사명</th>
					<td class="form-outline" style="width: 22rem">
						<input type="text" class="form-control form-icon-trailing" id="form20" name="comName" placeholder="회사명">
						<span class="trailing pe-auto clear d-none" tabindex="0">✕</span>
						<div class="form-notch">
							<div class="form-notch-leading" style="width: 9px;"></div>
							<div class="form-notch-middle" style="width: 87.2px;"></div>
							<div class="form-notch-trailing"></div>
						</div>
					</td>
				</tr>
				<tr class="w-100 p-4 d-flex justify-content-center">
					<th>사업자번호</th>
					<td class="form-outline" style="width: 22rem">
						<input type="text" class="form-control form-icon-trailing" id="form20" name="comNum" placeholder="000-00-00000">
						<span class="trailing pe-auto clear d-none" tabindex="0">✕</span>
						<div class="form-notch">
							<div class="form-notch-leading" style="width: 9px;"></div>
							<div class="form-notch-middle" style="width: 87.2px;"></div>
							<div class="form-notch-trailing"></div>
						</div>
					</td>
				</tr>
				<tr class="w-100 p-4 d-flex justify-content-center">
					<th>대표자</th>
					<td class="form-outline" style="width: 22rem">
						<input type="text" class="form-control form-icon-trailing" id="form20" name="ceoName" placeholder="대표자">
						<span class="trailing pe-auto clear d-none" tabindex="0">✕</span>
						<div class="form-notch">
							<div class="form-notch-leading" style="width: 9px;"></div>
							<div class="form-notch-middle" style="width: 87.2px;"></div>
							<div class="form-notch-trailing"></div>
						</div>
					</td>
				</tr>
				<tr class="w-100 p-4 d-flex justify-content-center">
					<th>전화번호</th>
					<td class="form-outline" style="width: 22rem">
						<input type="text" class="form-control form-icon-trailing" id="form20" name="comTel" placeholder="전화번호">
						<span class="trailing pe-auto clear d-none" tabindex="0">✕</span>
						<div class="form-notch">
							<div class="form-notch-leading" style="width: 9px;"></div>
							<div class="form-notch-middle" style="width: 87.2px;"></div>
							<div class="form-notch-trailing"></div>
						</div>
					</td>
				</tr>
				<tr class="w-100 p-4 d-flex justify-content-center">
					<th>주소</th>
					<td class="form-outline" style="width: 22rem">
						<input type="text" class="form-control form-icon-trailing" id="form20" name="comAdress" placeholder="주소">
						<span class="trailing pe-auto clear d-none" tabindex="0">✕</span>
						<div class="form-notch">
							<div class="form-notch-leading" style="width: 9px;"></div>
							<div class="form-notch-middle" style="width: 87.2px;"></div>
							<div class="form-notch-trailing"></div>
						</div>
					</td>
				</tr>
				<tr class="w-100 p-4 d-flex justify-content-center">
					<th>고객센터</th>
					<td class="form-outline" style="width: 22rem">
						<input type="text" class="form-control form-icon-trailing" id="form20" name="comCS" placeholder="고객센터">
						<span class="trailing pe-auto clear d-none" tabindex="0">✕</span>
						<div class="form-notch">
							<div class="form-notch-leading" style="width: 9px;"></div>
							<div class="form-notch-middle" style="width: 87.2px;"></div>
							<div class="form-notch-trailing"></div>
						</div>
					</td>
				</tr>
			</table>
        </div>
    </main>

	<!-- adm_footer 부분  -->
	<jsp:include page="adm_footer.jsp"></jsp:include>
	
</body>
 <script>
  const clearButton = document.querySelector('.trailing.clear');
  const form20 = document.querySelector("#form20");

  const showElement = (element) => {
    if (element.classList.contains('d-none')) {
      element.classList.remove('d-none');
    }
  }
    
  const hideElement = (element) => {
    if (!element.classList.contains('d-none')) {
      element.classList.add('d-none');
    }
  }

  const clearInput = (button) => {
      const evt = document.createEvent("HTMLEvents");
      evt.initEvent("blur", false, true);
        
      const input = button.parentNode.querySelector(".form-icon-trailing");
      input.value = null;
      input.dispatchEvent(evt);
      hideElement(button);
  }

  clearButton.addEventListener('click', () => clearInput(clearButton));
  clearButton.addEventListener('keydown', (event) => {
    if (event.code === "Enter") {
      event.preventDefault();
      clearButton.click();
    }
  });

  form20.addEventListener('input', () => {
    if (form20.value !== null) {
      showElement(clearButton);
    }
  })
</script>
</html>