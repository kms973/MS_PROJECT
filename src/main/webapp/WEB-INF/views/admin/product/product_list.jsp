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
<body>
	<!-- adm_header 부분  -->
	<jsp:include page="../adm_header.jsp"></jsp:include>

    <section id="board-notice">
        <div class="container-fluid px-4">
            <h1 class="mt-4">전체상품관리</h1>
            <!-- <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">공지사항</li>
            </ol> -->
        </div>
        <div class="row container-fluid px-4 mt-4">
	        <div class="panel panel-default">
				<div class="panel-body">
					<form name="search" action="#" method="post" class="form-horizontal">
						<input type="hidden" name="curPage" value="6"> <input type="hidden" name="rowSizePerPage" value="10">
						<div class="form-group row mb-3 d-flex">
							<div class="selec-all col-sm-2">
								<select id="id_searchCategory" name="searchCategory" class="form-control me-2 input-sm">
									<option value="">전체분류</option>
									<%-- <c:forEach items="${cateList}" var="code">
										<option value="${code.commCd}" >${code.commNm}</option>
									</c:forEach> --%>
									<option>반지</option>
									<option>귀걸이</option>
									<option>목걸이</option>
									<option>팔찌</option>
								</select>
							</div>
							<div class="selec-pro col-sm-2">
								<select id="id_searchType" name="searchType" class="form-control me-2 input-sm">
									<option value="선택하시오" selected>상품명</option>
								</select>
							</div>
							<div class="search-box col-sm-6 d-flex">
								<!-- <div class="col-sm-6">
									<input type="text" name="searchWord" class="form-control input-sm me-2" value="" placeholder="검색어">
								</div>
								<label for="id_searchType" type="button" class="btn btn-outline-primary col-sm-2 control-label">검색</label> -->
								
        						<!-- <label class="btn btn-outline-dark control-label" type="submit" for="id_searchType">Search</label> -->
								<input class="form-control me-2 input-sm" name="searchWord" type="search" value="" placeholder="검색어" aria-label="Search">
								<div class="col-sm-1 text-right">
									<button type="submit" class="btn btn-sm btn-primary "><i class="fa fa-search"></i></button>
								</div>
								<div class="col-sm-1 col-sm-offset-9 text-right">
									<button type="button" id="id_btn_reset" class="btn btn-sm-1 btn-default"><i class="fa fa-sync"></i></button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="card mb-4">
	            <div class="card-header d-flex justify-content-between">
	            	<div><span class="strong">N</span>개의 상품이 검색되었습니다.</div>
		            <div class="selec-box">
		            	<select id="id_searchCategory" name="searchCategory" class="form-select input-sm">
							<option value="">정렬선택</option>
							<%-- <c:forEach items="${cateList}" var="code">
								<option value="${code.commCd}" >${code.commNm}</option>
							</c:forEach> --%>
							<option>이름순</option>
							<option>가격순</option>
							<option>재고순</option>
						</select>
		            </div>
	            </div>
	            <div class="card-body">
	                <!-- <table id="datatablesSimple"> -->
	                <table>
						<thead>
							<tr>
								<th>Avatar</th>
							</tr>
						</thead>
				        <tbody>
				            <%-- <c:forEach items="${productList}" var="dto"> --%>
								<tr class="d-flex justify-content-between">
									<div class="prod-check"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></div>
									<div class="prod-img-box"><img src="https://i.postimg.cc/yYYd1HV1/katara.jpg" alt="img"></div>
									<div><h5>Product Title</h5></div>
					                <div class="btn-box">
					                    <button class="view">view</button>
					                    <button class="delete">Delete</button>
					                </div>
								</tr>
							<%-- </c:forEach> --%>
				        </tbody>
			    </table>
				</div>
			</div>
    </section>
    
    <!-- adm_footer 부분  -->
	<jsp:include page="../adm_footer.jsp"></jsp:include>

</body>
</html>