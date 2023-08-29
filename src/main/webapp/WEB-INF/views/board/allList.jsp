<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<title>MS Shop - Admin</title>
<!-- css 링크 연결 -->
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="/css/styles.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- script 링크 연결 -->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="/js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!-- header 시작 -->
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	
	<section id="sub-bnr">
		<div class="container wrap">
			<h1>Notice</h1>
		</div>
	</section>
	<!-- index 메인 시작 -->
	<section id="board-all">
    	<div class="container wrap">
			<ul class="nav nav-pills mb-3 justify-content-center" id="pills-tab" role="tablist">
				<li class="nav-item" role="presentation"><button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home"role="tab" aria-selected="true">공지사항</button></li>
				<li class="nav-item" role="presentation"><button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">자주묻는 질문</button></li>
				<li class="nav-item" role="presentation"><button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">FAQ</button></li>
				<li class="nav-item" role="presentation"><button class="nav-link" id="pills-disabled-tab" data-bs-toggle="pill" data-bs-target="#pills-disabled" type="button" role="tab" aria-controls="pills-disabled" aria-selected="false">REVIEW</button></li>
			</ul>
			<div class="tab-content" id="pills-tabContent">
				<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
					<div class="card">
					   <div class="table-responsive text-nowrap">
					     <table class="table">
					       <caption class="ms-4">
					         <c:if test="${pageMaker.prev}">
							      <a href="${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
							   </c:if>
							   
							   <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
							      <c:out value="${pageMaker.cri.page == idx?'':''}" />
							      <a href="${pageMaker.makeQuery(idx)}">${idx}</a>
							   </c:forEach>
							   
							   <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<a href="${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
							   </c:if>
					       </caption>
					       <thead>
					         <tr>
					           <th>No</th>
					           <th>Title</th>
					           <th>Writer</th>
					           <th>Date</th>
					         </tr>
					       </thead>
					       <tbody>
					         <c:forEach var="board" items="${boardList}">
					         <tr>
					           <td><strong><c:forEach begin="1" end="${board.bindent}"></c:forEach></strong></td>
					           <td>${board.btitle}</td>
					           <td>${board.bname}</td>
					           <td>${board.bdate}</td>
					           <td>
					             <div class="dropdown">
					               <button class="btn p-0 hide-arrow" data-bs-toggle="dropdown"><i class="fa-solid fa-ellipsis-vertical"></i></button>
					               <div class="dropdown-menu">
					                 <a class="dropdown-item" href="#"><i class="bx bx-edit-alt me-1"></i> Edit</a>
					                 <a class="dropdown-item" href="delete?bid=${content_view.bid}"><i class="bx bx-trash me-1"></i> Delete</a>
					               </div>
					             </div>
					           </td>
					         </tr>
					         </c:forEach>
					       </tbody>
					     </table>
					   </div>
					 </div>
				</div>
				<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">
					<div class="card">
						<ul class="list-group">
						  <li class="list-group-item">
					  		<div class="btn-group">
							  <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
					    		Q. 상품 환불 규정이 어떻게 되나요?
							  </button>
							  <ul class="dropdown-menu">
							    <li>환불 규정 관련 내용</li>
							  </ul>
							</div>
						  </li>
						  <li class="list-group-item">A list item</li>
						  <li class="list-group-item">A list item</li>
						</ul>
				 	</div>
				</div>
				<div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab" tabindex="0">
					<div class="card">
					   <div class="table-responsive text-nowrap">
					     <table class="table">
					       <caption class="ms-4">
					         <c:if test="${pageMaker.prev}">
							      <a href="${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
							   </c:if>
							   
							   <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
							      <c:out value="${pageMaker.cri.page == idx?'':''}" />
							      <a href="${pageMaker.makeQuery(idx)}">${idx}</a>
							   </c:forEach>
							   
							   <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<a href="${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
							   </c:if>
					       </caption>
					       <thead>
					         <tr>
					           <th>No</th>
					           <th>Title</th>
					           <th>Writer</th>
					           <th>Date</th>
					         </tr>
					       </thead>
					       <tbody>
					         <c:forEach var="board" items="${boardList}">
					         <tr>
					           <td><strong><c:forEach begin="1" end="${board.bindent}"></c:forEach></strong></td>
					           <td>${board.btitle}</td>
					           <td>${board.bname}</td>
					           <td>${board.bdate}</td>
					           <td>
					             <div class="dropdown">
					               <button class="btn p-0 hide-arrow" data-bs-toggle="dropdown"><i class="fa-solid fa-ellipsis-vertical"></i></button>
					               <div class="dropdown-menu">
					                 <a class="dropdown-item" href="#"><i class="bx bx-edit-alt me-1"></i> Edit</a>
					                 <a class="dropdown-item" href="delete?bid=${content_view.bid}"><i class="bx bx-trash me-1"></i> Delete</a>
					               </div>
					             </div>
					           </td>
					         </tr>
					         </c:forEach>
					       </tbody>
					     </table>
					   </div>
					 </div>
				</div>
			  	<div class="tab-pane fade" id="pills-disabled" role="tabpanel" aria-labelledby="pills-disabled-tab" tabindex="0">
			  		<div class="card">
					   <div class="table-responsive text-nowrap">
					     <table class="table">
					       <caption class="ms-4">
					         <c:if test="${pageMaker.prev}">
							      <a href="${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
							   </c:if>
							   
							   <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
							      <c:out value="${pageMaker.cri.page == idx?'':''}" />
							      <a href="${pageMaker.makeQuery(idx)}">${idx}</a>
							   </c:forEach>
							   
							   <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<a href="${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
							   </c:if>
					       </caption>
					       <thead>
					         <tr>
					           <th>No</th>
					           <th>Title</th>
					           <th>Writer</th>
					           <th>Date</th>
					         </tr>
					       </thead>
					       <tbody>
					         <c:forEach var="board" items="${boardList}">
					         <tr>
					           <td><strong><c:forEach begin="1" end="${board.bindent}"></c:forEach></strong></td>
					           <td>${board.btitle}</td>
					           <td>${board.bname}</td>
					           <td>${board.bdate}</td>
					           <td>
					             <div class="dropdown">
					               <button class="btn p-0 hide-arrow" data-bs-toggle="dropdown"><i class="fa-solid fa-ellipsis-vertical"></i></button>
					               <div class="dropdown-menu">
					                 <a class="dropdown-item" href="#"><i class="bx bx-edit-alt me-1"></i> Edit</a>
					                 <a class="dropdown-item" href="delete?bid=${content_view.bid}"><i class="bx bx-trash me-1"></i> Delete</a>
					               </div>
					             </div>
					           </td>
					         </tr>
					         </c:forEach>
					       </tbody>
					     </table>
					   </div>
					 </div>
			  	</div>
			</div>
        </div>
    </section>
	<!-- footer 시작 -->
	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
<script>
const dropdownElementList = document.querySelectorAll('.dropdown-toggle')
const dropdownList = [...dropdownElementList].map(dropdownToggleEl => new bootstrap.Dropdown(dropdownToggleEl))
</script>
</html>