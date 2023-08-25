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
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
</head>
<body class="sb-nav-fixed">
	<header class="p-3 mb-3 border-bottom">
	    <div class="container">
	      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
	        <h1><a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-dark">MS</a></h1>
	
	        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
	          <li><a href="#!" class="nav-link px-2 link-secondary">Shop</a></li>
              <li><a href="#!" class="nav-link px-2 link-secondary">Community</a></li>
	        </ul>
	
	        <!-- <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
	          <input type="search" class="form-control" placeholder="Search..." aria-label="Search">
	        </form> -->

	        <div class="icon-btn d-flex m-10">
	        	<div class="dropdown text-end">
		          <a href="#" class="d-block link-dark" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-user"></i></a>
		          <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1" style="">
		            <li><a class="dropdown-item" href="#">마이페이지</a></li>
		            <li><a class="dropdown-item" href="#">Profile</a></li>
		            <li><hr class="dropdown-divider"></li>
		            <li><a class="dropdown-item" href="#">로그인</a></li>
		          </ul>
		        </div>
		        <a href="#" class="d-block link-dark" id="dropdownUser2" aria-expanded="false"><i class="fa-solid fa-cart-shopping"></i></a>
		        <a href="#" class="d-block link-dark" id="dropdownUser3" aria-expanded="false"><i class="fa-solid fa-magnifying-glass"></i></a>
		        <div class="dropdown text-end">
		          <a href="#" class="d-block link-dark" id="dropdownUser4" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-globe"></i></a>
		          <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1" style="">
		            <li><a class="dropdown-item" href="#">한국어</a></li>
		            <li><a class="dropdown-item" href="#">日本語</a></li>
		          </ul>
		        </div>
		    </div>
	      </div> 
	    </div> 
  </header>
</body>
</html>