<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!-- 주문내역 헤더 -->
<div class="d-flex my-2 justify-content-between w-100">
	<h5>주문내역</h5>
   	<select class="form-select w-auto" aria-label="Default select example">
		<option value="3" selected>3개월</option>
		<option value="6">6개월</option>
		<option value="all">1년</option>
	</select>
</div>

<!-- 주문 리스트 -->
<div class="row mt-3 mx-0 justify-content-between w-100">
    <div class="col-12 p-0">
        <table class="table mb-5" style="border-color:gray !important;">
            <thead class="w-100">
                <tr class="w-100">
                    <th scope="col" class="py-2 px-2">
                        <div class="d-flex justify-content-between align-items-center mx-0 px-0">
                            <strong><h6>2023.01.01</h6></strong>
                            <a href="#" class="fz-10">주문 상세보기 <i class="xi-angle-right-min position-relative" style="top: 1px;"></i></a>
                        </div>
                    </th>
                </tr>
            </thead>
            <tbody class="w-100">
                <tr class="product1 w-100 m-0 d-flex align-items-center justify-content-between" id="product1">
                    <td class="d-flex align-items-center justify-content-center w-100 px-3 py-2">
                        <div class="product-img d-flex">
                            <img src="/img/2.jpg" class="img-fluid me-3" width="15%" alt="제품 이미지">
                            <div class="pname row align-items-center w-80">
                                <p class="m-0">상품명</p>
                                <p class="m-0">주문번호</p>
                                <p class="m-0">결제금액</p>
                            </div>
                        </div>
	                    <div class="row align-items-center justify-content-center m-0 w-20 px-2 py-2">
	                    	<button type="button" class="btn btn-outline-dark btn-ml w-100 my-2 px-1 fz-10">1:1 문의</button>
	                       	<button type="button" class="btn btn-outline-dark btn-ml w-100 my-2 px-1 fz-10">배송조회</button>
	                    </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>


