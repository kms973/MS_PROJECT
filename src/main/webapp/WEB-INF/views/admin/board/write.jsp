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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css" rel="stylesheet">
<link href="/css/styles.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />

<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="/js/datatables-simple-demo.js"></script>
<script src="/js/scripts.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/lang/summernote-ko-KR.min.js"></script>
<script src="/js/summernote.js"></script>
</head>
<body>
<body class="sb-nav-fixed">
<!-- adm_header 부분  -->
<jsp:include page="/WEB-INF/views/admin/adm_header.jsp"></jsp:include>
	
<section id="board-write">
	<div class="container-fluid px-4">
	    <h1 class="mt-4">글 작성</h1>
	    <ol class="breadcrumb mb-4"><li class="breadcrumb-item active"></li></ol>
	    
        <div class="wrap-write"><form id="updateForm" action="write" method="post">
        	<!-- 카테고리 선택 -->
	        <select class="form-select form-select-sm w-auto mt-2" aria-label="Default select example" value="${boardList.bcontent}">
			  <option value="1">공지사항</option>
			  <option value="2">Q&A</option>
			  <option value="3">Review</option>
			</select>
            
			<div class="my-2"><input class="form-control" id="input_btitle" name="btitle" type="text" placeholder="제목" aria-label="default input example" value="${content_view.btitle}"></div>    
			<textarea id="summernote" name = "bcontent">${boardList.bcontent}</textarea>
						
			<div class="input-group my-3">
				<span class="input-group-prepend">
					<div class="input-group-text bg-transparent border-right-0"><i class="bi bi-link-45deg"></i></div>
				</span>
				<input type="url" id="url" class="form-control" type="url">	
			</div>
		
			<div class="mb-3">
				<div class="input-group">
					<span class="input-group-prepend">
						<div class="input-group-text bg-transparent border-right-0"><i class="bi bi-folder"></i></div>
					</span>		
					<input class="form-control" type="file" id="formFileMultiple" multiple>
				</div>
	        </div>
	        
			<div class="d-flex justify-content-end w-100 mb-5 mt-3">
				<input type="submit" value="작성 완료" class="btn btn-outline-secondary">
				<a type="button" class="btn btn-secondary btn ms-2" href="/admin/board">취소</a>
			</div>
	</form>
	</div>
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