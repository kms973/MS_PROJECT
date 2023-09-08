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

$(document).ready(function(){
	$("#checkAlll").click(function(){
		if($("#checkAlll").prop("checked")){
			$(".form-check-inputt").prop("checked", true);
		}else{
			$(".form-check-inputt").prop("checked", false);
		}
	});
	$(".test").click(function(){
		if($("input[name='check']:checked").length == 4){
			$("#checkAlll").prop("checked", true);
		}else{
			$("#checkAlll").prop("checked", false);
		}		
	});
});