<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- 메인 시작 -->

 <section id="detail" class="container wrap">
 	<form method="post" action="/buypay/insertbuypay" name="buypaygogo">
	<input type="hidden" name="product_img" value="${spVO.img }" >
	<input type="hidden" name="product_name" value="${spVO.productName }" >
	<input type="hidden" name="price" value="${spVO.price }" >
	<input type="hidden" name="product_code" value="${spVO.productCode }" >
	<input type="hidden" name="selectedQuantity" value="${selectedQuantity}">
	<input type="hidden" id="optionsInput2" name="options" value="">
	</form>
	<form method="post" action="/cart/insertcart" name="cartgogo">
	<input type="hidden" name="product_img" value="${spVO.img }" >
	<input type="hidden" name="product_name" value="${spVO.productName }" >
	<input type="hidden" name="price" value="${spVO.price }" >
	<input type="hidden" name="product_code" value="${spVO.productCode }" >
	<input type="hidden" name="selectedQuantity" value="${selectedQuantity}">
	<input type="hidden" id="optionsInput" name="options" value="">
	</form>
	<div class="row mt-4 justify-content-between">
		<div class="col-6 left mb-4"><img src="/img/${spVO.img}" class="img-fluid" width="500" alt="제품 이미지"></div>
		<div class="right col-6 row align-content-between py-2 mb-4">
			<div class="right-top row align-content-between w-100">
				<h3 class="p-1 pppname"><strong>${spVO.productName}</strong></h3>
				<div class="d-flex justify-content-between align-items-center pt-4 py-2 px-1 w-100">
					<div class="price d-flex justify-content-start align-items-center">
						<div class="price-tit">가격</div>
						<div class="price mx-3">₩ ${spVO.price}</div>
					</div> 
					
					<div class="btn-icon d-flex justify-content-between align-items-center">
						<a href="#none" id="copyButton" class="pe-auto share text-dark py-1 px-2 modal-dialog modal-dialog-centered"><i class="bi bi-share-fill"></i></a>
						<a href="#none" class="cart text-dark py-1 px-2"><i class="bi bi-heart"></i></a>
					</div>
				</div>
				<div class="option-box d-flex align-items-center px-1 py-2 pb-4">
					<div>색상</div>
					<select id="selectBox" class="form-select w-75 mx-3 px-2"
						aria-label="Default select example" style="height: auto">
						<option selected="selected">옵션을 선택해주세요.</option>
						<option value="14K 골드">14K 골드</option>
						<option value="14K 로즈골드">14K 로즈골드</option>
						<option value="14K 실버">14K 실버</option>
						<option value="18K 골드">18K 골드</option>
						<option value="18K 로즈골드">18K 로즈골드</option>
						<option value="18K 실버">18K 실버</option>
					</select>
				</div>
				<!-- select 옵션을 선택시 값을 가져와서 option-txt가 생성 -->
				<div id="opTxtBox" class="option-txt d-none align-content-center justify-content-between px-0 mt-2 border-top-1 py-4 border-top-1" style="border-top: 1px solid #ccc; border-bottom: 1px solid #ccc;">
					<div id="optionTxt" class="ps-1 mb-0 d-flex align-items-center">제품 정보명</div>
					<div class="count num">
						<div class="count d-flex align-content-center">
							<a href="#" class="minus text-dark" onclick='count("minus")'><i class="xi-minus-circle-o"></i></a>
							<span id="quantity" class="px-3">1</span>
							<a href="#" class="plus text-dark" onclick='count("plus")'><i class="xi-plus-circle-o"></i></a>
						</div>
					</div>
					<div id="price" class="pe-1 d-flex align-items-center"><h5 class="mb-0">₩ ${spVO.price }</h5></div>
				</div><!-- <div class="option-txt"> -->
			</div><!-- <div class="right-top"> -->
			<div class="right-bottom row justify-content-between">
				<div class="py-3 d-flex align-content-center justify-content-between px-0" style="border-color: #fff;">
					<div class="text-right ps-1"><h5 class="mb-0"><strong>총 상품금액</strong></h5></div>
					<div class="text-right pe-1">
						<div id="totalPrice"><h5 class="mb-0"><strong>₩ ${spVO.price }</strong></h5></div>
					</div>
				</div>
				<div class="d-flex justify-content-center align-items-center mt-4 px-0">				
					<div class="px-2 w-50 ps-1">				
					<!-- <button type="submit" class="btn cartbtn" id="bttn" >CART</button> -->
					<button type="submit" class="btn cartbtn" id="bttn" >CART</button>	
										
					</div>	
					<div class="px-2 w-50 pe-1">						
					<button type="submit" class="btn paybtn" id="bttn">BUY IT NOW</button>
					</div>					
				</div>
			</div><!-- <div class="right-bottom"> -->
		</div><!-- <div class="right"> -->
	</div><!-- <div class="row"> -->
	<div class="rec-title d-flex justify-content-center mt-5"><strong><h5> Recommand Item</h5></strong></div>
	<div class="container mt-5">
		<div id="blogCarousel1" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="row">
						<div class="col-md-3">
							<a href="#">
								<figure>
									<img src="/img/2.jpg" alt="Image" class="img-fluid">
									<figcaption>
										<p class="productname">제품명</p>
										<p class="productcost">₩ 219,000</p>
									</figcaption>
								</figure>
							</a>
						</div>
						<div class="col-md-3">
							<a href="#">
								<figure>
									<img src="/img/2.jpg" alt="Image" class="img-fluid">
									<figcaption>
										<p class="productname">제품명</p>
										<p class="productcost">₩ 219,000</p>
									</figcaption>
								</figure>
							</a>
						</div>
						<div class="col-md-3">
							<a href="#">
								<figure>
									<img src="/img/2.jpg" alt="Image" class="img-fluid">
									<figcaption>
										<p class="productname">제품명</p>
										<p class="productcost">₩ 219,000</p>
									</figcaption>
								</figure>
							</a>
						</div>
						<div class="col-md-3">
							<a href="#">
								<figure>
									<img src="/img/2.jpg" alt="Image" class="img-fluid">
									<figcaption>
										<p class="productname">제품명</p>
										<p class="productcost">₩ 219,000</p>
									</figcaption>
								</figure>
							</a>
						</div>
					</div>
				</div>
				<!-- <div class="carousel-item active"> -->
			</div>
			<!-- <div class="carousel-inner"> -->
		</div>
		<!-- <div id="blogCarousel1" class="carousel slide" data-bs-ride="carousel"> -->
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#blogCarousel1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		</div>
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
		<div class="data_item container wra" data-type="detail"
			data-wow-delay=".2s">
			<div class="detail-img"><img src="/img/2.jpg" class="mb-5 w-100"></div>
			<div class="data_item container wra" data-type="guide" data-wow-delay=".2s"><div class="detail-img"><img src="/img/2.jpg" class="mb-5 w-100"></div></div>
			<div class="data_item container wra" data-type="review" data-wow-delay=".2s"><div class="detail-img"><img src="/img/2.jpg" class="mb-5 w-100"></div></div>
		</div>
		<!-- detail TAB contents -->
	</div>
	
	<div class="modal fade" id="cartModal" tabindex="-1" aria-labelledby="cartModalLabel" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="cartModalLabel">MS Shop</h5>
      </div>
      <div class="modal-body">
       	<strong>장바구니에 상품이 담겼습니다.</strong>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-light" data-bs-dismiss="modal" id="continueShopping">쇼핑 계속하기</button>
        <button type="button" class="btn btn-dark" id="cartConfirmation">장바구니 확인</button>
      </div>
    </div>
  </div>
</div>

</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
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
<script>
	function count(type) {
		// 결과를 표시할 element
		const quantityElement = document.getElementById('quantity');
		const priceElement = document.getElementById('price');
		const totalPriceElement = document.getElementById('totalPrice');

		// 현재 수량, 가격 및 총 상품금액
		let quantity = parseInt(quantityElement.innerText);
		let price = ${spVO.price}; // 제품 가격 (기본값)

		// 더하기/빼기
		if (type === 'plus') {
			quantity += 1;
		} else if (type === 'minus') {
			if (quantity > 1) {
				quantity -= 1;
			}
		}

		// 총 상품금액 계산
		const totalPrice = quantity * price;

		// 가격 업데이트
		priceElement.innerHTML = '<h5 class="mb-0">₩ '
				+ (price * quantity).toLocaleString() + '</h5>'; // 가격 업데이트

		// 총 상품금액 업데이트
		totalPriceElement.innerHTML = '<h5 class="mb-0"><strong>₩ '
				+ totalPrice.toLocaleString() + '</strong></h5>'; // 금액을 포맷팅하여 표시

		// 수량 업데이트
		quantityElement.innerText = quantity;
	}
</script>

<script>
	$(document).ready(function() {
		
		// 셀렉트 박스에서 옵션을 선택할 때 이벤트 핸들러를 추가합니다.
		$("#selectBox").on("change", function(e) {
			// 선택한 옵션의 텍스트 내용을 가져옵니다.
			console.log(e.target.selectedIndex);
			
			if(e.target.selectedIndex >= 1) {
				
				$("#opTxtBox").addClass("d-flex").removeClass("d-none");
				
				var selectedOptionText = $(this).find("option:selected").text();
	
				// 결과를 표시할 div#opTxtBox를 가져옵니다.
				var opTxtBox = $("#opTxtBox");
	
				// div#optionTxt 내용을 선택한 옵션 텍스트로 변경합니다.
				opTxtBox.find("#optionTxt").text(selectedOptionText);

			} else {
				$("#opTxtBox").removeClass("d-flex").addClass("d-none");
				// 옵션 선택 경고창
				 //alert("옵션을 선택해주세요.");
				// $('#myModal').modal('show');
			}
			opTxtBox.show();
		});
	});
</script>

<script>
document.addEventListener('DOMContentLoaded', function() {
  // 버튼 요소를 가져옵니다.
  var copyButton = document.getElementById('copyButton');

  // 클릭 이벤트를 처리하는 함수를 등록합니다.
  copyButton.addEventListener('click', function() {
    // 현재 페이지의 URL을 가져옵니다.
    var currentURL = window.location.href;

    // 텍스트를 클립보드에 복사합니다.
    copyTextToClipboard(currentURL);
  });

  // 텍스트를 클립보드에 복사하는 함수
  function copyTextToClipboard(text) {
    var textArea = document.createElement('textarea');

    // 텍스트를 텍스트 영역에 설정합니다.
    textArea.value = text;

    // 텍스트 영역을 DOM에 추가합니다.
    document.body.appendChild(textArea);

    // 텍스트 영역을 선택합니다.
    textArea.select();

    // 클립보드에 복사합니다.
    document.execCommand('copy');

    // 텍스트 영역을 제거합니다.
    document.body.removeChild(textArea);

    // 복사가 완료되었음을 사용자에게 알립니다.
    alert('주소가 복사되었습니다.');
  }
});
</script>

<script>
$(document).ready(function() {
    // 셀렉트 박스에서 옵션을 선택할 때 이벤트 핸들러를 추가합니다.
    $("#selectBox").on("change", function(e) {
        // 선택한 옵션의 값을 가져옵니다.
        var selectedOptionsValue = $(this).val();

        // 선택한 옵션 값을 input 태그에 설정합니다.
        $("#optionsInput").val(selectedOptionsValue);
    });
});
</script>
<script>
$(document).ready(function() {
    // 셀렉트 박스에서 옵션을 선택할 때 이벤트 핸들러를 추가합니다.
    $("#selectBox").on("change", function(e) {
        // 선택한 옵션의 값을 가져옵니다.
        var selectedOptionsValuee = $(this).val();

        // 선택한 옵션 값을 input 태그에 설정합니다.
        $("#optionsInput2").val(selectedOptionsValue);
    });
});
</script>
<script>
$(".cartbtn").click(function(event) {
	const selectedQuantity = parseInt($("#quantity").text());
    const selectedOption = $("#selectBox").val();
    var principal = <%= request.getUserPrincipal() != null %>;
    
   
    if (!principal) {
        
        alert("로그인이 필요합니다.");
        event.preventDefault();
    } else {
       if (!selectedOption || selectedOption === "옵션을 선택해주세요.") {
        alert("옵션을 선택해주세요.");
        event.preventDefault();
    } else {
        // 옵션이 선택되었다면, 선택한 수량을 hidden input 필드에 저장
        $("input[name='selectedQuantity']").val(selectedQuantity);

        // 모달 창을 띄웁니다.
        $('#cartModal').modal('show');
        event.preventDefault();
    	}
    }
});

// 장바구니 확인 버튼 클릭 시 form을 제출하도록 설정
$("#cartConfirmation").click(function() {
	$("form[name='cartgogo']").submit();
});

$("#continueShopping").click(function() {
	$("form[name='cartgogo']").submit();
    setTimeout(function() {
        window.location.href = "/shop/*";
    }, 10); 
});

</script>
<script>
$(".paybtn").click(function(event) {
	const selectedQuantity = parseInt($("#quantity").text());
    const selectedOption = $("#selectBox").val();
    var principal = <%= request.getUserPrincipal() != null %>;
    
   
    if (!principal) {
        
        alert("로그인이 필요합니다.");
        event.preventDefault();
    } else {
       if (!selectedOption || selectedOption === "옵션을 선택해주세요.") {
        alert("옵션을 선택해주세요.");
        event.preventDefault();
    } else {
        // 옵션이 선택되었다면, 선택한 수량을 hidden input 필드에 저장
        $("input[name='selectedQuantity']").val(selectedQuantity);
        $("input[name='options']").val(selectedOption);
        $("form[name='buypaygogo']").submit();
    }
    }
});
</script>
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />
