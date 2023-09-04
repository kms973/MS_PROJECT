<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- 메인 시작 -->
<section id="detail" class="container wrap">
	<div class="row mt-4">
		<div class="col-6 left-img"><img src="/img/2.jpg" class="img-fluid" width="500" alt="제품 이미지"></div>
        <div class="right col-6 row align-content-between">
	        <div class="text-right row align-content-between right-top">
	            <h4 class="mt-4"><strong>제품명이 들어갑니다.</strong></h4>
	            <div class="d-flex justify-content-between align-items-center p-2">
	            	<div class="price d-flex justify-content-start align-items-center">
	            		<div class="price-tit">가격</div>
	            		<div class="price mx-3">₩ 100,000</div>
	            	</div>
	            <div class="btn-icon">
	                <a href="none" class="share text-decoration-none color-dark"><i class="bi bi-share-fill" type="button"></i></a>
	                <a href="none" class="cart"><i class="bi bi-heart" type="button"></i></a>
	            </div>
	        </div>
        	<div class="d-flex align-items-center p-2">
            	<div>색상</div>
	            <select class="form-select w-25 mx-3" aria-label="Default select example">
				  <option selected>14K 골드</option>
				  <option value="2">14K 로즈골드</option>
				  <option value="3">14K 실버</option>
				  <option value="4">18K 골드</option>
				  <option value="5">18K 로즈골드</option>
				  <option value="6">18K 실버</option>
				</select> 
			</div>
        </div>
		<div class="right-bottom">
			<table class="table">			  
			    <tr>
			      <th scope="row"><h5>제품 정보명</h5></th>
			      <td>
				      <div class="num">
						<span class="count">
						<a href="#" class="minus" onclick='count("minus")'><i class="xi-minus-circle-o"></i></a>
						<span id="quantity">1</span>
						<a href="#" class="plus" onclick='count("plus")'><i class="xi-plus-circle-o"></i></a>
						</span>
					  </div>						
			      </td>
			      <td>			      
			      <div id="price"><h5>₩ 100,000</h5></div>			      			      
			      </td>
			    </tr>			   
			    <tr>			    
			      <th scope="row" class="text-right"><h5><strong>총 상품금액</strong></h5></th>
			      <td></td>
			      <td class="text-right"><div id="totalPrice"><h5><strong>₩ 100,000</strong></h5></div></td>
			    </tr>				
			</table>		
			<div class="d-flex justify-content-center align-items-center">
	        	<div class="px-1 w-50"><button type="button" class="btn" id="bttn">CART</button></div>
	        	<div class="px-1 w-50"><button type="button" class="btn" id="bttn">BUY IT NOW</button></div>
	    	</div>					
        </div>
    </div>
    
    <div class="rec d-flex justify-content-center" style="margin-top: 150px;"><strong><h5>Recommand Item</h5></strong></div>            
		<div class="container mt-5">
		    <div id="blogCarousel1" class="carousel slide" data-bs-ride="carousel">
		        <div class="carousel-inner">
		            <div class="carousel-item active">
		                <div class="row">
		                    <div class="col-md-3">
		                        <a href="#">
		                        	<figure><img src="/img/2.jpg" alt="Image" class="img-fluid">
				                        <figcaption>
				                        	<p class="productname">제품명</p>                        	
				                        	<p class="productcost">₩ 219,000</p>
				                        </figcaption>
		                        	</figure>                                                   
		                        </a>
		                    </div>
		                    <div class="col-md-3">
		                        <a href="#">
		                        	<figure><img src="/img/2.jpg" alt="Image" class="img-fluid">
				                        <figcaption>
				                        	<p class="productname">제품명</p>                        	
				                        	<p class="productcost">₩ 219,000</p>
				                        </figcaption>
		                        	</figure>                                                   
		                        </a>
		                    </div>
		                    <div class="col-md-3">
		                        <a href="#">
		                        	<figure><img src="/img/2.jpg" alt="Image" class="img-fluid">
				                        <figcaption>
				                        	<p class="productname">제품명</p>                        	
				                        	<p class="productcost">₩ 219,000</p>
				                        </figcaption>
		                        	</figure>                                                   
		                        </a>
		                    </div>
		                    <div class="col-md-3">
		                        <a href="#">
		                        	<figure><img src="/img/2.jpg" alt="Image" class="img-fluid">
				                        <figcaption>
				                        	<p class="productname">제품명</p>                        	
				                        	<p class="productcost">₩ 219,000</p>
				                        </figcaption>
		                        	</figure>                                                   
		                        </a>
		                    </div>
		                </div>
		            </div>
		        </div>
		        <div class="carousel-indicators">
		       	 	<button type="button" data-bs-target="#blogCarousel1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		   	 		<button type="button" data-bs-target="#blogCarousel1" data-bs-slide-to="1" class="active" aria-label="Slide 2"></button>    
				</div>
		    </div>
		</div>
	<div class="row mb-5" style="margin-top: 150px;">
		<div class="tab detail-tab_menu">
			<ul class="title nav d-flex justify-content-center">
				<li class="detail-tab on" data-type="detail"><a href="#none">DETAIL</a></li>
				<li class="detail-tab" data-type="guide"><a href="#none">GUIDE</a></li>
				<li class="detail-tab" data-type="review"><a href="#none">REVIEW</a></li>
			</ul>
		</div>
	    <!-- filter select -->
		<div class="items container wrap">
			<div class="data_item" data-type="detail" data-wow-delay=".2s">
				<div class="detail-img"><img src="/img/2.jpg" class="mb-5"></div>
            </div>
            <div class="data_item" data-type="guide" data-wow-delay=".2s">
				<div class="detail-img"><img src="/img/2.jpg" class="mb-5"></div>
            </div>
            <div class="data_item" data-type="review" data-wow-delay=".2s">
				<div class="detail-img"><img src="/img/2.jpg" class="mb-5"></div>
            </div>
		</div>
    </div>

</section>
<script>
$(document).ready(function() {
  // 초기화: 모든 데이터 아이템을 표시
  $(".data_item").show();

  // 탭 버튼 클릭 이벤트 처리
  $(".shop-tab_menu .shop-tab").click(function() {
    const selectedType = $(this).data("type"); // 선택된 탭의 data-type 속성 값

    $(".data_item[data-type='" + selectedType + "']").show();
  });
});
</script>

<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />
