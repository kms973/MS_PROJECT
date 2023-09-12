<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- adm_header 부분  -->
<jsp:include page="/WEB-INF/views/admin/adm_header.jsp"></jsp:include>
<form id="UDF" action="write" method="post">
    <section id="board-write">
        <div class="container-fluid px-4">
            <h1 class="mt-4">게시판</h1>
            <ol class="breadcrumb mb-4"><li class="breadcrumb-item active">글 작성</li></ol>
            
            <div class="wrap-write">
	            <div class="d-flex justify-content-between align-items-center">
	            	<select class="form-select form-select-sm w-auto" aria-label="Default select example" name="selecter" value="${boardList.bcontent}">
					  <option value="1">공지사항</option>
					  <option value="2">Q&A</option>
					  <option value="3">Review</option>
					</select>
					<div>
				  		<input class="form-control" type="text" placeholder="이름" aria-label="default input example" name="bname" value="MS관리자">
					</div>
	            </div>
	            
				<div class="my-2"><input class="form-control" type="text" placeholder="제목" aria-label="default input example" name = "btitle"></div>
				
				<!-- 내용 부분_에디터 썸머리노트 부분 -->
				<textarea id="summernote" name = "bcontent">${boardList.bcontent}</textarea>

				<div class="input-group mt-3 mb-2">
					<span class="input-group-prepend">
						<div class="input-group-text bg-transparent border-end-0"><i class="bi bi-link-45deg"></i></div>
					</span>
					<input type="url" id="url" class="form-control" type="url">	
				</div>	
		
				<div class="mb-4">
					<div class="input-group">
						<span class="input-group-prepend">
							<div class="input-group-text bg-transparent border-end-0"><i class="bi bi-folder"></i></div>
						</span>		
						<input class="form-control" type="file" id="formFileMultiple" multiple>
					</div>
        		</div>
					
				<button type="submit" class="btn btn-outline-secondary">작성 완료</button>
				<button type="button" class="btn btn-secondary btn" onclick="location.href='board'">취소</button>
        	
        	</div>
        </div>
    </section>   
</form>
<!-- adm_footer 부분  -->
<jsp:include page="/WEB-INF/views/admin/adm_footer.jsp"></jsp:include>

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
	callbacks: {
		onImageUpload : function(files){
			uploadSummernoteImageFile(files[0],this);
		}
	} 
});

function uploadSummernoteImageFile(file,editor){
	data = new FormData();
	data.append("file",file);
	$.ajax({ 
		data:data,
		type:"POST",
		url:"/uploadSummernoteImageFile",
		dataType:"JSON",
		contentType:false,
		processData:false,
		success:function(data){ 
			$(editor).summernote("insertImage",data.url);
			$("#thumbnailPath").append("<option value="+data.url+">"+data.originName+"</option>"); 
			}
	});
}
</script>
