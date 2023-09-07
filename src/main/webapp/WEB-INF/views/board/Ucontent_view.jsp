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
		
	    <table class="table table-hover notice-table">
			<thead>
				<tr>
					<th class="no-cate table-cate visually-hidden">카데고리</th>
					<th class="no-no table-no">번호</th>
	                <th class="no-tit table-tit">글 제목</th>
	                <th class="no-write table-write">작성자</th>
	                <th class="no-date table-date">작성일</th>
	                <sec:authorize access="hasRole('ROLE_ADMIN')">
	                <th class="option">옵션</th>
	                </sec:authorize>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="boardList" items="${boardList}">
	         <tr>
	         	<td class="no-no table-no">${boardList.selecter}</td>
	           <td class="no-no table-no">${boardList.bid}</td>
	           <td class="no-tit table-tit"><a href="delete?bid=${content_view.bid}">${boardList.btitle}</a></td>
	           <td class="no-write table-write">${boardList.bname}</td>
	           <td class="no-date table-date"><fmt:formatDate value="${boardList.bdate}" pattern="yyyy-MM-dd" /></td>
	           <sec:authorize access="hasRole('ROLE_ADMIN')">
	              <td class="option">
	              	<a class="btn btn-sm btn-primary" href="#none"><i class="fas fa-edit">상품수정</i></a>
	            	<a class="btn btn-sm btn-danger" href="#none"><i class="fas fa-trash">삭제</i></a>
	              </td>
	           </sec:authorize>
	           </tr>
			  
<%-- 					<tr>
			                <td class="no-no table-no">1</td>
			                <td class="no-tit table-tit"><a href="#">첫 번째 공지</a></td>
			                <td class="no-write table-write">관리자</td>
			                <td class="no-date table-date">2023-09-06</td>
			                <sec:authorize access="hasRole('ROLE_ADMIN')">
			                <td class="option">
			                    <button class="btn-sm border-0"><i class="fas fa-edit"></i></button>
			                    <button class="btn-sm border-0"><i class="fas fa-trash"></i></button>
			                </td>
			                </sec:authorize>
			            </tr> --%>
	             </c:forEach>
			</tbody>
		</table>
	</div>
 </section>
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />
