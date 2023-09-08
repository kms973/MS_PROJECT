<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- adm_header 부분  -->
<jsp:include page="/WEB-INF/views/admin/adm_header.jsp"></jsp:include>
	
<main>
    <div class="container-fluid px-4">
        <h1 class="mt-4">주문내역</h1>
        <ol class="breadcrumb mb-4"><li class=""></li></ol>
		
		<div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-credit-card me-1"></i>주문내역</div>
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
                           <tr>
                             <td>신짱구</td>
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
                           <tr>
                             <td>신짱구</td>
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
                           <tr>
                             <td>신짱구</td>
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
                           <tr>
                             <td>신짱구</td>
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
