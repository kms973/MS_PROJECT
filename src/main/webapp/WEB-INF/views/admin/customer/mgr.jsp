<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
    
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
<body>

<body class="sb-nav-fixed">
	<!-- adm_header 부분  -->
	<jsp:include page="/WEB-INF/views/admin/adm_header.jsp"></jsp:include>

	<!-- 메인보드 영역 -->
<section id="customer" class="board-all container wrap">
	<div class="container-fluid px-4">
		<h1 class="mt-4">회원관리</h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
			<li class="breadcrumb-item active">회원</li>
			<li class="breadcrumb-item active">회원관리</li>
		</ol>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-circle-user me-1"></i>회원관리</div>
           	<div class="card-body">
               	<table id="datatablesSimple" class="table table-bordered">
                   	<thead>
                       	<tr>
							<th scope="col" colspan="7">
								<nav class="navbar-expand-lg">
 									<div class="collapse navbar-collapse" id="navbarSupportedContent">
										<ul class="navbar-nav me-auto">
										</ul>
										<form class="d-flex">
											<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
											<button class="btn btn-outline-dark me-2" type="submit">Search</button>
											<div class="selec-box">
												<select class="form-select" aria-label="Default select example" style="width: fit-content;">
													<option value="1" selected>정렬선택</option>
													<option value="2">이름순</option>
													<option value="3">금액순</option>
													<option value="4">고객등급순</option>
												</select>
											</div>
										</form>
									</div>
								</nav>
							</th>
						</tr>
               		</thead>
                   	<tbody>
						<tr>
							<th scope="row">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="selectAll">
								</div>
							</th>
							<td><b>회원아이디</b></td>
							<td><b>이름</b></td>
							<td><b>전체주문/금액</b></td>
							<td><b>고객등급</b></td>
							<td><b>게시글</b></td>
							<td><b>옵션</b></td>
						</tr>
				<tr>
				<th scope="row">
				<div class="form-check">
				<input class="form-check-input" type="checkbox" id="checkbox1">
				<c:forEach var="ms_users" items="${ms_users}">
			       	  <td class="table-no text-center">${ms_users.username}</td>	
<%-- 				   <td class="table-no text-center">${ms_users.enabled}</td> --%>			         
			           <td class="table-wr text-center">${ms_users.cname}</td>
			           <td class="table-wr text-center">${ms_users.cgrade}</td>

					<td class="table-op" style="width: 5% !important;">
			         <a class="btn btn-sm btn-primary" href="#!"><i class="fas fa-edit"></i></a>
					 <a class="btn btn-sm btn-danger" href="delete?username=${ms_users.username}"><i class="fas fa-trash"></i></a>
					</td>
			         </tr>
		          	</c:forEach>
						<tr>
							<th scope="row">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="checkbox2">
								</div>
							</th>
							<td>
								<img class="fit-picture me-2" src="https://png.pngtree.com/png-vector/20191009/ourmid/pngtree-user-icon-png-image_1796659.jpg" 
								style="width:30px; height:30px;"/>hong000
							</td>
							<td>홍길동</td>
							<td></td>
							<td>일반</td>
							<td>
								<p>&#45;</p>
								<p>&#45;</p>
								<p>&#45;</p>
							</td>
							<td class="table-op" style="width: 5% !important;">
			               		<a class="btn btn-sm btn-primary" href="#!"><i class="fas fa-edit"></i></a>
					            <a class="btn btn-sm btn-danger" href="#!"><i class="fas fa-trash"></i></a>
							</td>
						</tr>
						<tr>
						<th scope="row">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="checkbox3">
							</div>
						</th>
						<td>
							<img class="fit-picture me-2" src="https://png.pngtree.com/png-vector/20191009/ourmid/pngtree-user-icon-png-image_1796659.jpg" 
							style="width:30px; height:30px;"/>suuoo99
						</td>
						<td>홍길순</td>
						<td></td>
						<td>VIP</td>
							<td>
								<p>&#45;</p>
								<p>&#45;</p>
								<p>&#45;</p>
							</td>
							<td class="table-op" style="width: 5% !important;">
			               		<a class="btn btn-sm btn-primary" href="#!"><i class="fas fa-edit"></i></a>
					            <a class="btn btn-sm btn-danger" href="#!"><i class="fas fa-trash"></i></a>
							</td>
						</tr>
					</tbody>
				</table>
       		</div>
		</div>	
	</div>
</section>

	<!-- adm_footer 부분  -->
	<jsp:include page="/WEB-INF/views/admin/adm_footer.jsp"></jsp:include>
	
<script>
	const checkboxes = document.querySelectorAll('.form-check-input');

	document.getElementById('selectAll').addEventListener('change', function () {
		checkboxes.forEach(checkbox => {
			checkbox.checked = this.checked;
		});
	});
</script>
</body>
</html>