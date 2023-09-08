<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- adm_header 부분  -->
<jsp:include page="/WEB-INF/views/admin/adm_header.jsp"></jsp:include>

<section id="product">
	<div class="container-fluid px-4">
	    <h1 class="mt-4">전체상품관리</h1>
	    <ol class="breadcrumb mb-4"><li class="breadcrumb-item active"></li></ol>
	    
        <div class="card">			
			<table class="table table-hover product-list-tb">
				<thead class="card-header">
		    		<tr><th class="w-100">
		    			<div class="table-check d-flex">
		    				<div class="form-check d-flex justify-content-center pe-2">
		    					<input class="form-check-input" type="checkbox" id="selectAll">
		    				</div>
		    				<span style="position: relative; top:1px;">전체선택</span>
	    				</div>
		    			<div class="d-flex">
		    				<div class="datatable-search">
					            <input class="datatable-input" placeholder="Search..." type="search" title="Search within table" aria-controls="datatablesSimple">
					        </div>
							<div class="tab board-nav h-auto ms-2">
								<select class="form-select h-auto" aria-label="Default select example" style="width:auto;">
								  <option class="board-tab on" data-type="all" selected>전체</option>
								  <option class="board-tab" data-type="R">반지</option>
								  <option class="board-tab" data-type="N">목걸이</option>
								  <option class="board-tab" data-type="E">귀걸이</option>
								  <option class="board-tab" data-type="B">팔찌</option>
								</select>
					        </div>
		       			</div>
		   			</th></tr>
	   			</thead>
	   			<tbody class="card-body table-responsive">
	   				<tr class="data_item" data-type="E"><td>
	   					<div class="d-flex justify-content-between w-25 align-items-center">
	   						<div class="table-check text-center ps-1">
		   						<div class="form-check d-flex">
			    					<input class="form-check-input" type="checkbox" id="select">
			    				</div>
		   					</div>
		   					<div class="table-img text-center px-2">
			           			<div class="product-img"><img src="https://i.postimg.cc/yYYd1HV1/katara.jpg" alt="img"></div>
			           		</div>
	   					</div>		         
		           		<div class="d-flex justify-content-between w-75 align-items-center px-2">
		           			<div class="table-tit row">
			           			<div class="py-1">분류 : 귀걸이</div>
			           			<a href="#none" class="py-1">제품명이 들어갈 자리입니다.</a>
			           			<div class="kr-price py-1">\100,000</div>
			           		</div>
		           			<div class="table-op text-center">
	               				<a class="btn btn-sm btn-primary" href="#none"><i class="fas fa-edit">상품수정</i></a>
			            		<a class="btn btn-sm btn-danger" href="#none"><i class="fas fa-trash">삭제</i></a>
			           		</div>
		           		</div>
		         	</td></tr>
   				</tbody>
			       <%-- <tbody>
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
       				</tbody> --%>
   		  	</table>
		</div>
		<div class="mx-0">
			<div class="d-flex justify-content-end px-0"><a href="write" class="btn btn-primary ">글쓰기</a></div>
		</div>
	</div>
</section>
    
<!-- adm_footer 부분  -->
<jsp:include page="/WEB-INF/views/admin/adm_footer.jsp"></jsp:include>

