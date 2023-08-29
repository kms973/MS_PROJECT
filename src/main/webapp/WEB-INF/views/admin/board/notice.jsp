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

    <section id="board-notice">
        <div class="container-fluid px-4">
            <h1 class="mt-4">공지사항</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">공지사항</li>
            </ol>
            
            <div class="card">
			   <h5 class="card-header"><span class="">${idx}</span>개의 공지사항이 검색되었습니다.</h5>
			   <div class="table-responsive text-nowrap">
			     <table class="table">
			       <caption class="ms-4">
			         <c:if test="${pageMaker.prev}">
					      <a href="${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
					   </c:if>
					   
					   <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
					      <%-- <c:out value="${pageMaker.cri.page == idx?'':''}" /> --%>
					      <a href="${pageMaker.makeQuery(idx)}">${idx}</a>
					   </c:forEach>
					   
					   <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<a href="${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
					   </c:if>
			       </caption>
			       <thead>
			         <tr>
			           <th>No</th>
			           <th>Title</th>
			           <th>Writer</th>
			           <th>Date</th>
			         </tr>
			       </thead>
			       <tbody>
			         <c:forEach var="board" items="${boardList}">
			         <tr>
			           <td><strong><c:forEach begin="1" end="${board.bindent}"></c:forEach></strong></td>
			           <td>${board.btitle}</td>
			           <td>${board.bname}</td>
			           <td>${board.bdate}</td>
			           <td>
			             <div class="dropdown">
			               <button class="btn p-0 hide-arrow" data-bs-toggle="dropdown"><i class="fa-solid fa-ellipsis-vertical"></i></button>
			               <div class="dropdown-menu">
			                 <a class="dropdown-item" href="#"><i class="bx bx-edit-alt me-1"></i> Edit</a>
			                 <a class="dropdown-item" href="delete?bid=${content_view.bid}"><i class="bx bx-trash me-1"></i> Delete</a>
			               </div>
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

</body>
</html>