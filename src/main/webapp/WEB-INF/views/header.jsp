<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MS Shop</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
<!-- web icon -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
<link href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css"  rel="stylesheet" />
<!-- static/css -->
<link href="/css/styles.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="/css/login_style.css" rel="stylesheet" />
<link href="/css/detail.css" rel="stylesheet" />
<link href="/css/cart.css" rel="stylesheet" />
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
<!-- MDB -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.1/mdb.min.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.1/mdb.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="/js/plusminus.js"></script>
<script src="/js/scripts.js"></script>
<script src="/js/login_scripts.js"></script>
<script src="/js/cart.js"></script>
</head>
<body>
	<header id="header" class="p-2 fixed-top">
	    <div class="container">
	      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
	        <h1 class="logo"><a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-dark">MS</a></h1>
	
	        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0 ms-10">
	          <li><a href="/shop" class="nav-link px-2 text-black">Shop</a></li>
              <li><a href="/community" class="nav-link px-2 text-black">Community</a></li>
	        </ul>
	
	        <!-- <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
	          <input type="search" class="form-control" placeholder="Search..." aria-label="Search">
	        </form> -->

	        <div class="icon-btn d-flex">
		        <div class="dropdown text-end">
				  <a class="d-block link-dark" id="dropdownMenu1" data-mdb-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-user"></i></a>
				  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
				    <li><a class="dropdown-item" href="#">마이페이지</a></li>
				    <sec:authorize access="hasRole('ROLE_ADMIN')">
   						<!-- admin 로그인일 경우 -->
						<li><a class="dropdown-item" href="/admin">관리자페이지</a></li>
					</sec:authorize>
				    <li><hr class="dropdown-divider"></li>
		            <sec:authorize access="isAnonymous()">
						<!-- 로그인 안 한 익명일 경우 -->
		            	<li><a class="dropdown-item" href="/login/login">로그인</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<!-- 로그인(인증된) 사용자인 경우 -->	
						<li><a class="dropdown-item" href="/logout">로그아웃</a></li>
					</sec:authorize>
				  </ul>
				</div>
		    </div>
		    <div class="icon-btn d-flex">
		        <div><a href="cart" class="d-block link-dark" id="dropdownUser2" aria-expanded="false"><i class="fa-solid fa-cart-shopping"></i></a></div>
		    </div>
		    <div class="icon-btn d-flex">
		    	<div><a href="#" class="d-block link-dark" id="dropdownUser3" aria-expanded="false"><i class="fa-solid fa-magnifying-glass"></i></a></div>
		    </div>
		    <div class="icon-btn d-flex">
		        <div class="dropdown text-end">
				  <a href="#" class="d-block link-dark" type="button" id="dropdownMenu2" data-mdb-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-globe"></i></a>
				  <ul class="dropdown-menu text-small" aria-labelledby="dropdownMenu2">
				    <li><a href="/" class="dropdown-item" type="button">한국어</a></li>
				    <li><a href="#" class="dropdown-item" type="button">日本語</a></li>
				  </ul>
				</div>
		    </div>
	      </div> 
	    </div> 
  </header>
  <div class="h-box" style="height:73px;width:100%;background:none;"></div>