<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 공지 -->
   <table width="500" border="1">
      <tr>
         <td>공지번호</td>
         <td>이름</td>
         <td>제목</td>
         <td>날짜</td>
      </tr>
   
        <!--이때 list는 BListCommand에서 메모리에 올린 list를 뜻함. 포워딩시까지 살아있으므로-->
        <!--forEach문을 이용해 데이터를 꺼낼 수 있다.-->
      <c:forEach var="boardList" items="${boardList}">
         <tr>
            <td>${boardList.bid}</td>
            <td>${boardList.bname}</td>
            <td>
               <c:forEach begin="1" end="${boardList.bindent}">[Re]</c:forEach>
               <a href="content_view_notice?bid=${boardList.bid}">${boardList.btitle}</a>
                    <!--bindent : 가로 (댓글이 보이는 순서 때문에 들어간 것)-->
            </td>
            <td>${boardList.bdate}</td>     
         </tr>
      </c:forEach>
      
      <tr>
         <td colspan="5"> <a href="write_view_notice">글 작성</a></td>
      </tr>
   </table>
   
­   <c:if test="${pageMaker.prev}">
      <a href="notice${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
   </c:if>
   
   <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
      <a href="notice${pageMaker.makeQuery(idx)}">${idx}</a>
   </c:forEach>
   
   <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
      <a href="notice${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
   </c:if> 
   <br>
   
   
</body>
</html>