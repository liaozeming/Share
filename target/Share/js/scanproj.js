$(document).ready(function(){
	 $(".main_proj li a").mouseenter(function() {
      	$(this).find(".s-p-hide").show(500);
      	$(this).find(".s-p-hide1").show(500);
      	 $(this).mouseleave(function() {
      	$(this).find(".s-p-hide").hide(100);
      	$(this).find(".s-p-hide1").hide(100);
      });
      }); 
});

//排序选择
$(function() {
  $('label[name="sort"]').click(function(){
    var radioId = $(this).attr('name');
    $('label[name="sort"]').removeAttr('class') && $(this).attr('class', 'checked');
    $('input[name="sort"]').removeAttr('checked') && $('#' + radioId).attr('checked', 'checked');
  });
});
$(function() {
  $('label[name="state"]').click(function(){
    var radioId = $(this).attr('name');
    $('label[name="state"]').removeAttr('class') && $(this).attr('class', 'checked');
    $('input[name="state"]').removeAttr('checked') && $('#' + radioId).attr('checked', 'checked');
  });
});


//普通众筹和免费试用链接
$(function() {
    $(".style_normal").click(function(){
	     $(".proj_freelink") .show();
    })
	$(".style_free").click(function(){
	     $(".proj_freelink") .hide();
    })
});


//发起项目步骤跳转
$(function(){
	$(".go_step1").click(function(){
		$(".step1").show();
		$('body,html').animate({ scrollTop: 0 }, 100);
		$(".step2").hide();
		$(".step3").hide();
	});
	$(".go_step2").click(function(){
		$(".step2").show();
		$('body,html').animate({ scrollTop: 0 }, 100);
		$(".step1").hide();
		$(".step3").hide();
	});
	$(".go_step3").click(function(){
		$(".step3").show();
		$('body,html').animate({ scrollTop: 0 }, 100);
		$(".step1").hide();
		$(".step2").hide();
	});
});

