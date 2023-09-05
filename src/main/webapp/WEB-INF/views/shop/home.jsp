<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	
<div class="container wrap">
	<div id="sub-bnr"><h5>Shop</h5></div>
	<div class="selec-box d-flex align-items-center justify-content-end">
		<select class="form-select" aria-label="Default select example" style="width:10%">
		  <option value="1" selected>추천순</option>
		  <option value="2">신상순</option>
		  <option value="3">판매순</option>
		  <option value="4">리뷰순</option>
		</select>
	</div>
</div>

<section id="board-all">
   	<div class="container wrap px-4 px-lg-5 mt-5">
   		<div class="row mt-n5">
   		<c:forEach var="shop" items="${ShopProductList}">
            <div class="col-md-6 col-lg-4 mt-5 wow fadeInUp" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
              		<a href="#!" class="text-center">
	                <div class="blog-grid">
	                    <div class="blog-grid-img position-relative"><img alt="img" src="https://www.bootdey.com/image/480x480/00FFFF/000000"></div>
	                    <div class="blog-grid-text p-3">
	                        <h3 class="h5 mb-3">${shop.productName}</h3>
	                        <p class="display-30">\ ${shop.price}</p>
	                    </div>
	                </div>
                  	</a>
            </div>
            </c:forEach>
           </div>
           
           <!-- paging -->
           <nav aria-label="Page navigation example">
		  <ul class="pagination justify-content-center">
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <c:if test="${pageMaker.prev}">
		    <li class="page-item"><a class="page-link" href="home${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a></li>
		    </c:if>
		    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
		    <li class="page-item"><a class="page-link" href="home${pageMaker.makeQuery(idx)}">${idx}</a></li>
		    </c:forEach>
		    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		    <li class="page-item"><a class="page-link" href="home${pageMaker.makeQuery(pageMaker.endPage +1) }">»</a></li>
		      </c:if> 
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
       </div>
   </section>
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />


