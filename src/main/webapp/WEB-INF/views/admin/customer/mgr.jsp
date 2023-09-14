<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 

<!-- adm_header 부분  -->
<jsp:include page="/WEB-INF/views/admin/adm_header.jsp"></jsp:include>

	<!-- 메인보드 영역 -->
<section id="customer">
	<div class="container-fluid px-4">
		<h1 class="mt-4">회원관리</h1>
		<ol class="breadcrumb mb-4"><li class="breadcrumb-item"></li></ol>
		
		<div class="card">
			<div class="card-header"><i class="fas fa-circle-user me-1"></i>회원관리</div>
			
       		<div class="card-body">
	        <table id="datatablesSimple" class="table table-bordered">
	        	<thead>
	            	<tr>
						<th scope="col" colspan="7">
							<nav class="navbar-expand-lg">
								<div class="collapse navbar-collapse" id="navbarSupportedContent">
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
					<tr class="col align-items-center w-100">
						<th>
							<div class="form-check d-flex justify-content-center align-items-center h-100">
								<input class="form-check-input" type="checkbox" id="selectAll">
							</div>
						</th>
						<td><div class="form-check d-flex justify-content-center align-items-center w-100 h-100 p-0 m-0 fz-bold">회원아이디</div></td>
						<td><div class="form-check d-flex justify-content-center align-items-center w-100 h-100 p-0 m-0 fz-bold">이름</div></td>
						<td><div class="form-check d-flex justify-content-center align-items-center w-100 h-100 p-0 m-0 fz-bold">전체주문/금액</div></td>
						<td><div class="form-check d-flex justify-content-center align-items-center w-100 h-100 p-0 m-0 fz-bold">고객등급</div></td>
						<td><div class="form-check d-flex justify-content-center align-items-center w-100 h-100 p-0 m-0 fz-bold">옵션</div></td>
					</tr>
					<tr>
						<th style="width: 5% !important;">
							<div class="form-check d-flex justify-content-center align-items-center h-100">
								<input class="form-check-input" type="checkbox" id="selectAll">
							</div>
						</th>
						<c:forEach var="ms_users" items="${ms_users}">
			       	  	<td class="table-no text-center">
			       	  	<div class="d-flex justify-content-start">
			       	  	<img class="fit-picture me-2" src="https://png.pngtree.com/png-vector/20191009/ourmid/pngtree-user-icon-png-image_1796659.jpg" style="width:30px; height:30px;"/>
			       	  	${ms_users.username}
			       	  	</div>
			       	  	</td>	
					<%-- <td class="table-no text-center">${ms_users.enabled}</td> --%>			         
			           	<td class="table-wr text-center">${ms_users.cname}</td>
			           	<td class="table-wr text-center">결제한 금액의 총 합계</td>
			           	<td class="table-wr text-center">${ms_users.cgrade}</td>
	
						<td class="table-op" style="width: 10% !important;">
		         			<a class="btn btn-sm btn-primary" href="#!"><i class="fas fa-edit"></i></a>
					 		<a class="btn btn-sm btn-danger" href="delete?username=${ms_users.username}"><i class="fas fa-trash"></i></a>
						</td>
						</c:forEach>
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

