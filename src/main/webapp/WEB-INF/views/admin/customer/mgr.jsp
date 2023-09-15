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
			<nav class="navbar-expand-sm w-100">
				<div class="collapse navbar-collapse d-flex justify-content-end align-items-center pt-3 px-3" id="navbarSupportedContent">
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-dark me-2" type="submit"><i class="xi-search"></i></button>
					<div>
						<select class="form-select" id="selectBox" aria-label="Default select example" style="width: fit-content;">
							<option value="1" selected>최신순</option>
							<option value="2">이름순</option>
							<option value="3">금액순</option>
							<option value="4">고객등급순</option>
						</select>
					</div>
				</form>
				</div>
			</nav>
			
       		<div class="card-body">
	        <table id="datatablesSimple" class="table table-bordered">
	        	<thead>
	            	<tr>
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
	   			</thead>
   			
	           	<tbody class="mgr_tbody">
					<c:forEach var="ms_users" items="${ms_users}">
					<tr>
						<th style="width: 5% !important;">
							<div class="form-check d-flex justify-content-center align-items-center h-100">
								<input class="form-check-input" type="checkbox" id="checkbox">
							</div>
						</th>
			       	  	<td class="table-no text-center">
			       	  		<div class="d-flex justify-content-center align-items-center w-100 h-100 p-0 m-0">${ms_users.username}</div>
			       	  	</td>	
					<%-- <td class="table-no text-center">${ms_users.enabled}</td> --%>			         
			           	<td class="table-wr">
			           		<div class="d-flex justify-content-center align-items-center w-100 h-100 p-0 m-0">${ms_users.cname}</div>
			           	</td>
			           	<td class="table-pr text-center">
			           		<div class="d-flex justify-content-center align-items-center w-100 h-100 p-0 m-0">전체 주문 수량 / 결제금액의 합계</div>
			           	</td>
			           	<td class="table-gr text-center">
			           		<div class="d-flex justify-content-center align-items-center w-100 h-100 p-0 m-0" id="userGrade">${ms_users.cgrade}</div>
			           	</td>
	
						<td class="table-op" style="width: 10% !important;">
							<div class="d-flex justify-content-center align-items-center w-100 h-100 p-0 m-0">
		         			<a class="btn btn-sm btn-primary mx-1" href="#!"><i class="fas fa-edit"></i></a>
					 		<a class="btn btn-sm btn-danger mx-1" href="delete?username=${ms_users.username}"><i class="fas fa-trash"></i></a>
							</div>
						</td>
			         </tr>
					</c:forEach>
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
<script>
$(document).ready(function() {
  // 초기화: 모든 데이터 아이템을 표시
  $(".data_item").show();

  // 탭 버튼 클릭 이벤트 처리
  $(".board-nav select").change(function() {
    const selectedType = $(this).find("option:selected").data("type"); // 선택된 탭의 data-type 속성 값
    
    // 선택된 탭에 해당하는 데이터 아이템만 표시하고 나머지는 숨김
    if (selectedType === "all") {
      $(".data_item").show();
    } else {
      $(".data_item").hide();
      $(".data_item[data-type='" + selectedType + "']").show();
    }
  });
});
</script>

    

