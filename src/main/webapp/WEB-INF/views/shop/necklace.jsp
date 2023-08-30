<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="1000" border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>가격</td>
			<td>재고</td>
			<td>옵션</td>
			<td>사진</td>
		</tr>

		<!--이때 list는 BListCommand에서 메모리에 올린 list를 뜻함. 포워딩시까지 살아있으므로-->
		<!--forEach문을 이용해 데이터를 꺼낼 수 있다.-->
		<c:forEach var="shop" items="${ShopProductNecklaceList}">
			<tr>
				<td>${shop.productNumber}</td>
				<td>${shop.productName}</td>
				
				<td>${shop.price}</td>
				<td>${shop.stock}</td>
				<td>${shop.options}</td>
				<td><img src="${shop.img }" style="width:100px; height:100px;"></td>
			</tr>
		</c:forEach>

		
	</table>

	<c:if test="${pageMaker.prev}">
      <a href="necklace${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
   </c:if>
   
    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
      <a href="necklace${pageMaker.makeQuery(idx)}">${idx}</a>
   </c:forEach> 
   
   <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
            <a href="necklace${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
   </c:if> 

</body>
</html>