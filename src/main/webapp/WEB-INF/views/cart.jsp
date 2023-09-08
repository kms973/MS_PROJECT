<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<section id="pay" class="container wrap">
<div id="sub-bnr"><h5>Cart</h5></div>
	<div class="row mt-1 justify-content-between hello">
<div class="col-8 left px-0">
	<table class="table" >
	  <thead>
	    <tr>    
	      <th scope="col">	
	      <input type="hidden" name="cmd" value="order">  
		      <div class="form-check col-1"><input class="form-check-input mt-1" type="checkbox" id="checkAll" onclick="toggleCheckAll()"></div>
	      </th>     
	      <th scope="col" class="col-3"><strong>상품명</strong></th>
	      <th scope="col" class="col-2"><div class="mx-2"><strong>수량</strong></div></th>
	      <th scope="col" class="col-2"><strong>판매가</strong></th>
	      <th scope="col" class="col-2"><strong>구매금액</strong></th>
	      <th scope="col" class="col-2"><strong>선택</strong></th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr class="product1 product-row" id="product1">
	      <th scope="row">
	      	<div class="form-check col-1"><input class="form-check-input" type="checkbox" onclick="updateTotalPrice()"></div>
	      </th>
	      <td class="col-3">
	   		<div class="product-img d-flex"><img src="/img/2.jpg" class="img-fluid" width="40%" alt="제품 이미지"><div class="pname row mx-2 mt-4">상품명</div></div>
	      </td>
	      <td class="col-2">
	      	<div class="quantity-controlss mt-4">
	      		<i class="bi bi-dash-circle mx-1" type='button' onclick='count("minus", 1)'></i>
	      	<div id='result1'>1</div>
	      		<i class="bi bi-plus-circle mx-1" type='button' onclick='count("plus", 1)'></i>
	      	</div>
	      </td>
	      <td class="col-2"><div class="mt-4">10,000</div></td>
	      <td class="col-2"><div class="mt-4 mx-2"><div name="p_price" id="p_price1" class="p_price product-price" value="10,000">10,000</div></div></td>
	      <td class="col-2"><div class="mt-4 mx-2"><i class="delete_btn fa-regular fa-trash-can" type="button" onclick='deleteRow(1)'></i></div></td>
	    </tr>
	    <tr class="product2 product-row" id="product2">
	      <th scope="row">
	      	<div class="form-check col-1"><input class="form-check-input" type="checkbox" onclick="updateTotalPrice()"></div>
	      </th>
	      <td class="col-3">
	   		<div class="product-img d-flex"><img src="/img/2.jpg" class="img-fluid" width="40%" alt="제품 이미지"><div class="pname row mx-2 mt-4">상품명</div></div>
	      </td>
	      <td class="col-2">
	      	<div class="quantity-controlss mt-4">
	      		<i class="bi bi-dash-circle mx-1" type='button' onclick='count("minus", 2)'></i>
	      	<div id='result2'>1</div>
	      		<i class="bi bi-plus-circle mx-1" type='button' onclick='count("plus", 2)'></i>
	      	</div>
	      </td>
	      <td class="col-2"><div class="mt-4">10,000</div></td>
	      <td class="col-2"><div class="mt-4 mx-2"><div name="p_price" id="p_price2" class="p_price product-price" value="10,000">10,000</div></div></td>
	      <td class="col-2"><div class="mt-4 mx-2"><i class="delete_btn fa-regular fa-trash-can" type="button" onclick='deleteRow(2)'></i></div></td>
	    </tr>
	    <tr class="product3 product-row" id="product3">
	      <th scope="row">
	      	<div class="form-check col-1"><input class="form-check-input" type="checkbox" onclick="updateTotalPrice()"></div>
	      </th>
	      <td class="col-3">
	   		<div class="product-img d-flex"><img src="/img/2.jpg" class="img-fluid" width="40%" alt="제품 이미지"><div class="pname row mx-2 mt-4">상품명</div></div>
	      </td>
	      <td class="col-2">
	      	<div class="quantity-controlss mt-4">
	      		<i class="bi bi-dash-circle mx-1" type='button' onclick='count("minus", 3)'></i>
	      	<div id='result3'>1</div>
	      		<i class="bi bi-plus-circle mx-1" type='button' onclick='count("plus", 3)'></i>
	      	</div>
	      </td>
	      <td class="col-2"><div class="mt-4">10,000</div></td>
	      <td class="col-2"><div class="mt-4 mx-2"><div name="p_price" id="p_price3" class="p_price product-price" value="10,000">10,000</div></div></td>
	      <td class="col-2"><div class="mt-4 mx-2"><i class="delete_btn fa-regular fa-trash-can" type="button" onclick='deleteRow(3)'></i></div></td>
	    </tr>
	    </tbody>
	    </table>
	    
	    <div class="paycost row text-center align-middle mx-1">
	    <div class="col-3">
	    	<div class="paymg">총 상품금액</div>
	    	<div class="paytext" value="30,000">30,000</div>
	    </div>
	    <div class="col-2">
			<i class="fa-solid fa-circle-plus mt-4"></i>
		</div>
	    <div class="col-2">
			<div class="paymg">배송비</div>
	    	<div>0</div>
		</div>
	    <div class="col-2">
			<i class="fa-solid fa-circle-right mt-4"></i>
		</div>
	    <div class="col-3">
			<div class="paymg"><strong>결제 예정 금액</strong></div>
	    	<div class="paytext" value="30,000">30,000</div>
		</div>
	    </div>
</div>
<div class="col-4 right paycontrol">
		<div class="pay-box mx-4">
		<div class="rightareaa">
			<div class="costlinee" id="costline1">총 상품금액<span class="paytext float-end" value="30,000">30,000</span></div>			
			<div class="costtextt">배송비<span class="float-end">0</span></div>
			<div class="linee"></div>
			<div class="costlinee" id="sum_p_price"><strong>결제예정금액<span class="paytext float-end" value="30,000">30,000</span></strong></div>
		</div>
		
		<div class="px-1"><button type="button" class="btn btn-sm btn-outline-dark" id="btttn">전체상품주문</button></div>
	    <div class="px-1"><button type="button" class="btn btn-sm btn-outline-dark" id="btttn">선택상품주문</button></div>
		</div>		
</div>
</div>
</section>
<script>
  // 페이지 로드 시에 초기 총 가격 계산
  document.addEventListener('DOMContentLoaded', function () {
    // 모든 체크박스 선택
    const checkboxes = document.querySelectorAll('.form-check-input');
    checkboxes.forEach(function(checkbox) {
      checkbox.checked = true;
    });

    // 총 가격 업데이트
    updateTotalPrice();
  });

  //"plus"와 "minus" 버튼을 클릭할 때 개별 상품 가격과 총 가격을 업데이트
  function count(type, row) {
    const resultElement = document.getElementById('result' + row);
    let number = parseInt(resultElement.innerText);
    let price = 10000;

    if (type === 'plus') {
      number = number + 1;
    } else if (type === 'minus') {
      if (number > 1) {
        number = number - 1;
      }
    }

    resultElement.innerText = number;

    const paytext = number * price;
    const p_priceElement = document.getElementById('p_price' + row);
    p_priceElement.innerHTML = paytext.toLocaleString();

    // 해당 상품이 체크된 경우에만 총 가격 업데이트
    const checkbox = document.querySelector('#product' + row + ' .form-check-input');
    if (checkbox.checked) {
      updateTotalPrice(); // 총 가격 업데이트
    }
  }

  //각각의 tr 요소의 체크박스가 변경될 때 호출되는 함수
  function onRowCheckboxChange(row) {
    const checkbox = document.querySelector('#product' + row + ' .form-check-input');

    if (!checkbox.checked) {
      // 하나의 체크박스라도 체크 해제되면 전체 선택 체크박스도 체크 해제
      const checkAll = document.getElementById('checkAll');
      checkAll.checked = false;
    } else {
      // 모든 tr 요소의 체크박스가 체크되었는지 확인
      const checkboxes = document.querySelectorAll('.form-check-input');
      let allChecked = true;
      checkboxes.forEach(function(checkbox) {
        if (!checkbox.checked) {
          allChecked = false;
        }
      });

      if (allChecked) {
        // 모든 tr 요소의 체크박스가 체크되었으면 전체 선택 체크박스도 체크
        const checkAll = document.getElementById('checkAll');
        checkAll.checked = true;
      }
    }

    updateTotalPrice(); // 총 가격 업데이트
  }

  // 각각의 tr 요소의 체크박스에 이벤트 리스너 등록
  for (let i = 1; i <= 3; i++) {
    const checkbox = document.querySelector('#product' + i + ' .form-check-input');
    checkbox.addEventListener('change', function() {
      onRowCheckboxChange(i);
    });
  }

  // "체크 해제" 이벤트 처리
  function toggleCheckAll() {
    const checkAll = document.getElementById('checkAll');
    const checkboxes = document.querySelectorAll('.form-check-input');

    checkboxes.forEach(function(checkbox) {
      checkbox.checked = checkAll.checked;
    });

    updateTotalPrice(); // 총 가격 업데이트
  }

  // 특정 <tr>을 삭제하고 총 가격을 업데이트
  function deleteRow(row) {
    const rowElement = document.getElementById('product' + row);
    if (rowElement) {
      rowElement.remove();

      // 남은 상품들의 데이터를 기반으로 다시 계산
      updateTotalPrice();
    }
  }

  //모든 상품 가격을 다시 계산
  function updateTotalPrice() {
    let totalPaytext = 0;
    for (let i = 1; i <= 3; i++) {
      const productPriceElement = document.getElementById('p_price' + i);
      const checkbox = document.querySelector('#product' + i + ' .form-check-input');

      if (productPriceElement && checkbox.checked) {
        const productPrice = parseFloat(productPriceElement.getAttribute('value').replace(',', ''));
        const productQuantity = parseInt(document.getElementById('result' + i).innerText);
        totalPaytext += productPrice * productQuantity;
      }
    }

    // 총합을 .paytext에 업데이트
    const totalPaytextElements = document.querySelectorAll('.paytext');
    totalPaytextElements.forEach((element) => {
      element.textContent = totalPaytext.toLocaleString();
    });
  }

  // "선택상품주문" 버튼 클릭 시 선택된 상품만 주문
  function orderSelectedProducts() {
    for (let i = 1; i <= 3; i++) {
      const checkbox = document.querySelector('#product' + i + ' .form-check-input');

      if (checkbox.checked) {
        // 선택된 상품에 대한 주문 로직을 추가
      }
    }
  }

  //tbody 내의 모든 체크박스를 선택할 때 실행되는 함수
  function checkAllTbodyCheckboxes() {
    const tbodyCheckboxes = document.querySelectorAll('tbody input[type="checkbox"]');
    const theadCheckbox = document.getElementById('checkAll');

    // 모든 tbody 체크박스가 체크되었는지 확인
    let allChecked = true;
    tbodyCheckboxes.forEach(function(checkbox) {
      if (!checkbox.checked) {
        allChecked = false;
      }
    });

    // thead 체크박스를 업데이트
    theadCheckbox.checked = allChecked;

    // 총 가격 업데이트
    updateTotalPrice();
  }

  // tbody 내의 각 체크박스에 이벤트 리스너 등록
  const tbodyCheckboxes = document.querySelectorAll('tbody input[type="checkbox"]');
  tbodyCheckboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', checkAllTbodyCheckboxes);
  });
</script>
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />