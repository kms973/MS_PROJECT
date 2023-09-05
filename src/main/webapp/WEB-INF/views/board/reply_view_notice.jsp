<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

   <table width="500" cellpadding="0" cellspacing="0" border="1">
      <form action="reply_notice" method="post">
         <input type="hidden" name="bid" value="${reply_view_notice.bid}">
         <input type="hidden" name="bgroup" value="${reply_view_notice.bgroup}">
         <input type="hidden" name="bstep" value="${reply_view_notice.bstep}">
         <input type="hidden" name="bindent" value="${reply_view_notice.bindent}">
         <input type="hidden" name="selecter" value="${reply_view_notice.selecter}">
         <tr>
            <td> 번호 </td>
            <td> ${reply_view_notice.bid} </td>
         </tr>
         <tr>
            <td> 이름 </td>
            <td> <input type="text" name="bname" value="${reply_view_notice.bname}"></td>
         </tr>
         <tr>
            <td> 제목 </td>
            <td> <input type="text" name="btitle" value="${reply_view_notice.btitle}"></td>
         </tr>
         <tr>
            <td> 내용 </td>
            <td> <textarea rows="10"  name="bcontent">${reply_view_notice.bcontent}</textarea></td>
         </tr>
         <tr >
            <td colspan="2"><input type="submit" value="답변"> <a href="notice">목록</a></td>
         </tr>
      </form>
   </table>
   
</body>
</html>