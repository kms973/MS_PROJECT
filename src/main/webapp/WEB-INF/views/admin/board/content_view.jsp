<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">

<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="/js/datatables-simple-demo.js"></script>

<script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"
integrity="sha256-5slxYrL5Ct3mhMAp/dgnb5JSnTYMtkr4dHby34N10qw=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/lang/summernote-ko-KR.min.js"
integrity="sha256-y2bkXLA0VKwUx5hwbBKnaboRThcu7YOFyuYarJbCnoQ=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css"
integrity="sha256-IKhQVXDfwbVELwiR0ke6dX+pJt0RSmWky3WB2pNx9Hg=" crossorigin="anonymous">
<script src="/js/summernote.js"></script>
</head>
<body>
<body class="sb-nav-fixed">
<!-- adm_header 부분  -->
<jsp:include page="/WEB-INF/views/admin/adm_header.jsp"></jsp:include>
	
<section id="board-write">
  <table width="700" cellpadding="0" cellspacing="0" border="1">
      <form id="updateForm" action="modify" method="post">
         <input id="input_bid" type="hidden" name="bid" value="${content_view.bid}">
         <tr>
            <td> 번호 </td>
            <td> ${content_view.bid} </td>
         </tr>
         <tr>
            <td> 이름 </td>
            <td> <input id="input_bname" type="text" name="bname" value="${content_view.bname}"></td>
         </tr>
         <tr>
            <td> 제목 </td>
            <td> <input id="input_btitle" type="text" name="btitle" value="${content_view.btitle}"></td>
         </tr>
         <tr>
            <td> 내용 </td>
            <td> <textarea id="input_bcontent" rows="10" name="bcontent" >${content_view.bcontent}</textarea></td>
         </tr>
         <tr >
            <td colspan="2">
            	<input type="submit" value="수정">
            	<a href="board">목록보기</a>
            	<a href="delete?bid=${content_view.bid}">삭제</a>
           	</td>
         </tr>
      </form>
   </table>
</section>   
    <!-- adm_footer 부분  -->
	<jsp:include page="/WEB-INF/views/admin/adm_footer.jsp"></jsp:include>
</body>
<script>
$('#summernote').summernote({
  placeholder: '내용을 입력하세요.',
  tabsize: 2,
  height: 400,
  focus: true,
  lang: 'ko-KR',
  toolbar: [
	    ['fontname', ['fontname']],
	    ['fontsize', ['fontsize']],
	    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
	    ['color', ['forecolor','color']],
	    ['table', ['table']],
	    ['para', ['ul', 'ol', 'paragraph']],
	    ['height', ['height']],
	    ['insert',['picture','link','video']],
	    ['view', ['fullscreen', 'help']]
	  ],
	fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
	fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
	
	
	// ${content_view.bcontent} 값을 Summernote 에디터에 설정
	/* var content = '${content_view.bcontent}'; */
	/* $('#summernote').summernote('code', content); */
});
var node = document.createElement('div');
const attr = 'content_view.bcontent';
node.setAttribute('value',attr);
$('#summernote').summernote('insertNode', node);

$('#summernote').summernote('insertText','내용을 입력해주세요');
const range = $.summernote.range;
const rng = range.createFromSelection(node);
rng.select();

console.log(rng.select());

console.log($('.note-editable').innerHTML);
</script>
</html>