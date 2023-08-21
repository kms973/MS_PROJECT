<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<html>
<head>
    <title>ìì íì ê°ì í¼</title>
</head>
<body>
    <h1>íì ê°ì</h1>
    <form action="process_registration.jsp" method="post">
        <!-- ì¬ì©ì ID ìë ¥ -->
        <label for="userId">ì¬ì©ì ID:</label>
        <input type="text" id="userId" name="userId"
            <% if (userId != null) { %>value="<%= userId %>"<% } %>>
        <br>
        
        <!-- ì´ë¦ ìë ¥ -->
        <label for="name">ì´ë¦:</label>
        <input type="text" id="name" name="name"
            <% if (name != null) { %>value="<%= name %>"<% } %>>
        <br>
        
        <!-- ìëìì¼ ìë ¥ -->
        <label for="birthday">ìëìì¼:</label>
        <input type="text" id="birthday" name="birthday"
            <% if (birthday != null) { %>value="<%= birthday %>"<% } %>>
        <br>
        
        <!-- ì£¼ì ìë ¥ -->
        <label for="address">ì£¼ì:</label>
        <input type="text" id="address" name="address"
            <% if (formattedAddress != null) { %>value="<%= formattedAddress %>"<% } %>>
        <br>
        
        <!-- í¨ì¤ìë ìë ¥ -->
        <label for="password">ë¹ë°ë²í¸:</label>
        <input type="password" id="password" name="password"><br>
        
        <input type="submit" value="íì ê°ì">
    </form>
</body>
</html>
