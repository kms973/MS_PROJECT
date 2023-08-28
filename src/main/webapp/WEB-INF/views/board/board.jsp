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
	
	<!-- index 메인 시작 -->
	<div class="card">
	   <h5 class="card-header">Table Caption</h5>
	   <div class="table-responsive text-nowrap">
	     <table class="table">
	       <caption class="ms-4">
	         List of Projects
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
	         <tr>
	           <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>공지</strong></td>
	           <td>공지 테스트입니다.</td>
	           <td><span class="badge bg-label-dark me-1">관리자</span></td>
	           <td>
	             <div class="dropdown">
	               <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
	                 <i class="bx bx-dots-vertical-rounded"></i>
	               </button>
	               <div class="dropdown-menu">
	                 <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i> Edit</a>
	                 <a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i> Delete</a>
	               </div>
	             </div>
	           </td>
	         </tr>
	       </tbody>
	     </table>
	   </div>
	 </div>
	<!-- footer 시작 -->
	<%-- <jsp:include page="/WEB-INF/views/footer.jsp" /> --%>
</body>
</html>