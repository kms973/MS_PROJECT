<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<head>
<style>
header{background: none !important; border-bottom: none !important;}
div.h-box { height: 0 !important; }
</style>
</head>
<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- 메인 시작 -->
<main>
	<div class="item active">
       <video data-videoautoplay="true" playsinline preload="none" muted loop autoplay src="/video/vd0.mp4" class="d-block"></video>
        <div class="text">
        	<p>There is nothing that</p>
        	<p>makes its way more directly</p> 
        	<p>to the soul than beauty.</p>
        	<br>
        	<p>- Joseph Addison</p>        		
        </div>
	</div>      		
</main>
<!-- 메인 끝 -->

<!-- 팝업 -->
<jsp:include page="/WEB-INF/views/popup/popup.jsp"/>