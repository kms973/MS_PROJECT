$(document).ready(function(){
	$("#checkAll").click(function(){
		if($("#checkAll").prop("checked")){
			$(".form-check-input").prop("checked", true);
		}else{
			$(".form-check-input").prop("checked", false);
		}
	});
	$(".test").click(function(){
		if($("input[name='check']:checked").length == 4){
			$("#checkAll").prop("checked", true);
		}else{
			$("#checkAll").prop("checked", false);
		}		
	});
});