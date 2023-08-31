<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MS Shop - Admin</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="/WEB-INF/css/styles.css" rel="stylesheet" />
<link href="/WEB-INF/css/style.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="/WEB-INF/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="/WEB-INF/js/datatables-simple-demo.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
#top-link-block.affix-top { position: absolute; bottom: -82px; right: 10px; }
#top-link-block.affix { position: fixed; bottom: 18px; right: 10px; }
</style>
</head>
<body>
	<footer class="footer text-center text-lg-start text-white" style="background-color: #929fba">
    	<!-- <div class="container p-4 pb-0">
        	Grid row
        	<div class="row">
        	
	          	<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
	            	<h6 class="text-uppercase mb-4 font-weight-bold">MS Shop</h6>
		            <p><a href="/">회사명</a></p>
		            <p>대표자 : 김아무개</p>
		            <p>사업자 : 000-00-00000</p>
		            <p>전화번호 : 02-1234-4567</p>
	          	</div>
	          	<hr class="w-100 clearfix d-md-none" />
	
				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
	            	<h6 class="text-uppercase mb-4 font-weight-bold">CUSTOMER CENTER</h6>
		            <p><i class="fas fa-home mr-3"></i> 평일 09:30 - 18:00</p>
		            <p><i class="fas fa-envelope mr-3"></i>점심 12:00 - 13:00</p>
		            <p><i class="fas fa-phone mr-3"></i>070-123-4567</p>
		            <p><i class="fas fa-phone mr-3"></i>휴무 토, 일, 공휴일</p>
	          	</div>
	
	          	<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
	            	<h6 class="text-uppercase mb-4 font-weight-bold">Follow us</h6>
		            Facebook
		            <a class="btn btn-primary btn-floating m-1" style="background-color: #3b5998" href="#!" role="button"><i class="fab fa-facebook-f"></i></a>
		            Twitter
		            <a class="btn btn-primary btn-floating m-1" style="background-color: #55acee" href="#!" role="button"><i class="fab fa-twitter"></i></a>
		            Instagram
		            <a class="btn btn-primary btn-floating m-1" style="background-color: #ac2bac" href="#!" role="button"><i class="fab fa-instagram"></i></a>
	          	</div>
        	</div>
    	</div> -->

    	<div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">© 2023 Copyright: MS Shop</div>
	</footer>
    
    <div class="scroll-top-wrapper ">
	  <span class="scroll-top-inner"><i class="fa fa-2x fa-arrow-circle-up"></i></span>
	</div>
</body>
<script>
$(document).ready(function(){

	$(function(){
	 
	    $(document).on( 'scroll', function(){
	 
	    	if ($(window).scrollTop() > 100) {
				$('.scroll-top-wrapper').addClass('show');
			} else {
				$('.scroll-top-wrapper').removeClass('show');
			}
		});
	 
		$('.scroll-top-wrapper').on('click', scrollToTop);
	});
	 
	function scrollToTop() {
		verticalOffset = typeof(verticalOffset) != 'undefined' ? verticalOffset : 0;
		element = $('body');
		offset = element.offset();
		offsetTop = offset.top;
		$('html, body').animate({scrollTop: offsetTop}, 500, 'linear');
	}

});
</script>
</html>