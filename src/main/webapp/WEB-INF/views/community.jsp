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
		      		<div id="Accordion_wrap">
		      			<div class="que d-flex justify-contents-between">
		      				<span>This is first question.</span>
		      				<div class="arrow-wrap">
				         		<span class="arrow-top"><i class="xi-angle-up"></i></span>
				        		<span class="arrow-bottom"><i class="xi-angle-down"></i></span>
				       		</div>
				     	</div>
				     	<div class="anw">
					     	<span>This is first answer.</span>
				     	</div>
					</div>
					<div id="Accordion_wrap">
		      			<div class="que d-flex justify-contents-between">
		      				<span>This is first question.</span>
		      				<div class="arrow-wrap">
				         		<span class="arrow-top"><i class="xi-angle-up"></i></span>
				        		<span class="arrow-bottom"><i class="xi-angle-down"></i></span>
				       		</div>
				     	</div>
				     	<div class="anw">
					     	<span>This is first answer.</span>
				     	</div>
					</div>
					<div id="Accordion_wrap">
		      			<div class="que d-flex justify-contents-between">
		      				<span>This is first question.</span>
		      				<div class="arrow-wrap">
				         		<span class="arrow-top"><i class="xi-angle-up"></i></span>
				        		<span class="arrow-bottom"><i class="xi-angle-down"></i></span>
				       		</div>
				     	</div>
				     	<div class="anw">
					     	<span>This is first answer.</span>
				     	</div>
					</div>
					<div id="Accordion_wrap">
		      			<div class="que d-flex justify-contents-between">
		      				<span>This is first question.</span>
		      				<div class="arrow-wrap">
				         		<span class="arrow-top"><i class="xi-angle-up"></i></span>
				        		<span class="arrow-bottom"><i class="xi-angle-down"></i></span>
				       		</div>
				     	</div>
				     	<div class="anw">
					     	<span>This is first answer.</span>
				     	</div>
					</div>
					<div id="Accordion_wrap">
		      			<div class="que d-flex justify-contents-between">
		      				<span>This is first question.</span>
		      				<div class="arrow-wrap">
				         		<span class="arrow-top"><i class="xi-angle-up"></i></span>
				        		<span class="arrow-bottom"><i class="xi-angle-down"></i></span>
				       		</div>
				     	</div>
				     	<div class="anw">
					     	<span>This is first answer.</span>
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
$(".que").click(function() {
	$(this).next(".anw").stop().slideToggle(300);
	$(this).toggleClass('on').siblings().removeClass('on');
	$(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
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