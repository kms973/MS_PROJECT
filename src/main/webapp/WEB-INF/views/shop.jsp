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
		  <option value="1" selected>신상순</option>
		  <option value="2">판매순</option>
		  <option value="3">리뷰순</option>
		</select>
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
            	<a href="/shop/ring" class="text-center">
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

<script>
    const productList = document.getElementById('productList');
    const sortSelect = document.getElementById('sortSelect');

    // 가상의 상품 데이터 배열 (예시)
    const products = [
        { name: '상품 1', date: '2023-09-01', sales: 10, reviews: 5 },
        { name: '상품 2', date: '2023-09-03', sales: 20, reviews: 8 },
        { name: '상품 3', date: '2023-09-02', sales: 15, reviews: 6 },
        // 여기에 더 많은 상품 데이터를 추가할 수 있습니다.
    ];

    // 초기 화면 로드 시 신상순으로 정렬
    updateProductList(1);

    // select 요소의 변경을 감지하여 상품 리스트 업데이트
    sortSelect.addEventListener('change', () => {
        const selectedOption = parseInt(sortSelect.value);
        updateProductList(selectedOption);
    });

    // 상품 리스트를 정렬하여 업데이트하는 함수
    function updateProductList(sortOption) {
        let sortedProducts = [];

        switch (sortOption) {
            case 1: // 신상순
                sortedProducts = products.slice().sort((a, b) => new Date(b.date) - new Date(a.date));
                break;
            case 2: // 판매순
                sortedProducts = products.slice().sort((a, b) => b.sales - a.sales);
                break;
            case 3: // 리뷰순
                sortedProducts = products.slice().sort((a, b) => b.reviews - a.reviews);
                break;
            default:
                sortedProducts = products;
        }

        // 상품 리스트를 업데이트
        renderProductList(sortedProducts);
    }

    // 상품 리스트를 화면에 렌더링하는 함수
    function renderProductList(products) {
        productList.innerHTML = '';

        products.forEach(product => {
            const productItem = document.createElement('div');
            productItem.textContent = product.name;
            productList.appendChild(productItem);
        });
    }
</script>

<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />