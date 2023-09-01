<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- 메인 시작 -->
<section id="community" class="board-all container wrap">
	<div id="sub-bnr"><h5>Commuunity</h5></div>
	<!-- TAB 메뉴 -->
   	<div class="container wrap">
		<div  id="row-1" class="container">
		  <div class="tab">
			<ul class="title nav justify-content-center">
			  <li class="nav-item">
			    <a id="tab-1" class="nav-link show" aria-current="page" href="#">공지사항</a>
			  </li>
			  <li class="nav-item ">
			    <a id="tab-2" class="nav-link" href="#">자주묻는질문</a>
			  </li>
			  <li class="nav-item">
			    <a id="tab-3" class="nav-link" href="#">QNA</a>
			  </li>
			  <li class="nav-item">
			    <a id="tab-4" class="nav-link" href="#">REVIEW</a>
			  </li>
			</ul>
		    <ul class="panel">
		      <li id="content-1">
		      	공지사항 내용입니다.
		      </li>
		      <li id="content-2">
		      	<div class="accordion accordion-flush" id="accordionFlushExample">
	  			  <div class="accordion-item">
				    <h2 class="accordion-header" id="flush-headingOne">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
				        Q. 환불관련 규정입니다.
				      </button>
				    </h2>
				    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">구매하신 날로부터 영업일 기준 일주일 이내 구매 영수증을 지참하시어 방문하시면 환불이 가능합니다.<br>영수증 미지참 또는 시일이 경과할 경우 환불이 어렵기 때문에 참고 부탁드리겠습니다.</div>
				    </div>
				  </div>
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="flush-headingTwo">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        Q. 배송을 얼마나 걸리나요?
				      </button>
				    </h2>
				    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">배송은 구매일 기준으로 3-5일 소요됩니다.<br>(단, 주말을 포함하지 않고 평일 기준입니다.)</div>
				    </div>
				  </div>
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="flush-headingThree">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
				        Q. 세번째 질문 입니다.
				      </button>
				    </h2>
				    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">세번째 질문의 대한 답변입니다. </div>
				    </div>
				  </div>
				</div>
		      </li>
		      <li id="content-3">탭 내용3</li> 
		    </ul>
		  </div>
		</div>
		<!--  -->
	</div>
 </section>
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />
<script>
const dropdownElementList = document.querySelectorAll('.dropdown-toggle')
const dropdownList = [...dropdownElementList].map(dropdownToggleEl => new bootstrap.Dropdown(dropdownToggleEl))
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