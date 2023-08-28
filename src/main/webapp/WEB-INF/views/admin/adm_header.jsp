<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MS Shop - Admin</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="/css/styles.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="/js/datatables-simple-demo.js"></script>
</head>
<body>
	<header>
	  <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	    <!-- Navbar Brand-->
	    <a class="navbar-brand ps-3" href="/admin/admin">MS Shop</a>
	    
	    <!-- Sidebar Toggle-->
	    <!-- <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button> -->
	    
	    <!-- nav_Search-->
	    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
	        <div class="input-group">
	            <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
	            <button class="btn btn-light" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
	        </div>
	    </form>
	    
	    <!-- nav_user-icon-->
	    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
	        <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
	            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
	                <li><a class="dropdown-item" href="/">쇼핑몰가기</a></li>
	                <li><hr class="dropdown-divider" /></li>
	                <li><a class="dropdown-item" href="/logout">Logout</a></li>
	            </ul>
	        </li>
	    </ul>
	  </nav>
	</header>
	
	<div id="layoutSidenav">
		<!-- 왼쪽 사이드 바 -->
    	<div id="layoutSidenav_nav">
        	<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
	            <div class="sb-sidenav-menu">
	                <div class="sb-sidenav-menu">
	                 <div class="nav">
	                    <!-- <div class="sb-sidenav-menu-heading">카테고리</div> -->
	                    <a class="nav-link" href="/admin/company"><div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>회사정보</a>
	                    <a class="nav-link collapsed" href="#!" data-bs-toggle="collapse" data-bs-target="#collapseMembers" aria-expanded="false" aria-controls="collapseMembers">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>회원
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapseMembers" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="#!">회원관리</a>
	                            <a class="nav-link" href="#!">회원 등급 설정</a>
	                            <a class="nav-link" href="#!">회원 가입 약관</a>
	                        </nav>
	                    </div>
	                    <a class="nav-link collapsed" href="/board/notice" data-bs-toggle="collapse" data-bs-target="#collapseBoards" aria-expanded="false" aria-controls="collapseBoards">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>게시판
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapseBoards" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="/admin/board/notice">공지사항</a>
	                            <a class="nav-link" href="/admin/board/qna">Q&A 관리</a>
	                            <a class="nav-link" href="#!">1:1 문의 설정</a>
	                        </nav>
	                    </div>
	                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseProducts" aria-expanded="false" aria-controls="collapseProducts">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>상품
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapseProducts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="/admin/product/list">전체 상품관리</a>
	                            <a class="nav-link" href="/admin/product/new">상품 등록</a>
	                            <a class="nav-link" href="#!">상품 재고 관리</a>
	                        </nav>
	                    </div>
	                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseOrders" aria-expanded="false" aria-controls="collapseOrders">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>주문
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapseOrders" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="/admin/order/list">주문 내역</a>
	                            <a class="nav-link" href="#!">주문서 일괄출력</a>
	                            <a class="nav-link" href="#!">개인 결제 관리</a>
	                        </nav>
	                    </div>
	                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseReports" aria-expanded="false" aria-controls="collapseReports">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>리포트
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapseReports" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="#!">매출현황</a>
	                            <a class="nav-link" href="#!">매출 보고서</a>
	                            <a class="nav-link" href="#!">원가/손익 보고서</a>
	                        </nav>
	                    </div>
	                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseTotals" aria-expanded="false" aria-controls="collapseTotals">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>쇼핑 통계
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapseTotals" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="#!">접속자 집계</a>
	                            <a class="nav-link" href="#!">접속자 검색</a>
	                        </nav>
	                    </div>
	                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePromotions" aria-expanded="false" aria-controls="collapsePromotions">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>프로모션
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapsePromotions" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="#!">매출현황</a>
	                            <a class="nav-link" href="#!">매출 보고서</a>
	                            <a class="nav-link" href="#!">원가/손익 보고서</a>
	                        </nav>
	                    </div>
	                    <a class="nav-link" href="#!"><div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>고객 요청</a>
	                    <!-- <a class="nav-link collapsed" href="#!" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
	                        <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>1차 메뉴-2
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
	                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
	                                2차 메뉴-1
	                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                            </a>
	                            <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
	                                <nav class="sb-sidenav-menu-nested nav">
	                                    <a class="nav-link" href="login.html">Login</a>
	                                    <a class="nav-link" href="register.html">Register</a>
	                                    <a class="nav-link" href="password.html">Forgot Password</a>
	                                </nav>
	                            </div>
	                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
	                            	게시판<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                            </a>
	                            <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
	                                <nav class="sb-sidenav-menu-nested nav">
	                                    <a class="nav-link" href="#!">공지사항</a>
	                                    <a class="nav-link" href="#!">자주하는 질문</a>
	                                    <a class="nav-link" href="#!">Q&A</a>
	                                </nav>
	                            </div>
	                        </nav>
	                    </div>
	                    <div class="sb-sidenav-menu-heading">카텍고리2</div>
	                    <a class="nav-link" href="#!"><div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>게시판</a>
	                   	<a class="nav-link" href="#!"><div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>카테2 1차메뉴</a>
	                </div> -->
	            </div> 
	            <!-- <div class="sb-sidenav-footer"><div class="small">Logged in as:</div>admin 님</div> -->
            </nav>
        </div>
        
        <!-- 대쉬보드 영역 -->
        <div id="layoutSidenav_content">
</body>
</html>