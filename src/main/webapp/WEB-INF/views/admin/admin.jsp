<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
                            <a class="small text-dark stretched-link" href="/admin/order/list">주문</a>
                            <div class="small text-dark"><i class="fas fa-angle-right"></i></div>
                        </div>
                        <div class="card-body d-inline-block text-truncate" style="color: #999; font-size: .825rem;">오늘 주문이 없어요</div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-liehgt text-black mb-4">
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-dark stretched-link" href="/admin/customer/mgr">회원</a>
                            <div class="small text-dark"><i class="fas fa-angle-right"></i></div>
                        </div>
                        <div class="card-body d-inline-block text-truncate" style="color: #999; font-size: .825rem;">새로가입한 회원이 없습니다.</div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-liehgt text-black mb-4">
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-dark stretched-link" href="#">고객요청</a>
                            <div class="small text-dark"><i class="fas fa-angle-right"></i></div>
                        </div>
                        <div class="card-body d-inline-block text-truncate" style="color: #999; font-size: .825rem;">최근 환불,반품,교환요청이 없습니다.</div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-liehgt text-black mb-4">
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-dark stretched-link" href="#">배송상황</a>
                            <div class="small text-dark"><i class="fas fa-angle-right"></i></div>
                        </div>
                        <div class="card-body d-inline-block text-truncate" style="color: #999; font-size: .825rem;">배송 중이 내용이 없습니다.</div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-6">
                    <div class="card mb-4">
                        <div class="card-header"><i class="fas fa-chart-area me-1"></i>매출현황</div>
                        <div class="card-body d-flex align-items-center justify-content-center w-100" style="min-height:9.5rem">
                        <p class="text-center color-gray">현재 매출이 없습니다.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="card mb-4">
                        <div class="card-header"><i class="fas fa-solid fa-list me-1"></i>게시판</div>
                        <div class="card-body d-flex aling-items-center w-100" style="min-height:9.5rem">
		                    <ul class="ps-0 mb-0 admLastList w-100">
		                    <c:forEach begin="0" end="2" var="boardList" items="${boardList}">
		                    	<li class="d-flex justify-content-between border-bottom p-2">
		                    		<div class="bcontent"><a href="/content_view?bid=${boardList.bid}" class="h-inheirt">${boardList.btitle}</a></div>
		                    		<div class="bid">${boardList.bname}</div>
		                    	</li>
	                    	</c:forEach>
		                    </ul>
	                    </div>
                    </div>
                </div>
            </div>
            <div class="card mb-4">
                <div class="card-header"><i class="fas fa-credit-card me-1"></i>주문 내역</div>
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

<script>
$('ul.admLastList li:first-child').addClass('border-top');


</script>

