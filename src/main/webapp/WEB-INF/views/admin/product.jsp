<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>상품 등록</title>
</head>
<body>

	<form method="post" action="/admin/product">
		<table>
			<tr>
				<td>분류 등록</td>
				
				<td>
				<!-- <input name = "product_category" type="text"> -->
				<select id="product_category" name="product_category">
						<option value="R">반지</option>
						<option value="N">목걸이</option>
						<option value="B">팔찌</option>
						<option value="E">귀걸이</option>
				</select> 
				</td>
			</tr>
		</table>
		<hr>

		<input id="product_code" name="product_code" type="text"> 코드


		<table>
			<tr>
				<td>상품 명</td>
				<td><input id="product_name" type="text" name="product_name"></td>
			</tr>
		</table>

		<table>
			<tr>
				<td>가격</td>
				<td><input id="price" type="text" name="price"></td>
			</tr>
		</table>

		<table>
			<tr>
				<td>재고 량</td>
				<td><input id="stock_quantity" type="number"
					name="stock_quantity"></td>
			</tr>

		</table>


		<tr>
			<td>옵션</td>
			<td><input id="options" name="options"></td>
			<td><select id="options" name="options">
					<option value="option1"
						${productVO.options == 'option1' ? 'selected' : 'option'}>옵션
						1</option>
					<option value="option2"
						${productVO.options == 'option2' ? 'selected' : 'option'}>옵션
						2</option>
					<option value="option3"
						${productVO.options == 'option2' ? 'selected' : 'option'}>옵션
						3</option>

					<!-- <option value="option2">옵션 2</option>
            <option value="option3">옵션 3</option>
            <option value="option3">옵션 4</option>
            <option value="option3">옵션 5</option> -->
			</select>
		</tr>

		<table>
			<tr>
				<td>이미지</td>
				<td><input id="product_img" type="file" name="product_img"
					value="${product.product_img}"></td>
			</tr>
		</table>

		
		<tr>
			<td colspan="2">&nbsp;&nbsp; <input type="submit" value="상품 등록">
			
		</td>
		</tr>

	</form>

</body>
</html>
