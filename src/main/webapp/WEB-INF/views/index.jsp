<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<title>MS Shop - Admin</title>
<!-- css 링크 연결 -->
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="/css/styles.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,500;1,300&display=swap" rel="stylesheet">

<!-- script 링크 연결 -->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="/js/scripts.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
header{background: none; border-bottom: none;}
</style>
</head>
<body>
	<!-- header 시작 -->
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	
	<!-- index 메인 시작 -->
	<main>
		<div id="demo" class="carousel slide" data-bs-ride="carousel">
	
	    	<!-- <div class="carousel-indicators">
	      		<button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
	      		<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
	    	</div> -->
	
	    	<div class="carousel-inner">
				<div class="carousel-item active">
	        		<video data-videoautoplay="true" playsinline preload="none" muted loop autoplay src="/video/vd0.mp4" class="d-block"></video>
	        		<div class="text">
	        		<h1>#MS Shop</h1>
	        		<br>
	        		<p>2023 New Collection</p>
	        		
	        		</div>
				</div>
				
	      		<!-- <div class="carousel-item">
	        		<img src="/img/bg3.png" class="d-block" style="width:100%">
	    		</div> -->
	    	</div>
		</div>
	</main>
	<!-- footer 시작 -->
	<%-- <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include> --%>
</body>
<script>
	$("header").css({"background":"none","border-bottom":"none"});
</script>
</html>