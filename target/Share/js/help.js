// JavaScript Document


$(document).ready(function() {
    kuanTab();//选项卡
});
function kuanTab(){
  var Li = $('.nav_help li');	
  Li.click(function(){
	var fgd = $(this).hasClass('help_now');//判断是否有背景
	var num = $(this).index();
    var thisCon = $('.help_content').eq(num);
	//alert(num);
	if (fgd == false){
		Li.removeClass('help_now');
		$(this).addClass('help_now');
		$('.help_content').hide();
		thisCon.show();
	}
  });
}