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
		      	<div class="accordion" id="faqAccordion">
			        <!-- FAQ 아이템 1 -->
			        <div class="accordion-item">
			            <h2 class="accordion-header" id="heading1">
			                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse1">
			                    질문 1: 이것은 무엇인가요?
			                </button>
			            </h2>
			            <div id="collapse1" class="accordion-collapse collapse" aria-labelledby="heading1" data-bs-parent="#faqAccordion">
			                <div class="accordion-body">
			                    답변: 이것은 부트스트랩을 사용한 FAQ 페이지 예제입니다.
			                </div>
			            </div>
			        </div>
			
			        <!-- FAQ 아이템 2 -->
			        <div class="accordion-item">
			            <h2 class="accordion-header" id="heading2">
			                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse2">
			                    질문 2: 어떻게 이용하나요?
			                </button>
			            </h2>
			            <div id="collapse2" class="accordion-collapse collapse" aria-labelledby="heading2" data-bs-parent="#faqAccordion">
			                <div class="accordion-body">
			                    답변: 이용하려면 부트스트랩과 HTML, CSS, JavaScript를 사용하세요.
			                </div>
			            </div>
			        </div>
			
			        <!-- 추가 FAQ 아이템들을 위한 템플릿 -->
			        <!-- <div class="accordion-item">
			            <h2 class="accordion-header" id="headingX">
			                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseX">
			                    질문 X: 여기에 질문을 입력하세요.
			                </button>
			            </h2>
			            <div id="collapseX" class="accordion-collapse collapse" aria-labelledby="headingX" data-bs-parent="#faqAccordion">
			                <div class="accordion-body">
			                    답변: 여기에 답변을 입력하세요.
			                </div>
			            </div>
			        </div> -->
			
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