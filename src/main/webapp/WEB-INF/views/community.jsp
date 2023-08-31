<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<title>MS Shop - Admin</title>
<!-- css 링크 연결 -->
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="/css/styles.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- script 링크 연결 -->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="/js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="d-flex vw-100 vh-100 text-center flex-column justify-content-between">
	<!-- header 시작 -->
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	
	<section id="sub-bnr">
		<div class="container wrap">
			<h5>Community</h5>
		</div>
	</section>
	<!-- index 메인 시작 -->
	<section id="board-all">
    	<div class="container wrap">
			<div  id="row-1" class="container">
			  <div class="tab">
			    <ul class="title">
			      <li><a href="#" class="show" id="tab-1">탭메뉴</a></li>
			      <li><a href="#" id="tab-2">탭메뉴</a></li>
			      <li><a href="#" id="tab-3">탭메뉴</a></li>
			    </ul>
			    <ul class="panel">
			      <li id="content-1">탭 내용1</li>
			      <li id="content-2"><div class="accordion accordion-flush" id="accordionFlushExample">
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
			      <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
			    </div>
			  </div>
			  <div class="accordion-item">
			    <h2 class="accordion-header" id="flush-headingThree">
			      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
			        Accordion Item #3
			      </button>
			    </h2>
			    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
			      <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
			    </div>
			  </div>
			</div></li>
			      <li id="content-3">탭 내용3</li> 
			    </ul>
			  </div>
			</div>
			<!--  -->
		</div>
    </section>
	<!-- footer 시작 -->
	<jsp:include page="/WEB-INF/views/footer.jsp" />
</body>
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
</html>