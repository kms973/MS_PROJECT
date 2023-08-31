<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<title>MS Shop</title>
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
<body>
	<!-- header 시작 -->
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	
	<section id="sub-bnr">
		<div class="container wrap"><h5>Shop</h5></div>
	</section>
	
	<div class="container wrap">
		<div class="selec-box d-flex align-items-center justify-content-end">
			<select class="form-select" aria-label="Default select example" style="width:10%">
			  <option value="1" selected>추천순</option>
			  <option value="2">신상순</option>
			  <option value="3">판매순</option>
			  <option value="4">리뷰순</option>
			</select>
		</div>
	</div>
	

	<!-- index 메인 시작 -->
	<section id="board-all">
    	<div class="container wrap px-4 px-lg-5 mt-5">
    		<div class="row mt-n5">
	            <div class="col-md-6 col-lg-4 mt-5 wow fadeInUp" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
               		<a href="detail" class="text-center">
		                <div class="blog-grid">
		                    <div class="blog-grid-img position-relative"><img alt="img" src="https://www.bootdey.com/image/480x480/00FFFF/000000"></div>
		                    <div class="blog-grid-text p-4">
		                        <h3 class="h5 mb-3">제품명</h3>
		                        <p class="display-30">\580,000</p>
		                    </div>
		                </div>
                   	</a>
	            </div>
	            <div class="col-md-6 col-lg-4 mt-5 wow fadeInUp" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
               		<a href="#!" class="text-center">
		                <div class="blog-grid">
		                    <div class="blog-grid-img position-relative"><img alt="img" src="https://www.bootdey.com/image/480x480/00FFFF/000000"></div>
		                    <div class="blog-grid-text p-4">
		                        <h3 class="h5 mb-3">제품명</h3>
		                        <p class="display-30">\580,000</p>
		                    </div>
		                </div>
                   	</a>
	            </div>
	            <div class="col-md-6 col-lg-4 mt-5 wow fadeInUp" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
               		<a href="#!" class="text-center">
	                	<div class="blog-grid">
		                    <div class="blog-grid-img position-relative"><img alt="img" src="https://www.bootdey.com/image/480x480/00FFFF/000000"></div>
		                    <div class="blog-grid-text p-4">
		                        <h3 class="h5 mb-3">제품명</h3>
		                        <p class="display-30">\580,000</p>
		                    </div>
	                	</div>
                   	</a>
	            </div>
            </div>
            <!-- paging -->
            <div class="row mt-6 wow fadeInUp page-box" data-wow-delay=".6s" style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInUp;">
                <div class="col-12">
                    <div class="pagination text-small text-uppercase text-extra-dark-gray">
                        <ul>
                            <li><a href="#!"><i class="fas fa-long-arrow-alt-left me-1 d-none d-sm-inline-block"></i> Prev</a></li>
                            <li class="active"><a href="#!">1</a></li>
                            <li><a href="#!">2</a></li>
                            <li><a href="#!">3</a></li>
                            <li><a href="#!">Next <i class="fas fa-long-arrow-alt-right ms-1 d-none d-sm-inline-block"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
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