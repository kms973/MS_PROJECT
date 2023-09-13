<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- adm_header 부분  -->
<jsp:include page="/WEB-INF/views/admin/adm_header.jsp"></jsp:include>

<section id="customer" class="board-all container wrap">
	<div class="container-fluid px-4">
		<h1 class="mt-4 mb-4">상품재고관리</h1>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-solid fa-gift me-1"></i>상품재고관리
			</div>
			<div class="card-body">
				<table id="datatablesSimple" class="table table-bordered">
					<thead>
						<tr>
							<th scope="col" colspan="7">
								<nav class="navbar-expand-lg">
									<div class="collapse navbar-collapse"
										id="navbarSupportedContent">
										<form class="d-flex">
											<div class="selec-box me-2">
												<select class="form-select"
													aria-label="Default select example"
													style="width: fit-content; height: fit-content;">
													<option value="1" selected>전체분류</option>
													<option value="2">반지</option>
													<option value="3">목걸이</option>
													<option value="4">팔찌</option>
													<option value="5">귀걸이</option>
												</select>
											</div>
											<input class="form-control me-2" type="search"
												placeholder="Search" aria-label="Search">
											<button class="btn btn-outline-dark" type="submit">Search</button>
										</form>
									</div>
								</nav>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="text-center col-1"><b>상품코드</b></td>
							<td class="text-center"><b>상품명</b></td>
							<td class="text-center col-1"><b>재고</b></td>
							<td class="text-center col-1"><b>재고수정</b></td>
							<td class="text-center col-1"><b>판매</b></td>
							<td class="text-center col-1"><b>품절</b></td>
							<td class="text-center col-1"><b>관리</b></td>
						</tr>
						<tr style="vertical-align: middle;">
							<td class="text-center">r003</td>
							<td><img class="fit-picture me-2" src="/img/2.jpg"
								style="width: 70px; height: 70px;" />엄청 예쁜 반지</td>
							<td class="text-center">99</td>
							<td><input class="form-control form-control-sm" type="text">
							</td>
							<td>
								<div class="form-check" style="text-align: center;">
									<input class="form-check-input ms-2" type="checkbox"
										id="checkbox1">
								</div>
							</td>
							<td>
								<div class="form-check">
									<input class="form-check-input ms-2" type="checkbox"
										id="checkbox2">
								</div>
							</td>
							<td class="text-center"><a href="#none">수정</a></td>
						</tr>
						<tr style="vertical-align: middle;">
							<td class="text-center">n021</td>
							<td><img class="fit-picture me-2" src="/img/2.jpg"
								style="width: 70px; height: 70px;" />인기 많은 목걸이</td>
							<td class="text-center">99</td>
							<td><input class="form-control form-control-sm" type="text">
							</td>
							<td>
								<div class="form-check">
									<input class="form-check-input ms-2" type="checkbox"
										id="checkbox1">
								</div>
							</td>
							<td>
								<div class="form-check">
									<input class="form-check-input ms-2" type="checkbox"
										id="checkbox2">
								</div>
							</td>
							<td class="text-center"><a href="#none">수정</a></td>
						</tr>
					</tbody>
				</table>
				<div class="d-flex justify-content-end">
					<button class="btn btn-primary my-1 py-2" type="submit">일괄수정</button>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- adm_footer 부분  -->
<jsp:include page="/WEB-INF/views/admin/adm_footer.jsp"></jsp:include>

