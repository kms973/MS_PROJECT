<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<section id="shop" class="container wrap">

	<div id="sub-bnr"><h5>Shop</h5></div>
	<!-- tab 메뉴 -->
	<div class="tab shop-tab_menu">
		<ul class="title nav justify-content-center">
			<li class="shop-tab on" data-type="all"><a href="/shop/home">전체</a></li>
			<li class="shop-tab" data-type="R"><a href="/shop/rings">반지</a></li>
			<li class="shop-tab" data-type="N"><a href="/shop/necklace">목걸이</a></li>
			<li class="shop-tab" data-type="E"><a href="/shop/earring">귀걸이</a></li>
			<li class="shop-tab" data-type="B"><a href="/shop/bracelet">팔찌</a></li>
		</ul>
	</div>
	
	<!-- filter select -->
	<div class="selec-box d-flex align-items-center justify-content-end">
		<select class="form-select" aria-label="Default select example" style="width:10%">
		  <option value="1" selected>추천순</option>
		  <option value="2">신상순</option>
		  <option value="3">판매순</option>
		  <option value="4">리뷰순</option>
		</select>
	</div>
	</div>
	
   	<div class="items container wrap mt-5">
   		<div class="items row mt-n5 shop-pro-list">
   		<c:forEach var="shop" items="${ShopProductList}">
            <div class="data_item col-md-6 col-lg-4 mt-5 wow fadeInUp" data-type="${shop.productCategory}" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
				<a href="/shop/${shop.productCategory}/${shop.productCode}" class="text-center">
               		<div class="blog-grid">
                   		<div class="blog-grid-img position-relative"><img alt="img" src="/img/${shop.img }"></div>
                   		<div class="blog-grid-text p-3">
                       		<h3 class="h5 mb-3">${shop.productName}</h3>
                       		<p class="display-30">₩ ${shop.price}</p>
               			</div>
       				</div>
				</a>
            </div>
             </c:forEach>
       </div>
       <!-- paging -->
       <nav aria-label="Page navigation example" >
			 <ul class="pagination justify-content-center" >
			    <li class="page-item"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
			    <c:if test="${pageMaker.prev}">
		    <li class="page-item"><a class="page-link" href="${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a></li>
		    </c:if>
		    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
		    <li class="page-item"><a class="page-link" href="${pageMaker.makeQuery(idx)}">${idx}</a></li>
		    </c:forEach>
		    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		    <li class="page-item"><a class="page-link" href="${pageMaker.makeQuery(pageMaker.endPage +1) }">»</a></li>
		      </c:if> 
			    <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
		     </ul>
   		</nav>
    </div>
</section>
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
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />