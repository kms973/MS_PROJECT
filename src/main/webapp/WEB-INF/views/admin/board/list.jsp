<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="/js/datatables-simple-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="/js/scripts.js"></script>
</head>
<body>
<!-- adm_header 부분  -->
<jsp:include page="/WEB-INF/views/admin/adm_header.jsp"></jsp:include>

<section id="board-notice">
	<div class="container-fluid px-4">
	    <h1 class="mt-4">게시판</h1>
	    <!-- <ol class="breadcrumb mb-4">
	        <li class="breadcrumb-item active">공지사항</li>
	    </ol> -->
            
        <div class="tab board-nav">
			<ul class="title nav">
				<li class="shop-tab on" data-type="all">
					<div class="form-check form-check-inline">
			  			<input class="form-check-input" type="radio" name="selecter" id="selecter1" value="1" checked>
			  			<label class="form-check-label" for="selecter1">전체</label>
					</div>
				</li>
				<li class="shop-tab" data-type="1">
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="selecter" id="selecter2" value="1">
					  <label class="form-check-label" for="selecter2">공지사항</label>
					</div>
				</li>
				<li class="shop-tab" data-type="2">
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="selecter" id="selecter3" value="2">
					  <label class="form-check-label" for="selecter3">QNA</label>
					</div>
				</li>
				<li class="shop-tab" data-type="3">
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="selecter" id="selecter4" value="3">
					  <label class="form-check-label" for="selecter4">REVIEW</label>
					</div>
				</li>
			</ul>
        </div>
        
        <div class="card">
			<h5 class="card-header"><span class="">${idx}</span>개의 게시글이 검색되었습니다.</h5>
			<div class="card-body table-responsive text-nowrap">
				<table class="table" id="datatablesSimple">
			    	<thead>
			    		<tr>
			    			<th class="table-no">No</th>
			    			<th class="table-tit w-50">Title</th>
			    			<th class="table-wr">Writer</th>
			    			<th class="table-date">Date</th>
			    			<th class="table-op">Option</th>
		    			</tr>
			       </thead>
			       <tbody>
			       <c:forEach var="boardList" items="${boardList}">
			       	 <tr class="data_item" data-type="${boardList.selecter}">
			           <td class="table-no">${boardList.bid}</td>			         
			           <td data-type='selectedType' class="table-tit w-50"><a href="content_view?bid=${boardList.bid}">${boardList.btitle}</a></td>
			           <td class="table-wr">${boardList.bname}</td>
			           <td class="table-date">${boardList.bdate}</td>
			           <td class="table-op">
	               		<a class="btn btn-sm btn-primary" href="write?bid=${boardList.bid}"><i class="fas fa-edit"></i></a>
			            <a class="btn btn-sm btn-danger" href="delete?bid=${boardList.bid}"><i class="fas fa-trash"></i></a>
			           </td>
			         </tr>
		          	</c:forEach>
       				</tbody>
   		  		</table>
			</div>
		</div>
		<div class="mx-0 position-absolute bottom-0 end-0">
			<div class="d-flex justify-content-end px-0"><a href="write" class="btn btn-primary ">글쓰기</a></div>
		</div>
	</div>
</section>
    
<!-- adm_footer 부분  -->
<jsp:include page="/WEB-INF/views/admin/adm_footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"></script>
<script>
$(document).ready(function() {
  // 초기화: 모든 데이터 아이템을 표시
  $(".data_item").show();

  // 탭 버튼 클릭 이벤트 처리
  $(".shop-tab_menu .shop-tab").click(function() {
    const selectedType = $(this).data("type"); // 선택된 탭의 data-type 속성 값
    
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
</body>
</html>