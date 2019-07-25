// JavaScript Document

//修改头像弹框
$(document).ready(function(){
    $(".user_data_xiugai").click(function() {
        $(".bomb_data_wrapper").show();
    })
	$(".close").click(function() {
        $(".bomb_data_wrapper").hide();
    })
	$(".input_button_no").click(function() {
        $(".bomb_data_wrapper").hide();
    })
})


//添加收货地址
$(document).ready(function(){
    $(".address_add").click(function() {
        $(".bomb_address_wrapper").show();
    })
	$(".close").click(function() {
        $(".bomb_address_wrapper").hide();
    })
	$(".input_button_no").click(function() {
        $(".bomb_address_wrapper").hide();
    })
})



//
$(document).ready(function(){
	$(".address2").mouseenter(function(){
	    $(".address2 .address_setup").show();	
	})
	$(".address2").mouseleave(function(){
	    $(".address2 .address_setup").hide();	
	})
	$(".address3").mouseenter(function(){
	    $(".address3 .address_setup").show();	
	})
	$(".address3").mouseleave(function(){
	    $(".address3 .address_setup").hide();	
	})
})

//我的项目
$(document).ready(function() {
    kuanTab();//弹窗选项卡
});
function kuanTab(){
  var Li = $('.project_nav li');	
  Li.click(function(){
	var fgd = $(this).hasClass('user_project_one');//判断是否有背景
	var num = $(this).index();
    var thisCon = $('.project_content').eq(num);
	//alert(num);
	if (fgd == false){
		Li.removeClass('user_project_one');
		$(this).addClass('user_project_one');
		$('.project_content').hide();
		thisCon.show();
	}
  });
}



//收益详情
$(document).ready(function(){
    $(".profit_details1").click(function() {
        $(".profit_details1_see").toggle();
    })
	$(".profit_details2").click(function() {
        $(".profit_details2_see").toggle();
    })
})

//项目评论
$(document).ready(function(){
    $(".comment_add").click(function() {
        $(".bomb_comment_wrapper").show();
    })
	$(".close").click(function() {
        $(".bomb_comment_wrapper").hide();
    })
	$(".input_button_no").click(function() {
        $(".bomb_comment_wrapper").hide();
    })
})


//查看物流
$(document).ready(function(){
    $(".ogistics1").click(function() {
        $(".view_ogistics1").toggle();
    })
	$(".ogistics2").click(function() {
        $(".view_ogistics2").toggle();
    })
})

//试用报告
$(document).ready(function(){
    $(".paper_add").click(function() {
        $(".bomb_paper").show();
    })
	$(".close").click(function() {
        $(".bomb_paper").hide();
    })
	$(".input_button_no").click(function() {
        $(".bomb_paper").hide();
    })
})













