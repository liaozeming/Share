// JavaScript Document

$(document).ready(function(){
	var num=$('.carousel_span span').length;
	var i_mun=0;
	var timer_banner=null;

	$('.carousel_ul li:gt(0)').hide();//页面加载隐藏所有的li 除了第一个
	
//底下小图标点击切换
	$('.carousel_span span').click(function(){
		$(this).addClass('carousel_span_one')
			   .siblings('span').removeClass('carousel_span_one');
		var i_mun1=$('.carousel_span span').index(this);
		$('.carousel_ul li').eq(i_mun1).slideDown('slow')
			                   .siblings('li').slideUp('slow');

		i_mun=i_mun1;
	});
	
//左边箭头点击时切换
	$('.carousel_left').click(function(){
		if(i_mun==0){
			i_mun=num
		}
		//大图切换
		$('.carousel_ul li').eq(i_mun-1).slideDown('slow')
			                   .siblings('li').slideUp('slow');
		//小图切换
		$('.carousel_span span').eq(i_mun-1).addClass('carousel_span_one')
				   .siblings('span').removeClass('carousel_span_one');

		i_mun--
	});

	//左边按钮移动到其上时更换背景图片
    $('.carousel_left').mouseover(function(){
		
		$('.carousel_left').addClass('carousel_left1');
	});
	//左边按钮移动到其上时还原背景图片
	$('.carousel_left').mouseout(function(){
		
		$('.carousel_left').removeClass('carousel_left1');
	});
//右边箭头点击时切换
	$('.carousel_right').click(function(){
		move_banner()	
	});
	//右边按钮移动到其上时更换背景图片
	$('.carousel_right').mouseover(function(){
		
		$('.carousel_right').addClass('carousel_right1');
	});
	//右边按钮移动到其上时更换背景图片
	$('.carousel_right').mouseout(function(){
		
		$('.carousel_right').removeClass('carousel_right1');
	});
//鼠标移动到幻灯片上时 显示左右切换案例
	$('.carousel').mouseover(function(){
		$('.carousel_left').show();
		$('.carousel_right').show();
	});
//鼠标离开幻灯片上时 隐藏左右切换案例
	$('.carousel').mouseout(function(){
		$('.carousel_left').hide();
		$('.carousel_right').hide();
	});
	//自动播放函数
	function bannerMoveks(){
		timer_banner=setInterval(function(){
			move_banner()
		},3000)
	};
	bannerMoveks();//开始自动播放

	//鼠标移动到banner上时停止播放
	$('.carousel').mouseover(function(){
		clearInterval(timer_banner);
	});

	//鼠标离开 banner 开启定时播放
	$('.carousel').mouseout(function(){
		bannerMoveks();
	});
//banner 右边点击执行函数
   function move_banner(){
			if(i_mun==num-1){
				i_mun=-1
			}
			//大图切换
			$('.carousel_ul li').eq(i_mun+1).slideDown('slow')
			                   .siblings('li').slideUp('slow');
			//小图切换
			$('.carousel_span span').eq(i_mun+1).addClass('carousel_span_one')
					   .siblings('span').removeClass('carousel_span_one');
			i_mun++
		}
})




