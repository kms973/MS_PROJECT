<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MS Shop - Admin</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="../../css/styles.css" rel="stylesheet" />
<link href="../../css/style.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="../../js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="../../js/datatables-simple-demo.js"></script>
</head>
<body>
<body class="sb-nav-fixed">
	<!-- adm_header 부분  -->
	<jsp:include page="/adm_header.jsp"></jsp:include>
	
	<div id="layoutSidenav">
		<!-- 왼쪽 사이드 바 -->
    	<div id="layoutSidenav_nav">
        	<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
	            <div class="sb-sidenav-menu">
	                 <div class="nav">
	                    <div class="sb-sidenav-menu-heading">메인</div>
	                    <a class="nav-link" href="company"><div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>회사정보</a>
	                    <div class="sb-sidenav-menu-heading">카테고리</div>
	                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>회원
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="#!">회원관리</a>
	                            <a class="nav-link" href="#!">회원 등급 설정</a>
	                            <a class="nav-link" href="#!">회원 가입 약관</a>
	                        </nav>
	                    </div>
	                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>게시판
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="board/notice">공지사항</a>
	                            <a class="nav-link" href="board/qna">FAQ 관리</a>
	                            <a class="nav-link" href="#!">1:1 문의 설정</a>
	                            <a class="nav-link" href="board/review">리뷰 관리</a>
	                        </nav>
	                    </div>
	                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>상품
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="product/product_list">전체 상품관리</a>
	                            <a class="nav-link" href="product/product_new">상품 등록</a>
	                            <a class="nav-link" href="#!">상품 재고 관리</a>
	                        </nav>
	                    </div>
	                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>주문
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="order/order_list">주문 내역</a>
	                            <a class="nav-link" href="#!">주문서 일괄출력</a>
	                            <a class="nav-link" href="#!">개인 결제 관리</a>
	                        </nav>
	                    </div>
	                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>리포트
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="#!">매출현황</a>
	                            <a class="nav-link" href="#!">매출 보고서</a>
		                        <nav class="sb-sidenav-menu-nested nav">
		                            <a class="nav-link" href="#!">일별 입금 현황표</a>
		                            <a class="nav-link" href="#!">월별 입금 현황표</a>
		                            <a class="nav-link" href="#!">년별 입금 현황표</a>
		                            <a class="nav-link" href="#!">상품별 매출표</a>
		                        </nav>
	                            <a class="nav-link" href="#!">원가/손익 보고서</a>
	                            <a class="nav-link" href="#!">상품</a>
	                        </nav>
	                    </div>
	                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>쇼핑 통계
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="#!">접속자 집계</a>
	                            <a class="nav-link" href="#!">접속자 검색</a>
	                        </nav>
	                    </div>
	                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>프로모션
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="#!">매출현황</a>
	                            <a class="nav-link" href="#!">매출 보고서</a>
	                            <a class="nav-link" href="#!">원가/손익 보고서</a>
	                        </nav>
	                    </div>
	                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
	                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>고객 요청
	                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                    </a>
	                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                        <nav class="sb-sidenav-menu-nested nav">
	                            <a class="nav-link" href="#!">대기중인 고객요청</a>
		                        <nav class="sb-sidenav-menu-nested nav">
		                            <a class="nav-link" href="#!">환불</a>
		                            <a class="nav-link" href="#!">교환</a>
		                            <a class="nav-link" href="#!">반품</a>
		                            <a class="nav-link" href="#!">입금확인</a>
	                        	</nav>
	                        </nav>
	                    </div>
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
	            <main>
	                <div class="container-fluid px-4">
	                    <h1 class="mt-4">Q&A 관리</h1>
	                    <ol class="breadcrumb mb-4">
	                        <li class="breadcrumb-item active">Q&A 관리</li>
	                    </ol>
	                </div>
	            </main>
	        </div>
    </div>
	
	<footer class="py-4 bg-light mt-auto">
	  <div class="container-fluid px-4">
	    <div class="d-flex align-items-center justify-content-between small">
	      <div class="text-muted">Copyright &copy; MS-Shop 2023</div>
	      <div>
	        <a href="#">개인정보처리방침</a>
	        &middot;
	        <a href="#">회원가입약관</a>
	        &middot;
	        <a href="#">서비스이용약관</a>
	      </div>
	    </div>
	  </div>
	</footer>
</body>
</html>