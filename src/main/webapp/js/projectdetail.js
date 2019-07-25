// JavaScript Document
  $(document).ready(function() {
	var li = $(".tab li");
	li.click(function(){
	var fbg=$(this).hasClass("active");
	var num=$(this).index();
	 var thisCon = $('.adbot_l .table').eq(num);
	if(fbg==false)
	{
		li.removeClass("active");
		$(this).addClass("active");
		li.children(".whitebg").addClass("hide");
		$(this).children(".whitebg").removeClass("hide");
	}
	$('.table').hide();
		thisCon.show();
	});
	});
	
	function drop(obj){
		var obj=$(obj);
		var yon=obj.hasClass("dropped");
		if(yon==false){
			obj.removeClass("dropdown");
			obj.addClass("dropup");
			obj.addClass("dropped");
			obj.parent(".trialReport").find(".dropdown_content").fadeIn(1500);
			obj.html("&nbsp;&nbsp;&nbsp;&nbsp;收起");
		}else{
			obj.removeClass("dropup");
			obj.addClass("dropdown");
			obj.removeClass("dropped");
			obj.parent(".trialReport").find(".dropdown_content").hide(500);
			obj.html("查看详情");
			$('html,body').animate({scrollTop: obj.parent(".trialReport").find(".trialReport_head").offset().top}, 300);
		}
	}
