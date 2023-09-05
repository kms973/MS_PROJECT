<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<section id="cart" class="container wrap">
	<div id="sub-bnr"><h5>Cart</h5></div>
	<div class="row mt-2">
		<div class="flex-row col-8 mx-3 left d-flex">
	<table class="table" >
	  <thead>
	    <tr>    
	      <th scope="col">	
	      <input type="hidden" name="cmd" value="order">  
		      <div class="form-check col-1"><input class="form-check-input mt-1" type="checkbox" id="checkAll"></div>
	      </th>     
	      <th scope="col" class="col-3"><strong>상품명</strong></th>
	      <th scope="col" class="col-2"><div class="mx-2"><strong>수량</strong></div></th>
	      <th scope="col" class="col-2"><strong>판매가</strong></th>
	      <th scope="col" class="col-2"><strong>구매금액</strong></th>
	      <th scope="col" class="col-2"><strong>선택</strong></th>
	    </tr>
	  </thead>
	  <tbody class="procuct1" id="product1">
	    <tr>
	      <th scope="row">
	      	<div class="form-check col-1"><input class="form-check-input" type="checkbox"></div>
	      </th>
	      <td class="col-3">
	   		<div class="product-img d-flex"><img src="/img/2.jpg" class="img-fluid" width="40%" alt="제품 이미지"><div class="pname row mx-2 mt-3">상품명</div></div>
	      </td>
	      <td class="col-2">
	      	<div class="quantity-controls mt-3">
	      		<i class="bi bi-dash-circle mx-1" type='button' onclick='count("minus", 1)'></i>
	      	<div id='result1'>1</div>
	      		<i class="bi bi-plus-circle mx-1" type='button' onclick='count("plus", 1)'></i>
	      	</div>
	      </td>
	      <td class="col-2"><div class="mt-3">10,000</div></td>
	      <td class="col-2"><div class="mt-3 mx-2"><div name="p_price" id="p_price1" class="p_price" value="10,000">10,000</div></div></td>
	      <td class="col-2"><div class="mt-3 mx-2"><i class="delete_btn fa-regular fa-trash-can" type="button"></i></div></td>
	    </tr>
	    <tr>
	      <th scope="row">
	      	<div class="form-check col-1"><input class="form-check-input" type="checkbox"></div>
	      </th>
	      <td class="col-3">
	   		<div class="product-img d-flex"><img src="/img/2.jpg" class="img-fluid" width="40%" alt="제품 이미지"><div class="pname row mx-2 mt-3">상품명</div></div>
	      </td>
	      <td class="col-2">
	      	<div class="quantity-controls mt-3">
	      		<i class="bi bi-dash-circle mx-1" type='button' onclick='count("minus", 2)'></i>
	      	<div id='result2'>1</div>
	      		<i class="bi bi-plus-circle mx-1" type='button' onclick='count("plus", 2)'></i>
	      	</div>
	      </td>
	      <td class="col-2"><div class="mt-3">10,000</div></td>
	      <td class="col-2"><div class="mt-3 mx-2"><div name="p_price" id="p_price2" class="p_price" value="10,000">10,000</div></div></td>
	      <td class="col-2"><div class="mt-3 mx-2"><i class="delete_btn fa-regular fa-trash-can" type="button"></i></div></td>
	    </tr>  
	  <tr>
	      <th scope="row">
	      	<div class="form-check col-1"><input class="form-check-input" type="checkbox"></div>
	      </th>
	      <td class="col-3">
	   		<div class="product-img d-flex"><img src="/img/2.jpg" class="img-fluid" width="40%" alt="제품 이미지"><div class="pname row mx-2 mt-3">상품명</div></div>
	      </td>
	      <td class="col-2">
	      	<div class="quantity-controls mt-3">
	      		<i class="bi bi-dash-circle mx-1" type='button' onclick='count("minus", 3)'></i>
	      	<div id='result3'>1</div>
	      		<i class="bi bi-plus-circle mx-1" type='button' onclick='count("plus", 3)'></i>
	      	</div>
	      </td>
	      <td class="col-2"><div class="mt-3">10,000</div></td>
	      <td class="col-2"><div class="mt-3 mx-2" ><div name="p_price" id="p_price3" class="p_price" value="10,000">10,000</div></div></td>
	      <td class="col-2"><div class="mt-3 mx-2"><i class="delete_btn fa-regular fa-trash-can" type="button"></i></div></td>
	    </tr>    
	  </tbody>
	</table>

	</div>
	<div class="row d-flex col-3 right">
		<div class="rightarea">
			<div class="costline" id="costline1">총 상품금액<span class="cost">30,000</span></div>			
			<div class="costtext">배송비<span class="cost">0</span></div>
			<div class="line"></div>
			<div class="costline" id="sum_p_price"><strong>결제예정금액<span class="cost">30,000</span></strong></div>
		</div>
		<div class="px-1"><button type="button" class="btn btn-sm btn-outline-dark" id="bttn">전체상품주문</button></div>
	    <div class="px-1"><button type="button" class="btn btn-sm btn-outline-dark" id="bttn">선택상품주문</button></div>
	</div>
</section>
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />