<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- 메인 시작 -->
<section id="community" class="board-all container wrap">
	<div id="sub-bnr"><h5>Commuunity</h5></div>
	<!-- TAB 메뉴 -->
   	<div class="container wrap px-0">

	   <sec:authorize access="hasRole('ROLE_ADMIN')">
       <div class="option">
       	<a class="btn btn-sm btn-primary" href="#none"><i class="fas fa-edit">상품수정</i></a>
      	<a class="btn btn-sm btn-danger" href="#none"><i class="fas fa-trash">삭제</i></a>
       </div>
       </sec:authorize>
	   
	   <table class="table view-table">
	         <thead>
	         	<tr>
	                <th class="table-tit">TITLE</th>
			        <td class="table-tit-txt">${content_view.btitle}</td>
				</tr>
				<tr>
	                <th class="table-name">NAME</th>
			        <td class="table-name-txt">${content_view.bname}</td>
				</tr>
				<tr>
	                <th class="table-name">DATE</th>
		           	<td class="no-date table-date"><fmt:formatDate value="${content_view.bdate}" pattern="yyyy-MM-dd" /></td>
				</tr>
	         </thead>
	         <tbody>
	         	<tr class="min-h-25">
	           		<td colspan="2" class="min-h-25">${content_view.bcontent}</td>
          		</tr>
	         </tbody>
	   </table>
	   
	   <div class="list-btn">
	   	<!-- 이전 버튼 -->
		<%-- <c:if test="${prevBid ne null}"> --%>
		    <a href="/content_view?bid=${content_view.bid-1}" class="btn btn-sm btn-primary">이전 게시글</a>
		<%-- </c:if> --%>
		
		<!-- 다음 버튼 -->
		<%-- <c:if test="${nextBid ne null}"> --%>
		    <a href="/content_view?bid=${content_view.bid+1}" class="btn btn-sm btn-primary">다음 게시글</a>
		<%-- </c:if> --%>

	   </div>

	</div>
 </section>
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />