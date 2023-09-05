<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
	<title>상품 등록</title>
</head>
<body>
   
   <form  method="post" 
   >
   		<table> 
				<tr>
					<td>분류 등록</td>
					<td><select id="category_code" name="category_code" value="${product.product_category}">
							<option value="ring" 	${productVO.v_product_number == 'v_product_category' ? 'selected' : 'product_number'}>반지</option>
							<option value="necklace"  ${productVO.v_product_number == 'v_product_category'? 'selected' : 'product_number'}>목걸이</option>
							<option value="bracelet" ${productVO.v_product_number == 'v_product_category' ? 'selected' : 'product_number'}>팔찌</option>
							<option value="earring"  ${productVO.v_product_number == 'v_product_category' ? 'selected' : 'product_number'}>귀걸이</option>
							<!-- Add more category options as needed -->
					</select></td>
				</tr>
			</table> <hr>
   		
        <tr>
            <td> 상품 번호 </td>
            <td> <input id="product_number" type="text" name="product_number" value="${product.product_number}"></td>
         </tr>
         
          <table>         
        <tr>
            <td>상품 명 </td>
            <td> <input id="product_name" type="text" name="product_name" value="${product.product_name}"></td>
         </tr>
         </table>  
         
          <table>
          <tr>
            <td> 가격  </td>
            <td> <input id="price" type="text" name="price" value="${product.price}"></td>
         </tr>
         </table>  
          
        <table>
          <tr>               
            <td> 재고 량 </td>
            <td> <input id="stock_quantity" type="number" name="stock_quantity" value="${product.stock_quantity}"></td>
         </tr>
         	
             </table>
   
         
          <tr>         
            <td> 옵션 </td>
            <td> <input id="options" name="options" value="${product.options}"></td>
               <td>
        <select id="options" name="options">
            <option value="option1" ${productVO.options == 'option1' ? 'selected' : 'option'}>옵션 1</option>
            <option value="option2" ${productVO.options == 'option2' ? 'selected' : 'option'}>옵션 2</option>
            <option value="option3" ${productVO.options == 'option2' ? 'selected' : 'option'}>옵션 3</option>
            
            <!-- <option value="option2">옵션 2</option>
            <option value="option3">옵션 3</option>
            <option value="option3">옵션 4</option>
            <option value="option3">옵션 5</option> -->          
        </select>
         </tr>
         
         <table>
          <tr>         
            <td> 이미지 </td>
            <td> <input id="product_img" type="file" name="product_img" value="${product.product_img}"></td>
         </tr>
                 </table>
                  
                 
        <tr>
            <td colspan="2">
               &nbsp;&nbsp;  <input type="submit" value="상품 등록"> 
                <td colspan="2"> 
                	&nbsp;&nbsp; <input type="submit" value="수정">
      			  
                
            </td>
        </tr>        
       
   </form>
     
</body>
</html>
