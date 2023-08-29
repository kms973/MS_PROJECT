<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MS Shop - Admin</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="/WEB-INF/css/styles.css" rel="stylesheet" />
<link href="/WEB-INF/css/style.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="/WEB-INF/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="/WEB-INF/js/datatables-simple-demo.js"></script>
<style>
#top-link-block.affix-top {
    position: absolute; /* allows it to "slide" up into view */
    bottom: -82px;
    right: 10px; /* right: 15px; 오른쪽에 위치시킬때 */
}
#top-link-block.affix {
    position: fixed; /* keeps it on the bottom once in view */
    bottom: 18px;
    left: 10px;
}
</style>
</head>
<body class="sb-nav-fixed">
	<span id="top-link-block" class="hidden">
	    <a href="#top" class="well well-sm" onclick="$('html,body').animate({scrollTop:0},'slow');return false;">
	        <i class="glyphicon glyphicon-chevron-up"></i> Back to Top
	    </a>
	</span>
	<footer>
        <div class="wrap">
            <h1>MS Shop</h1>
            <ul>
                <li>Registration: 123-12-31231</li>
                <li>Email: msshop@msshop.com</li>
                <li>CEO: 김민성</li>
                <li>Address: Yeongjung-ro 56, Yeongdeungpo-gu, Seoul, Republic of Korea</li>
            </ul>
        </div>
    </footer>
</body>
<script>
	if ( ($(window).height() + 100) < $(document).height() ) {
	    $('#top-link-block').removeClass('hidden').affix({
	        // how far to scroll down before link "slides" into view
	        offset: {top:100}
	    });
	}
</script>
</html>