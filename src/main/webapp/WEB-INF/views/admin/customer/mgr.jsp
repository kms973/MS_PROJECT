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
	<div id="sub-bnr"><h5>회원관리</h5></div>
	<table class="table mt-5">
		<thead class="table-light">
			<tr>
				<th scope="col" colspan="7">
					<nav class="navbar-expand-lg navbar-light bg-light">
						<div class="container-fluid">
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
				<td>회원아이디</td>
				<td>이름</td>
				<td>전체주문/금액</td>
				<td>고객등급</td>
				<td>게시글</td>
				<td>옵션</td>
			</tr>
			<tr>
				<th scope="row">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="checkbox1">
					</div>
				</th>
				<td>
					<img class="fit-picture me-2" src="https://png.pngtree.com/png-vector/20191009/ourmid/pngtree-user-icon-png-image_1796659.jpg" 
					style="width:30px; height:30px;"/>admin
				</td>
				<td>최고관리자</td>
				<td></td>
				<td>관리자</td>
				<td>-<br/>
					-<br/>
					-</td>
				<td>
					<div class="dropdown">
						<button class="btn p-0 hide-arrow" data-bs-toggle="dropdown"><i class="fa-solid fa-ellipsis-vertical"></i></button>
						<div class="dropdown-menu">
						<a class="dropdown-item" href="#"><i class="bx bx-edit-alt me-1"></i> Edit</a>
						<a class="dropdown-item" href="#"><i class="bx bx-trash me-1"></i> Delete</a>
					</div>
				</td>
			</tr>
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
					-<br/>
					-<br/>
					-
				</td>
				<td>
					<div class="dropdown">
						<button class="btn p-0 hide-arrow" data-bs-toggle="dropdown"><i class="fa-solid fa-ellipsis-vertical"></i></button>
						<div class="dropdown-menu">
						<a class="dropdown-item" href="#"><i class="bx bx-edit-alt me-1"></i> Edit</a>
						<a class="dropdown-item" href="#"><i class="bx bx-trash me-1"></i> Delete</a>
					</div>
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
				<td>-<br/>
					-<br/>
					-
				</td>
				<td>
					<div class="dropdown">
						<button class="btn p-0 hide-arrow" data-bs-toggle="dropdown"><i class="fa-solid fa-ellipsis-vertical"></i></button>
						<div class="dropdown-menu">
						<a class="dropdown-item" href="#"><i class="bx bx-edit-alt me-1"></i> Edit</a>
						<a class="dropdown-item" href="#"><i class="bx bx-trash me-1"></i> Delete</a>
					</div>
				</td>
			</tr>
		</tbody>
    </table>

</section>   	

	<!-- adm_footer 부분  -->
	<jsp:include page="/WEB-INF/views/admin/adm_footer.jsp"></jsp:include>

</body>
</html>