<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!-- 주문내역 헤더 -->
<div class="d-flex my-2 justify-content-between w-100">
	<h5>주문내역</h5>
    <div class="col-2">
    	<select class="form-select" aria-label="Default select example">
			<option value="3" selected>3개월</option>
			<option value="6">6개월</option>
			<option value="all">1년</option>
		</select>
    </div>
</div>

<!-- 주문 리스트 -->
<div class="row mt-3 mx-0 justify-content-between w-100">
    <div class="col-12 p-0">
        <table class="table mb-5" style="border-color:gray !important;">
        	<colgroup>
        		<col width="85%">
        		<col width="15%">
        	</colgroup>
            <thead>
                <tr>
                    <th scope="col" colspan="3" class="py-2 px-2">
                        <div class="d-flex justify-content-between align-items-center mx-0 px-0">
                            <strong><h6>2023.01.01</h6></strong>
                            <a href="#">주문 상세보기 ></a>
                        </div>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr class="product1" id="product1">
                    <td class="col-4">
                        <div class="product-img d-flex">
                            <img src="/img/2.jpg" class="img-fluid" width="20%" alt="제품 이미지">
                            <div class="pname row align-items-center justify-content-center ms-3">
                                <p>상품명</p>
                                <p>주문번호</p>
                                <p>결제금액</p>
                            </div>
                        </div>
                    </td>
                    <td class="col-2">
                        <div class="pname row align-items-center justify-content-center">
                            <p><button type="button" class="btn btn-outline-dark btn-lg">1:1 문의</button></p>
                            <p><button type="button" class="btn btn-outline-dark btn-lg">배송조회</button></p>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>


