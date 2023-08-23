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
<body class="sb-nav-fixed">
	<!-- adm_header 부분  -->
	<jsp:include page="/WEB-INF/views/admin/adm_header.jsp"></jsp:include>

	<!-- 메인보드 영역 -->
   	<main>
        <div class="container-fluid px-4">
            <h1 class="mt-4"></h1>
            
            <div class="row">
            	<div class="col-xl-3 col-md-6">
                    <div class="card bg-liehgt text-black mb-4">
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-dark stretched-link" href="#">주문</a>
                            <div class="small text-dark"><i class="fas fa-angle-right"></i></div>
                        </div>
                        <div class="card-body" style="color: #999; font-size: .825rem;">오늘 주문이 없어요</div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-liehgt text-black mb-4">
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-dark stretched-link" href="#">회원</a>
                            <div class="small text-dark"><i class="fas fa-angle-right"></i></div>
                        </div>
                        <div class="card-body" style="color: #999; font-size: .825rem;">새로가입한 회원이 없습니다.</div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-liehgt text-black mb-4">
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-dark stretched-link" href="#">고객요청</a>
                            <div class="small text-dark"><i class="fas fa-angle-right"></i></div>
                        </div>
                        <div class="card-body" style="color: #999; font-size: .825rem;">최근 환불,반품,교환요청이 없습니다.</div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-liehgt text-black mb-4">
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-dark stretched-link" href="#">배송상황</a>
                            <div class="small text-dark"><i class="fas fa-angle-right"></i></div>
                        </div>
                        <div class="card-body" style="color: #999; font-size: .825rem;">배송 중이 내용이 없습니다.</div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-6">
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-chart-area me-1"></i>매출현황</div>
                        <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-chart-bar me-1"></i>게시판</div>
                        <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                    </div>
                </div>
            </div>
            <div class="card mb-4">
                <div class="card-header"><i class="fas fa-table me-1"></i>주문 내역</div>
                <div class="card-body">
                    <table id="datatablesSimple">
                        <thead>
                            <tr>
                              <th>고객 이름</th>
                              <th>주문 내역</th>
                              <th>옵션</th>
                              <th>개수</th>
                              <th>주문 날짜</th>
                              <th>금액</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                              <th>고객 이름</th>
                              <th>주문 내역</th>
                              <th>옵션</th>
                              <th>개수</th>
                              <th>주문 날짜</th>
                              <th>금액</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <tr>
                                <td>홍길동</td>
                                <td>아무 티셔츠</td>
                                <td>Black/L(100)</td>
                                <td>2</td>
                                <td>2023/08/25</td>
                                <td>\59,800</td>
                            </tr>
                            <tr>
                              <td>김철수</td>
                              <td>아무 티셔츠</td>
                              <td>Pink/S(90)</td>
                              <td>5</td>
                              <td>2023/08/20</td>
                              <td>\112,000</td>
                            </tr>
                            <tr>
                              <td>김영희</td>
                              <td>아무 티셔츠</td>
                              <td>Black/L(100)</td>
                              <td>2</td>
                              <td>2023/08/25</td>
                              <td>\59,800</td>
                            </tr>
                            <tr>
                              <td>하하</td>
                              <td>아무 티셔츠</td>
                              <td>Black/L(100)</td>
                              <td>2</td>
                              <td>2023/08/25</td>
                              <td>\59,800</td>
                            </tr>
                            <tr>
                              <td>신짱구</td>
                              <td>아무 티셔츠</td>
                              <td>Black/L(100)</td>
                              <td>2</td>
                              <td>2023/08/25</td>
                              <td>\59,800</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </main>

	<!-- adm_footer 부분  -->
	<jsp:include page="/WEB-INF/views/admin/adm_footer.jsp"></jsp:include>
	
</body>
</html>