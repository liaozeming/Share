// JavaScript Document
$(document).ready(function(){
	var che=$(".check");
	var wr=$(".address_r");
	che.click(function(){
		var fbg=$(this).hasClass("checked");
		if(fbg==false){
		che.removeClass("checked");
		$(this).addClass("checked");
		wr.hide();
		$(this).parents(".write").find(".address_r").show();
		$(".write").removeClass("check_bg");
		$(this).parents(".write").addClass("check_bg");
			}
	});
	var che2=$(".paycheck");
	che2.click(function(){
		var yon=$(this).hasClass("checked");
		if(yon==false){
			che2.removeClass("checked");
			$(this).addClass("checked");
		}
	});
})