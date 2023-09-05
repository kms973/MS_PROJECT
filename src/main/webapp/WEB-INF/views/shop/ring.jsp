<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- 메인 시작 -->
<section id="detail" class="container wrap">
    <div class="row mt-4 justify-content-between">
        <div class="col-6 left mb-4">
            <img src="/img/2.jpg" class="img-fluid" width="500" alt="제품 이미지"></div>
            <div class="right col-6 row align-content-between py-2 mb-4">
                <div class="right-top row align-content-between w-100">
                    <h3 class="p-1"><strong>제품명이 들어갑니다.</strong></h3>
                    <div class="d-flex justify-content-between align-items-center pt-4 py-2 px-1 w-100">
                        <div class="price d-flex justify-content-start align-items-center">
                            <div class="price-tit">가격</div>
                            <div class="price mx-3">₩ 100,000</div>
                        </div>
                        <div class="btn-icon d-flex justify-content-between align-items-center">
                            <a href="#none" class="share text-dark px-2"><i class="bi bi-share-fill"></i></a>
                            <a href="#none" class="cart text-dark px-1 pe-0"><i class="bi bi-heart"></i></a>
                        </div>
                    </div>
                    <div class="option-box d-flex align-items-center px-1 py-2 pb-4">
                        <div>색상</div>
                        <select class="form-select w-75 mx-3 px-2" aria-label="Default select example" style="height:auto">
                            <option selected="selected">옵션을 선택해주세요.</option>
                            <option value="1">14K 골드</option>
                            <option value="2">14K 로즈골드</option>
                            <option value="3">14K 실버</option>
                            <option value="4">18K 골드</option>
                            <option value="5">18K 로즈골드</option>
                            <option value="6">18K 실버</option>
                        </select>
                    </div>
                    <div class="option-txt d-flex align-content-center justify-content-between px-0 mt-2 border-top-1 py-4 border-top-1" style=" border-top: 1px solid #ccc; border-bottom: 1px solid #ccc;">
                        <div class="ps-1 mb-0 d-flex align-items-center">제품 정보명</div>
                        <div class="count num">
                            <div class="count d-flex align-content-center">
                                <a href="#" class="minus text-dark" onclick='count("minus")'><i class="xi-minus-circle-o"></i></a>
                                <span id="quantity" class="px-3">1</span>
                                <a href="#" class="plus text-dark " onclick='count("plus")'><i class="xi-plus-circle-o"></i></a>
                            </div>
                        </div>
                        <div id="price" class="pe-1 d-flex align-items-center"><h5 class="mb-0">₩ 100,000</h5></div>
                    </div><!-- <div class="option-txt"> -->
                </div><!-- <div class="right-top"> -->
                <div class="right-bottom row justify-content-between">
                  <div class="py-3 d-flex align-content-center justify-content-between px-0" style="border-color:#fff;">
                      <div class="text-right ps-1"><h5 class="mb-0"><strong>총 상품금액</strong></h5></div>
                      <div class="text-right pe-1"><div id="totalPrice"><h5 class="mb-0"><strong>₩ 100,000</strong></h5></div></div>
                  </div>
                  <div class="d-flex justify-content-center align-items-center mt-4 px-0">
                      <div class="px-2 w-50 ps-1"><button type="button" class="btn" id="bttn">CART</button></div>
                      <div class="px-2 w-50 pe-1"><button type="button" class="btn" id="bttn">BUY IT NOW</button></div>
                  </div>
                </div><!-- <div class="right-bottom"> -->
            </div><!-- <div class="right"> -->
        </div><!-- <div class="col-6 left"> -->
    </div><!-- <div class="row"> -->

    <div class="rec-title d-flex justify-content-center mt-5"><strong><h5>Recommand Item</h5></strong></div>
    <div class="container mt-5">
        <div id="blogCarousel1" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row">
                        <div class="col-md-3">
                            <a href="#">
                                <figure><img src="/img/2.jpg" alt="Image" class="img-fluid">
                                    <figcaption><p class="productname">제품명</p><p class="productcost">₩ 219,000</p></figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <a href="#">
                                <figure><img src="/img/2.jpg" alt="Image" class="img-fluid">
                                    <figcaption><p class="productname">제품명</p><p class="productcost">₩ 219,000</p></figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <a href="#">
                                <figure><img src="/img/2.jpg" alt="Image" class="img-fluid">
                                    <figcaption><p class="productname">제품명</p><p class="productcost">₩ 219,000</p></figcaption>
                                </figure>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <a href="#">
                                <figure><img src="/img/2.jpg" alt="Image" class="img-fluid">
                                    <figcaption><p class="productname">제품명</p><p class="productcost">₩ 219,000</p></figcaption>
                                </figure>
                            </a>
                        </div>
                    </div>
                </div><!-- <div class="carousel-item active"> -->
            </div><!-- <div class="carousel-inner"> -->
        </div><!-- <div id="blogCarousel1" class="carousel slide" data-bs-ride="carousel"> -->
        <div class="carousel-indicators"><button type="button" data-bs-target="#blogCarousel1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button></div>
    </div>
    <!-- detail TAB contents -->
    <div class="row my-5">
        <div class="tab detail-tab_menu">
            <ul class="title nav d-flex justify-content-center">
                <li class="detail-tab on" data-type="detail"><a href="#none">DETAIL</a></li>
                <li class="detail-tab" data-type="guide"><a href="#none">GUIDE</a></li>
                <li class="detail-tab" data-type="review"><a href="#none">REVIEW</a></li>
            </ul>
        </div>
        <!-- filter select -->
        <div class="data_item container wra" data-type="detail" data-wow-delay=".2s"><div class="detail-img"><img src="/img/2.jpg" class="mb-5 w-100"></div>
        <div class="data_item container wra" data-type="guide" data-wow-delay=".2s"><div class="detail-img"><img src="/img/2.jpg" class="mb-5 w-100"></div></div>
        <div class="data_item container wra" data-type="review" data-wow-delay=".2s"><div class="detail-img"><img src="/img/2.jpg" class="mb-5 w-100"></div></div>
    </div><!-- detail TAB contents -->
  </div>
</section>
<script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"></script>
<script>
$(document).ready(function() {
  // 초기화: 모든 데이터 아이템을 표시
  $(".detail-tab.on").show();

  // 탭 버튼 클릭 이벤트 처리
  $(".detail-tab_menu .detail-tab").click(function() {
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
<jsp:include page="/WEB-INF/views/footer.jsp"/>