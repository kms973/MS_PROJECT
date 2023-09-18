<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- 메인 시작 -->
<section id="community" class="board-all container wrap">
	<div id="sub-bnr"><h5>Commuunity</h5></div>
	<!-- TAB 메뉴 -->
   	<div class="container wrap px-0">
		<div  id="row-1" class="container px-0">
		  <div class="tab">
			<ul class="title nav justify-content-center">
			  <li class="nav-item"><a id="tab-1" class="nav-link show" aria-current="page" href="#">공지사항</a></li>
			  <li class="nav-item "><a id="tab-2" class="nav-link" href="#">자주묻는질문</a></li>
			  <li class="nav-item"><a id="tab-3" class="nav-link" href="#">QNA</a></li>
			  <li class="nav-item"><a id="tab-4" class="nav-link" href="#">REVIEW</a></li>
			</ul>
		    <ul class="panel">
		      <li id="content-1">
			    <table class="table table-hover notice-table">
					<thead>
						<tr>
							<th class="no-no table-no">번호</th>
			                <th class="no-tit table-tit">글 제목</th>
			                <th class="no-write table-write">작성자</th>
			                <th class="no-date table-date">작성일</th>
			                <sec:authorize access="hasRole('ROLE_ADMIN')">
			                <th class="option">옵션</th>
			                </sec:authorize>
						</tr>
					</thead>
					<tbody>
 		<c:forEach var="boardList_Notice" items="${boardList_Notice}">
			         <tr>
			           <td class="no-no table-no">${boardList_Notice.rnum}</td>
			           <td class="no-tit table-tit"><a href="content_view?bid=${boardList_Notice.bid}">${boardList_Notice.btitle}</a></td>
			           <td class="no-write table-write">${boardList_Notice.bname}</td>
			           <td class="no-date table-date"><fmt:formatDate value="${boardList_Notice.bdate}" pattern="yyyy-MM-dd" /></td>
			           <sec:authorize access="hasRole('ROLE_ADMIN')">
			              <td class="option">
			              	<a class="btn btn-sm btn-primary px-2" href="modify?bid=${boardList_Notice.bid}"><i class="fas fa-edit">상품수정</i></a>
			            	<a class="btn btn-sm btn-danger px-2" href="delete?bid=${boardList_Notice.bid}"><i class="fas fa-trash">삭제</i></a>
			              </td>
			           </sec:authorize>
			           </tr>
		             </c:forEach>
					</tbody>
				</table>
				
				


				<c:if test='${pageMaker.startPage < 1 }'>disabled</c:if>
				<a href="community${pageMaker.makeQuery(1) }"> « </a>
			   
			   <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
			   <a href="community${pageMaker.makeQuery(idx)}">${idx}</a>
			   </c:forEach>
			   
			<c:if test='${pageMaker.next }'>			</c:if>
			  <a href="community${pageMaker.makeQuery(pageMaker.endPage) }"> » </a>



				
<%-- 				<div aria-label="Page navigation example"></div>
				  <ul class="pagination justify-content-end"></ul>
				    <li class="page-item">
				      <c:if test="${pageMaker.prev}">
					      <a href="community${pageMaker.makeQuery(pageMaker.startPage - 1) }" class="page-link" href="#" tabindex="-1" aria-disabled="true">«</a>
					  </c:if>
				    </li> --%>
				    
<%-- 				    <li class="page-item">
					<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
			      	<c:out value="${pageMaker.cri.page == idx?'':''}" />
			      	<a href="board${pageMaker.makeQuery(idx)}" class="page-link">${idx}</a>
			   		</c:forEach>
			   		</li>
				    <li class="page-item">
				      <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<a href="board${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
					   </c:if> --%>
<!-- 				    </li>
				  </ul>
				</div>
		      </li> -->
		      <li id="content-2">
		      	<div class="accordion" id="faqAccordion">
			        <!-- FAQ 아이템 1 -->
			        <div class="accordion-item">
			            <h2 class="accordion-header" id="heading1">
			                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse1">
			                Q. 환불 규정이 궁금합니다.
			                </button>
			            </h2>
			            <div id="collapse1" class="accordion-collapse collapse" aria-labelledby="heading1" data-bs-parent="#faqAccordion">
			                <div class="accordion-body">
			                	구매하신 날로부터 영업일 기준 일주일 이내 구매 영수증을 지참하시어 방문하시면 환불이 가능합니다.<br>
			                	영수증 미지참 또는 시일이 경과할 경우 환불이 어렵기 때문에 참고 부탁드리겠습니다.
			                </div>
			            </div>
			        </div>
			
			        <!-- FAQ 아이템 2 -->
			        <div class="accordion-item">
			            <h2 class="accordion-header" id="heading2">
			                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse2">
			                   Q. 고객센터 운영시간이 어떻게 되나요?
			                </button>
			            </h2>
			            <div id="collapse2" class="accordion-collapse collapse" aria-labelledby="heading2" data-bs-parent="#faqAccordion">
			                <div class="accordion-body">
			                   	점심시간은 13:20 ~ 14:30 입니다.
								주말 휴무로 문의시 참고해주세요:)
			                </div>
			            </div>
			        </div>
			
			        <!-- 추가 FAQ 아이템들을 위한 템플릿 -->
			        <div class="accordion-item">
			            <h2 class="accordion-header" id="heading3">
			                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse3">
			                	Q.  주문을 취소하고 싶어요.
			                </button>
			            </h2>
			            <div id="collapse3" class="accordion-collapse collapse" aria-labelledby="heading3" data-bs-parent="#faqAccordion">
			                <div class="accordion-body">
		                   		Q&A "배송 전 변경/취소" 게시판 또는 고객센터 [070-7705-5595] 문의 접수 해주셔야 정상적인 처리가 가능합니다.<br><br>
								낮 10시 이전(출고 전) 요청 건은 최대한 처리해 드리고 있으나, 배송작업이 시작됐을 경우 처리가 불가할 수 있습니다.<br>
								-결제가 완료된 주문건은 재고가 할당되는 대로 실시간 출고가 진행되고 있습니다. 최대한 빠르게 수령하실 수 있기 위한 방침입니다.<br>
								-이미 출고된 상품 취소를 원하실 경우 상품을 받아보신 후 반품 신청해 주셔야 하며, 배송비는 고객님이 부담하시게 되는 점 양해 부탁드립니다.<br>
								-카드취소 후 카드사 전산처리 기간 최대 3-7일<br>
								-현금결제 후 취소 입금되는 시간 최대 1-3일<br>
								영업일 기준으로 처리 가능하며, 현금결제 경우에 초기 입금해주신 동일계좌로만 환불처리 가능합니다.
			                </div>
			            </div>
			        </div>
			    </div>
		      </li>
		      <li id="content-3">
			    <table class="table table-hover qna-table">
					<thead>
						<tr>
							<th class="qna-no table-no">번호</th>
			                <th class="qna-tit table-tit">글 제목</th>
			                <th class="qna-write table-write">작성자</th>
			                <th class="qna-date table-date">작성일</th>
			                <sec:authorize access="hasRole('ROLE_ADMIN')">
			                <th class="option">옵션</th>
			                </sec:authorize>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach var="boardList_Qna" items="${boardList_Qna}">
			         <tr>
			           <td class="no-no table-no">${boardList_Qna.rnum}</td>
			           <td class="no-tit table-tit"><a href="content_view?bid=${boardList_Qna.bid}">${boardList_Qna.btitle}</a></td>
			           <td class="no-write table-write">${boardList_Qna.bname}</td>
			           <td class="no-date table-date"><fmt:formatDate value="${boardList_Qna.bdate}" pattern="yyyy-MM-dd" /></td>
			           <sec:authorize access="hasRole('ROLE_ADMIN')">
			              <td class="option">
			              	<a class="btn btn-sm btn-primary px-2" href="modify?bid=${boardList_Qna.bid}"><i class="fas fa-edit">상품수정</i></a>
			            	<a class="btn btn-sm btn-danger px-2" href="delete?bid=${boardList_Qna.bid}"><i class="fas fa-trash">삭제</i></a>
			              </td>
			           </sec:authorize>
		           	</tr>
					</c:forEach>


					</tbody>
				</table>
				
							<c:if test="${pageMaker.prev}">
      <a href="community${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
   </c:if>
   
   <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
      <a href="community${pageMaker.makeQuery(idx)}">${idx}</a>
   </c:forEach>
   
   <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
            <a href="community${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
   </c:if>  
				
				
				<sec:authorize access="isAuthenticated()">
                <div class="d-flex justify-content-end px-0">
                  	<a href="write_view" class="btn btn-primary ">글쓰기</a>
                </div>
                </sec:authorize>
		      </li>
		      <li id="content-4">
			    <table class="table table-hover review-table">
					<thead>
						<tr>
							<th class="re-no table-no">번호</th>
			                <th class="re-tit table-tit">글 제목</th>
			                <th class="re-write table-write">작성자</th>
			                <th class="re-date table-date">작성일</th>
			                <sec:authorize access="hasRole('ROLE_ADMIN')">
			                <th class="option">옵션</th>
			                </sec:authorize>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="boardList_Review" items="${boardList_Review}">
				        <tr>
				           <td class="no-no table-no">${boardList_Review.rnum}</td>
				           <td class="no-tit table-tit"><a href="content_view?bid=${boardList_Review.bid}">${boardList_Review.btitle}</a></td>
				           <td class="no-write table-write">${boardList_Review.bname}</td>
				           <td class="no-date table-date"><fmt:formatDate value="${boardList_Review.bdate}" pattern="yyyy-MM-dd" /></td>
				           <sec:authorize access="hasRole('ROLE_ADMIN')">
				              <td class="option">
				              	<a class="btn btn-sm btn-primary px-2" href="modify?bid=${boardList_Review.bid}"><i class="fas fa-edit">상품수정</i></a>
				            	<a class="btn btn-sm btn-danger px-2" href="delete?bid=${boardList_Review.bid}"><i class="fas fa-trash">삭제</i></a>
				              </td>
				           </sec:authorize>
			           	</tr>
						</c:forEach>
					</tbody>
				</table>
				
			<c:if test="${pageMaker.prev}">
      <a href="community${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
   </c:if>
   
   <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
      <a href="community${pageMaker.makeQuery(idx)}">${idx}</a>
   </c:forEach>
   
   <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
            <a href="community${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
   </c:if>  
				
				<sec:authorize access="isAuthenticated()">
                <div class="d-flex justify-content-end px-0">
                  	<a href="write_view" class="btn btn-primary ">글쓰기</a>
                </div>
                </sec:authorize>
		      </li>
		    </ul>
		  </div>
		</div>
	</div>
 </section>
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />
<script>
$(document).ready(function() {    
	var accordion_tab = $('.accordion p'), accordion_content = $('.accordion div');
	//accordion p tag click
	accordion_tab.on('click', function(e){
		//tab link 비활성화
		e.preventDefault();
		//활성화 된 class 제거
		accordion_tab.removeClass('active');
		//accordion div 내용 숨기기
		accordion_content.slideUp('normal');
		//tab이 숨겨져 있으면 활성화 시키고 div 내용 펼치기
		if($(this).next().is(':hidden') == true) {
			$(this).addClass('active');
			$(this).next().slideDown('normal');
		} 			  
	});
});
</script>
<script>
$('.tab').each(function(i) {
    var oTab = $(this);
    var tabIndex = $(this).find('.show').attr('id').match(/\d+$/);

    $(this).find('.panel').find('#content-' + tabIndex[0]).show();

    $(this).find('.title li a').click(function() {
      /*선택색인*/

      var tabIndex = $(this).attr('id').match(/\d+$/);
      /*타이틀*/
      oTab.find('.title li a').removeClass('show');
      $(this).addClass('show');

      /*패널*/
      oTab.find('.panel li').hide();
      oTab.find('.panel').find('#content-' + tabIndex[0]).show();

      return false;
    });

});
</script>