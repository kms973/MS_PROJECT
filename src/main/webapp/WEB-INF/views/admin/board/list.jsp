<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- adm_header 부분  -->
<jsp:include page="/WEB-INF/views/admin/adm_header.jsp"></jsp:include>

<section id="board-notice">
	<div class="container-fluid px-4">
	    <h1 class="mt-4">게시판</h1>
	    <ol class="breadcrumb mb-4"><li class="breadcrumb-item active"></li></ol>
	    
        <div class="card">
        	<!-- 게시글 필터링 탭 메뉴 -->
			<h6 class="card-header">
				<div class="tab board-nav">
					<ul class="title nav m-0">
						<li class="board-tab on" data-type="all">
							<div class="form-check form-check-inline">
					  			<input class="form-check-input" type="radio" name="selecter" id="selecter1" value="1" checked>
					  			<label class="form-check-label" for="selecter1">전체</label>
							</div>
						</li>
						<li class="board-tab" data-type="1">
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="selecter" id="selecter2" value="1">
							  <label class="form-check-label" for="selecter2">공지사항</label>
							</div>
						</li>
						<li class="board-tab" data-type="2">
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="selecter" id="selecter3" value="2">
							  <label class="form-check-label" for="selecter3">QNA</label>
							</div>
						</li>
						<li class="board-tab" data-type="3">
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="selecter" id="selecter4" value="3">
							  <label class="form-check-label" for="selecter4">REVIEW</label>
							</div>
						</li>
					</ul>
		        </div>
			</h6>
			
			<!-- 게시글 테이블 -->
			<div class="card-body table-responsive text-nowrap">
				<table class="table table-hover table-bordered">
			    	<thead>
			    		<tr>
			    			<th class="table-no text-center">
			    				<a href="#" class="datatable-sorter">No</a>
			    			</th>
			    			<th class="table-tit w-50 text-center">Title</th>
			    			<th class="table-wr text-center">Writer</th>
			    			<th class="table-date text-center">Date</th>
			    			<th class="table-op text-center" style="width:5%;">Option</th>
		    			</tr>
			       </thead>
			       <tbody>
			       <c:forEach var="boardList" items="${boardList}">
			       	 <tr class="data_item" data-type="${boardList.selecter}">
			           <td class="table-no text-center">${boardList.bid}</td>			         
			           <td class="table-tit w-50 text-center"><a href="content_view?bid=${boardList.bid}" class="h-inheirt">${boardList.btitle}</a></td>
			           <td class="table-wr text-center">${boardList.bname}</td>
			           <td class="table-date text-center">${boardList.bdate}</td>
			           <td class="table-op text-center" style="width: 5% !important;">
	               		<a class="btn btn-sm btn-primary" href="content_view?bid=${boardList.bid}"><i class="fas fa-edit"></i></a>
			            <a class="btn btn-sm btn-danger" href="delete?bid=${boardList.bid}"><i class="fas fa-trash"></i></a>
			           </td>
			         </tr>
		          	</c:forEach>
       				</tbody>
   		  		</table>
			</div>
		</div>
		<div class="mx-0">
			<div class="d-flex justify-content-end px-0"><a href="write_view" class="btn btn-primary ">글쓰기</a></div>
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
  $("ul.title.nav .board-tab").click(function() {
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

//오름차순 버튼 클릭 이벤트 처리
$(".sort-asc").click(function() {
    const columnIndex = $(this).closest("th").index();
    const rows = $(".data_item").get();

    rows.sort(function(a, b) {
        const aValue = $(a).find("td").eq(columnIndex).text();
        const bValue = $(b).find("td").eq(columnIndex).text();
        return aValue.localeCompare(bValue, 'en', { numeric: true });
    });

    $(".data_item").detach();
    for (let i = 0; i < rows.length; i++) {
        $(".table tbody").append(rows[i]);
    }
});

// 내림차순 버튼 클릭 이벤트 처리
$(".sort-desc").click(function() {
    const columnIndex = $(this).closest("th").index();
    const rows = $(".data_item").get();

    rows.sort(function(a, b) {
        const aValue = $(a).find("td").eq(columnIndex).text();
        const bValue = $(b).find("td").eq(columnIndex).text();
        return bValue.localeCompare(aValue, 'en', { numeric: true });
    });

    $(".data_item").detach();
    for (let i = 0; i < rows.length; i++) {
        $(".table tbody").append(rows[i]);
    }
});
</script>

