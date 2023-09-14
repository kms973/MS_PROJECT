<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/lang/summernote-ko-KR.min.js"></script>
<script src="/js/summernote.js"></script>

<!-- adm_header 부분  -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<form id="UDF" action="write" method="post" class="needs-validation" novalidate>
<section id="board-write" class="board-write container wrap">
	<div id="sub-bnr"><h5>글수정</h5></div>
    
    <div class="container wrap px-0">
    	<div class="my-3 d-flex justify-content-between">
	    	<select class="form-select form-select-sm w-auto h-auto me-2" aria-label="Default select example" name="selecter">
				<sec:authorize access="hasRole('ROLE_ADMIN')"><!-- admin 로그인일 경우 -->
					<option value="1" selected>공지사항</option>
				</sec:authorize><!-- admin 로그인일 경우 -->
				<option value="2">Q&A</option>
				<option value="3">Review</option>
			</select>
		  	<input class="form-control me-2" type="text" placeholder="제목" aria-label="default input example" name ="btitle" value="${boardList.btitle}">
			<div class="input-group d-flex justify-content-between w-20">
				<%-- div class="userId"> 회원 아이디 부분
				<sec:authorize access="isAuthenticated()">
				<!-- 로그인(인증된) 사용자인 경우 --> ${user.bid}
				</sec:authorize>
				</div> --%>
				<input class="form-control" id="input_bname" name="bname" type="text" placeholder="회원 아이디 불러오는 부분" aria-label="inputGroupPrepend" value="${boardList.bnamw}">
		      	<div class="invalid-feedback">Please choose a username.</div>
		    </div>
		</div>
		
		<textarea id="summernote" name="bcontent">${boardList.bcontent}</textarea>
						
		<div class="input-group my-3">
			<span class="input-group-prepend">
				<div class="input-group-text bg-transparent border-right-0">
					<i class="bi bi-link-45deg"></i>
				</div>
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

		<div class="mt-3 mb-5 d-flex justify-content-end">
			<button type="button" class="btn btn-outline-secondary btn-secondary btn" onclick="location.href='community'">취소</button>
			<button type="submit" class="btn btn-secondary ms-2">작성 완료</button>
		</div>
	</div>
</section>   
</form>
<!-- adm_footer 부분  -->
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
<script>
$(document).ready(function() {
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
		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
	});
});
</script>
<script>
$(document).ready(function() {
	
	// 셀렉트 박스에서 옵션을 선택할 때 이벤트 핸들러를 추가합니다.
	$("#selectBox").on("change", function(e) {
		// 선택한 옵션의 텍스트 내용을 가져옵니다.
		console.log(e.target.selectedIndex);
		
		if(e.target.selectedIndex >= 1) {
			
			$("#opTxtBox").addClass("d-flex").removeClass("d-none");
			
			var selectedOptionText = $(this).find("option:selected").text();

			// 결과를 표시할 div#opTxtBox를 가져옵니다.
			var opTxtBox = $("#opTxtBox");

			// div#optionTxt 내용을 선택한 옵션 텍스트로 변경합니다.
			opTxtBox.find("#optionTxt").text(selectedOptionText);

		} else {
			$("#opTxtBox").removeClass("d-flex").addClass("d-none");
			// 옵션 선택 경고창
			 alert("옵션을 선택해주세요.");
			// $('#myModal').modal('show');
		}
		opTxtBox.show();
	});
});

//Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()
</script>

