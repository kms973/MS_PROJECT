<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.DriverManager, java.sql.SQLException" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MS Shop - Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link href="../../css/styles.css" rel="stylesheet" />
<link href="../../css/adm_style.css" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="../../js/scripts.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="../../js/datatables-simple-demo.js"></script>

<script type="text/javascript"
	src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"
	integrity="sha256-5slxYrL5Ct3mhMAp/dgnb5JSnTYMtkr4dHby34N10qw="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/lang/summernote-ko-KR.min.js"
	integrity="sha256-y2bkXLA0VKwUx5hwbBKnaboRThcu7YOFyuYarJbCnoQ="
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css"
	integrity="sha256-IKhQVXDfwbVELwiR0ke6dX+pJt0RSmWky3WB2pNx9Hg="
	crossorigin="anonymous">

<script src="/js/summernote.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
</head>
<body>
<body class="sb-nav-fixed">


	
		<!-- adm_header 부분  -->
		<jsp:include page="../adm_header.jsp"></jsp:include>

		<!-- 메인보드 영역 -->
		<main>
		<form method="post" action="/admin/product_new" enctype="multipart/form-data">
	
	
			<div class="container-fluid px-4">
				<h1 class="mt-4">상품 등록</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active"></li>
				</ol>

				<div class="wrap-box">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th colspan="3" scope="col"
									class="bg-info bg-opacity-25 text-primary text-opacity-75">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상품분류</th>
							</tr>
						</thead>
						<tbody>
						
							<tr>
								<th scope="row" class="col-2 text-center align-middle">분류등록</th>
								<td><select class="form-select form-select-sm w-25" id="product_category" name="product_category"
									aria-label="Default select example">
										<option selected>분류선택</option>
										<option value="R"${productVO.options == 'option1' ? 'selected' : 'option'}>반지</option>
										<option value="N"${productVO.options == 'option1' ? 'selected' : 'option'}>목걸이</option>
										<option value="B"${productVO.options == 'option1' ? 'selected' : 'option'}>팔찌</option>
										<option value="E"${productVO.options == 'option1' ? 'selected' : 'option'}>귀걸이</option>
								</select></td>
							</tr>
						</tbody>
					</table>

					<table class="table table-bordered">
						<thead>
							<tr>
								<th colspan="3" scope="col"
									class="bg-info bg-opacity-25 text-primary text-opacity-75">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기본정보</th>
							</tr>
						</thead>
						<tbody>
						
		
						
							<tr>
								<th scope="row" class="col-2 text-center align-middle"> 상품코드</th>
								<td>
									<div class="row">
										<div class="col-sm-3">
											<input id="product_code" name="product_code" class="form-control form-control-sm"  type="text">
										</div>
										<div class="col-sm-6">
											<label for="notice" class="productcodenum text-muted">상품의
												코드는 4자리 숫자로 생성해야합니다.</label>
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row" class="col-2 text-center align-middle">상품명</th>
								<td>
									<div class="row">
										<div class="col-sm-6">
											<input id="product_name" type="text" name="product_name" class="form-control form-control-sm" >
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row" class="col-2 text-center align-middle">제조사</th>
								<td>
									<div class="row">
										<div class="col-sm-3">
											<input class="form-control form-control-sm" type="text">
										</div>
										<div class="col-sm-6">
											<label for="notice" class="productcodenum text-muted">입력하지
												않으면 상품상세페이지에 출력하지 않습니다.</label>
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row" class="col-2 text-center align-middle">원산지</th>
								<td>
									<div class="row">
										<div class="col-sm-3">
											<input class="form-control form-control-sm" type="text">
										</div>
										<div class="col-sm-6">
											<label for="notice" class="productcodenum text-muted">입력하지
												않으면 상품상세페이지에 출력하지 않습니다.</label>
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row" class="col-2 text-center align-middle">상품설명</th>
								<td>
									<div id="summernote"></div>
								</td>
							</tr>
						</tbody>
					</table>

					<table class="table table-bordered">
						<thead>
							<tr>
								<th colspan="3" scope="col"
									class="bg-info bg-opacity-25 text-primary text-opacity-75">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상품정보제공고시</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row" class="col-2 text-center align-middle">소재</th>
								<td>
									<div class="row">
										<div class="col-sm-5">
											<input class="form-control form-control-sm productcodenum"
												type="text" placeholder="상품페이지 참고">
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row" class="col-2 text-center align-middle">순도</th>
								<td>
									<div class="row">
										<div class="col-sm-5">
											<input class="form-control form-control-sm productcodenum"
												type="text" placeholder="상품페이지 참고">
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row" class="col-2 text-center align-middle">중량</th>
								<td>
									<div class="row">
										<div class="col-sm-5">
											<input class="form-control form-control-sm productcodenum"
												type="text" placeholder="상품페이지 참고">
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row" class="col-2 text-center align-middle">치수</th>
								<td>
									<div class="row">
										<div class="col-sm-5">
											<input class="form-control form-control-sm productcodenum"
												type="text" placeholder="상품페이지 참고">
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row" class="col-2 text-center align-middle">제조자</th>
								<td>
									<div class="row">
										<div class="col-sm-5">
											<input class="form-control form-control-sm productcodenum"
												type="text" placeholder="상품페이지 참고">
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row" class="col-2 text-center align-middle">제조국</th>
								<td>
									<div class="row">
										<div class="col-sm-5">
											<input class="form-control form-control-sm productcodenum"
												type="text" placeholder="상품페이지 참고">
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row" class="col-2 text-center align-middle">AS
									책임자와 전화번호</th>
								<td>
									<div class="row">
										<div class="col-sm-5">
											<input class="form-control form-control-sm productcodenum"
												type="text" placeholder="상품페이지 참고">
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>

					<table class="table table-bordered">
						<thead>
							<tr>
								<th colspan="3" scope="col"
									class="bg-info bg-opacity-25 text-primary text-opacity-75">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가격
									및 재고</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row" class="col-2 text-center align-middle">판매가격</th>
								<td>
									<div class="row">
										<div class="col-sm-2">
											<input id="price" type="text" name="price" class="form-control form-control-sm" >
										</div>
										<div class="col-sm-6">
											<label for="notice" class="productcodenum">원</label>
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row" class="col-2 text-center align-middle">재고수량</th>
								<td>
									<div class="row">
										<div class="col-sm-2">
											<input class="form-control form-control-sm" id="stock_quantity" type="number"
									name="stock_quantity">
										</div>
										<div class="col-sm-6">
											<label for="notice" class="productcodenum">개</label><label
												class="text-muted productcodenum">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;재고수량을
												0으로 설정하면 품절상품으로 표시됩니다.</label>
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<th scope="row" class="col-2 text-center align-middle">상품선택옵션</th>
								<td><label for="notice" class="productoption mb-2">옵션항목은
										콤마(,)로 구분하여 여러개를 입력할 수 있습니다. 예를 들어 <br>[옵션1 : 호수, 옵션1 항목
										: 15.0,15.5,16.0,16,5] , [옵션2 : 색상, 옵션2 항목 : 골드,로즈골드,실버]
								</label>


									<table class="table table-bordered my-0">
										<tr>
											<th scope="row" class="col-3 align-middle">
												<div class="row">
													<div class="col-5 text-center" >옵션 1</div>
													<div class="col-7">
														<input class="form-control form-control-sm " type="text" id="options" name="options">
													</div>
												</div>
											</th>

											<th class="align-middle" >옵션 1 항목 <input
												class="form-control form-control-sm" type="text" id="options" name="options">
											</th>
										</tr>
									</table>

									<table class="table table-bordered my-0">
										<tr>
											<th scope="row" class="col-3 align-middle">
												<div class="row">
													<div class="col-5 text-center">옵션 2</div>
													<div class="col-7">
														<input class="form-control form-control-sm " type="text" id="options" name="options">
													</div>
												</div>
											</th>

											<th class="align-middle">옵션 2 항목 <input
												class="form-control form-control-sm" type="text"  id="options" name="options">
											</th>
										</tr>
									</table>

									<table class="table table-bordered">
										<tr>
											<th scope="row" class="col-3 align-middle">
												<div class="row">
													<div class="col-5 text-center">옵션 3</div>
													<div class="col-7">
														<input class="form-control form-control-sm " type="text"  id="options" name="options">
													</div>
												</div>
											</th>

											<th class="align-middle">옵션 3 항목 <input
												class="form-control form-control-sm" type="text" id="options" name="options">
											</th>
										</tr>
									</table>
					</table>

					<table class="table table-bordered">
						<thead>
							<tr>
								<th colspan="3" scope="col"
									class="bg-info bg-opacity-25 text-primary text-opacity-75">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;배송비</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row" class="col-2 text-center align-middle">배송비
									유형</th>
								<td><select class="form-select form-select-sm w-25"
									aria-label="Default select example">
										<option selected>무료배송</option>
										<option value="2">3000원</option>
										<option value="3">5000원</option>
								</select></td>
							</tr>
						</tbody>
					</table>

					<table class="table table-bordered">
						<thead>
							<tr>
								<th colspan="2" scope="col"
									class="bg-info bg-opacity-25 text-primary text-opacity-75">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;상품이미지</th>
							</tr>
						</thead>
						<!-- 상품 사진 업로드 하는 폼 -->
						<tbody>
							<tr>
								<td>
									<div class="row">
										<div class="col-md-6">
											<div class="table-responsive">
												<table class="table table-bordered">
													<tr>
														<td class="col-3 text-center align-middle">
															<label class="text-danger productcodenum">대표이미지</label><br>
															<strong>상품사진 1</strong>
														</td>
														<td>
															<img src="/img/1.jpg" class="img-fluid" width="130" height="150" id="previewImage1">
														</td>
														<td class="align-middle">
															<div class="input-group input-group-sm align-middle">
																<input class="form-control" type="file" id="product_img" name="file"
																	onchange="previewImage(this, 'previewImage1')">
															</div>
														</td>
													</tr>
												</table>
											</div>
										</div>
										<div class="col-md-6">
											<div class="table-responsive">
												<table class="table table-bordered">
													<tr>
														<td class="col-3 text-center align-middle"><strong>상품사진 2</strong></td>
														<td><img src="/img/1.jpg" class="img-fluid" width="130" height="150" id="previewImage2"></img></td>
														<td class="align-middle">
															<div class="input-group input-group-sm align-middle">
																<input class="form-control" type="file" id="product_img2" name="product_img2"
																	onchange="previewImage(this, 'previewImage2')">
															</div>
														</td>

													</tr>
												</table>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6">
											<div class="table-responsive">
												<table class="table table-bordered">
													<tr>
														<td class="col-3 text-center align-middle"><strong>상품사진
																3</strong></td>
														<td><img src="/img/1.jpg" class="img-fluid" width="130" height="150" id="previewImage3"></img></td>
														<td class="align-middle">
															<div class="input-group input-group-sm align-middle">
																<input class="form-control" type="file" id="product_img3" name="product_img3"
																	onchange="previewImage(this, 'previewImage3')">
															</div>
														</td>
													</tr>
												</table>
											</div>
										</div>
										<div class="col-md-6">
											<div class="table-responsive">
												<table class="table table-bordered">
													<tr>
														<td class="col-3 text-center align-middle"><strong>상품사진
																4</strong></td>
														<td><img src="/img/1.jpg" class="img-fluid" width="130" height="150" id="previewImage4"></img></td>
														<td class="align-middle">
															<div class="input-group input-group-sm align-middle">
																<input class="form-control" type="file" id="product_img4" name="product_img4"
																	onchange="previewImage(this, 'previewImage4')">
															</div>
														</td>
													</tr>
												</table>
											</div>
										</div>
									</div>
						</tbody>
					</table>
					<button type="submit" class="btn btn-outline-secondary">작성완료</button>
						
					<!-- <input type="submit" value="상품 등록"> -->
						
						<tr>
		
			
		</td>
		</tr>
					<button type="button" class="btn btn-secondary btn">취소</button>
				</div>
			</div>
			</form>
		</main>

		<!-- adm_footer 부분  -->
		<jsp:include page="../adm_footer.jsp"></jsp:include>
</body>
<script>
//텍스트 편집기
	$('#summernote')
			.summernote(
					{
						placeholder : '내용을 입력하세요.',
						tabsize : 2,
						height : 400,

						lang : 'ko-KR',
						toolbar : [
								[ 'fontname', [ 'fontname' ] ],
								[ 'fontsize', [ 'fontsize' ] ],
								[
										'style',
										[ 'bold', 'italic', 'underline',
												'strikethrough', 'clear' ] ],
								[ 'color', [ 'forecolor', 'color' ] ],
								[ 'table', [ 'table' ] ],
								[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
								[ 'height', [ 'height' ] ],
								[ 'insert', [ 'picture', 'link' ] ],
								[ 'view', [ 'help' ] ] ],
						fontNames : [ 'Arial', 'Arial Black', 'Comic Sans MS',
								'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림',
								'돋움체', '바탕체' ],
						fontSizes : [ '8', '9', '10', '11', '12', '14', '16',
								'18', '20', '22', '24', '28', '30', '36', '50',
								'72' ]
					});
					//상품 이미지 등록하면 썸네일 나오는 메소드 "previewImage"
					function previewImage(input, imgId) {
						const file = input.files[0];
						if (file) {
							const reader = new FileReader();
							reader.onload = function (e) {
								const img = document.getElementById(imgId);
								img.src = e.target.result;
							};
							reader.readAsDataURL(file);
						}
					}
</script>
</html>