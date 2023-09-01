<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<section id="shop" class="container wrap">

	<div id="sub-bnr"><h5>Shop</h5></div>
	<!-- tab 메뉴 -->
	<div class="tab shop-tab_menu">
		<ul class="title nav justify-content-center">
			<li class="shop-tab on" data-type="all"><a href="#">전체</a></li>
			<li class="shop-tab" data-type="R"><a href="#">반지</a></li>
			<li class="shop-tab" data-type="N"><a href="#">목걸이</a></li>
			<li class="shop-tab" data-type="E"><a href="#">귀걸이</a></li>
			<li class="shop-tab" data-type="B"><a href="#">팔찌</a></li>
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
   		<div class="items row mt-n5">
            <div class="data_item col-md-6 col-lg-4 mt-5 wow fadeInUp" data-type="E" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
				<a href="#!" class="text-center">
               		<div class="blog-grid">
                   		<div class="blog-grid-img position-relative"><img alt="img" src="https://www.bootdey.com/image/480x480/00FFFF/000000"></div>
                   		<div class="blog-grid-text p-3">
                       		<h3 class="h5 mb-3">제품명</h3>
                       		<p class="display-30">\1,080,000</p>
               			</div>
       				</div>
				</a>
            </div>
            <div class="data_item col-md-6 col-lg-4 mt-5 wow fadeInUp" data-type="R" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
            	<a href="#!" class="text-center">
               		<div class="blog-grid">
                   		<div class="blog-grid-img position-relative"><img alt="img" src="https://www.bootdey.com/image/480x480/00FFFF/000000"></div>
                   		<div class="blog-grid-text p-3">
                       		<h3 class="h5 mb-3">제품명</h3>
                       		<p class="display-30">\1,200,000</p>
               			</div>
       				</div>
				</a>
            </div>
            <div class="data_item col-md-6 col-lg-4 mt-5 wow fadeInUp" data-type="R" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
             	<a href="#!" class="text-center">
               		<div class="blog-grid">
                   		<div class="blog-grid-img position-relative"><img alt="img" src="https://www.bootdey.com/image/480x480/00FFFF/000000"></div>
                   		<div class="blog-grid-text p-3">
                       		<h3 class="h5 mb-3">제품명</h3>
                       		<p class="display-30">\580,000</p>
               			</div>
       				</div>
				</a>
            </div>
            <div class="data_item col-md-6 col-lg-4 mt-5 wow fadeInUp" data-type="N" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
              <a href="#!" class="text-center">
               		<div class="blog-grid">
                   		<div class="blog-grid-img position-relative"><img alt="img" src="https://www.bootdey.com/image/480x480/00FFFF/000000"></div>
                   		<div class="blog-grid-text p-3">
                       		<h3 class="h5 mb-3">제품명</h3>
                       		<p class="display-30">\580,000</p>
               			</div>
       				</div>
				</a>
            </div>
            <div class="data_item col-md-6 col-lg-4 mt-5 wow fadeInUp" data-type="R" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
            	<a href="#!" class="text-center">
               		<div class="blog-grid">
                   		<div class="blog-grid-img position-relative"><img alt="img" src="https://www.bootdey.com/image/480x480/00FFFF/000000"></div>
                   		<div class="blog-grid-text p-3">
                       		<h3 class="h5 mb-3">제품명</h3>
                       		<p class="display-30">\580,000</p>
               			</div>
       				</div>
				</a>
            </div>
            <div class="data_item col-md-6 col-lg-4 mt-5 wow fadeInUp" data-type="N" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
              		<a href="#!" class="text-center">
	                <div class="blog-grid">
	                    <div class="blog-grid-img position-relative"><img alt="img" src="https://www.bootdey.com/image/480x480/00FFFF/000000"></div>
	                    <div class="blog-grid-text p-3">
	                        <h3 class="h5 mb-3">제품명</h3>
	                        <p class="display-30">\580,000</p>
	                    </div>
	                </div>
                  	</a>
            </div>
            <div class="data_item col-md-6 col-lg-4 mt-5 wow fadeInUp" data-type="E" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
              		<a href="#!" class="text-center">
	                <div class="blog-grid">
	                    <div class="blog-grid-img position-relative"><img alt="img" src="https://www.bootdey.com/image/480x480/00FFFF/000000"></div>
	                    <div class="blog-grid-text p-3">
	                        <h3 class="h5 mb-3">제품명</h3>
	                        <p class="display-30">\580,000</p>
	                    </div>
	                </div>
                  	</a>
            </div>
            <div class="data_item col-md-6 col-lg-4 mt-5 wow fadeInUp" data-type="E" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
       			<a href="#!" class="text-center">
            		<div class="blog-grid">
                		<div class="blog-grid-img position-relative"><img alt="img" src="https://www.bootdey.com/image/480x480/00FFFF/000000"></div>
             			<div class="blog-grid-text p-3">
                    		<h3 class="h5 mb-3">제품명</h3>
                    		<p class="display-30">\580,000</p>
             			</div>
         			</div>
             	</a>
            </div>
       </div>
       <!-- paging -->
       <nav aria-label="Page navigation example">
			 <ul class="pagination justify-content-center">
			    <li class="page-item"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
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