<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
   <title>write_view</title>   
</head>
<body>
     <table width="500" cellpadding="0" cellspacing="0" border="1">
      <form id="updateForm" action="write_notice" method="post">
         <tr>
         <td>게시판 </td>
        <select id="selecter_board" name="selecter">
            <option value="1">공지사항</option>
<!--             <option value="2">QNA</option>
            <option value="3">리뷰</option> -->
        </select>
         <tr>
            <td> 이름 </td>
            <td> <input id="input_bname" type="text" name="bname" size = "50"> </td>
         </tr>
         <tr>
            <td> 제목 </td>
            <td> <input id="input_btitle" type="text" name="btitle" size = "50"> </td>
         </tr>
         <tr>
            <td> 내용 </td>
            <td> <textarea id="input_bcontent" name="bcontent" rows="10" ></textarea> </td>
         </tr>
         <tr >
            <td colspan="2"> <input type="submit" value="입력"> &nbsp;&nbsp; <a href="notice">목록보기</a></td>
         </tr>
      </form>
        </table>
</body>
</html>