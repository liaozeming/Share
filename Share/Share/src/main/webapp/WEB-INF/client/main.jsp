<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.9.0.min.js" charset="utf-8"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
</head>

<body>

<!--头部start-->
<div class="header">
    <!--top start-->
    <div class="top">
        <div class="topauto auto clearfix">
           <span class="top_l fl">
             <span class="mark_tl1"><a href="">无限道生态</a></span>
             <span class="mark_tl2"><a href="">添加到桌面</a></span>
           </span>
            <span class="top_r fr"><span><a href="#">${sessionScope.user.fname } </a>，欢迎您</span>
               <span style="display:none" class="zhuxiao"><a href="${pageContext.request.contextPath}/LoginOut.action">注销</a></span>
              <span class="pagelogin lr1"><a href="${pageContext.request.contextPath}/To_login.action">登陆</a></span>
             <span><a class="pageregister lr1" href="${pageContext.request.contextPath}/ToRegister_login.action">注册</a></span>
           </span>
        </div>
    </div>
    <!--top end-->
    <!--logo start-->
    <div class="logo auto clearfix">
        <span class="logoo fl mt20"><img src="${pageContext.request.contextPath}/images/logo.jpg" width="160" height="80" alt="logo"></span>
        <div class="search fl mt30">
            <input type="text" placeholder="输入关键字">
            <a href=""><img src="${pageContext.request.contextPath}/images/mark_search_05.png" alt="搜索" /></a>
        </div>
        <div class="mark_group fr clearfix">
            <span class="mark_logo1 fl"><span class="mlogo_1">新品尝鲜</span><span class="mlogo_2">海量商品第一手尝鲜</span></span>
            <span class="mark_logo2 fl"><span class="mlogo_1">全额退款</span><span class="mlogo_2">未达成目标全额退款</span></span>
            <span class="mark_logo3 fl"><span class="mlogo_1">全国包邮</span><span class="mlogo_2">部分产品港澳台除外</span></span>
        </div>
    </div>
    <!--logo end-->
    <!--nav start-->
    <nav class="auto clearfix">
        <span class="nav_l fl">
          <span class="nav_l1 nav_l4 active"><a href="${pageContext.request.contextPath}/ToMain.action">首页</a></span>
          <span class="nav_l2 nav_l4"><a href="${pageContext.request.contextPath}/ToVieProducts.action">项目浏览</a></span>
          <span class="nav_l3 nav_l4"><a href="${pageContext.request.contextPath}/ToUser.action">我的众筹</a></span>
        </span>
        <span class="nav_r fr">
          <span class="nav_r1 fl"><a href="${pageContext.request.contextPath}/ToDeproj.action">发起项目</a></span>
           <span class="nav_r2 fl"><a href="${pageContext.request.contextPath}//ToHelp.action">新手帮助</a></span>
        </span>
    </nav>
    <!--nav end-->
</div>
<!--头部 结束-->

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
</fieldset>

 <!--//轮播图-->
<div class="layui-carousel" id="test2" style="margin: 0 auto">
    <div  carousel-item="" id="commendimgs">

    </div>
</div>

<!--主体-->
<div class="main" style="margin-top: 40px">
    <!--免费试用-->
    <div class="free">
        <p class="main_header_bg"></p>
        <p class="main_header free_header">免&nbsp;费&nbsp;试&nbsp;用&nbsp;&nbsp;<span>Free&nbsp;&nbsp;Trial</span></p>
        <ul class="clearfix" id="freeimages">
        </ul>
    </div>
    <!--热门推荐-->
    <div class="hot">
        <p class="main_header_bg"></p>
        <p class="main_header hot_header">热&nbsp;门&nbsp;推&nbsp;荐&nbsp;&nbsp;<span>Popular&nbsp;&nbsp;Recommendation</span></p>
        <ul class="flow-default" id="LAY_demo1"></ul>
    </div>

</div>

<!--尾部start-->
<div class="footer">
    <div class="footer_auto auto clearfix">
        <div class="footer_a1 fl">
            <div class="footer_p pt50">
                <span class="footer_process1 w150br30">发起人创建项目</span>
                <span class="footer_process">></span>
                <span class="footer_process2 w150br30">项目获得支持</span>
                <span class="footer_process">></span>
                <span class="footer_process3 w150br30">发起人发放回报</span>
                <span class="footer_process">></span>
                <span class="footer_process4 w150br30">用户得到回报</span>
            </div>
            <ul>
                <li><a href="">关于我们</a></li>
                <li><a href="">服务条款</a></li>
                <li><a href="">项目教程</a></li>
                <li><a href="">新手帮助</a></li>
                <li><a href="">常见问题</a></li>
                <li class="border_none"><a href="">意见反馈</a></li>
            </ul>
        </div>
        <div class="footer_a2 fl">
            <p class="footer_ewm">微信公众号</p>
            <img src="${pageContext.request.contextPath}/images/foot_ewm_05.png" alt="">
        </div>
        <div class="footer_a3 fr" >
            <p class="footer_inform0"><span>联系我们（9:00－18:00）</span></p>
            <p class="footer_inform1">400-000-0000</p>
            <p class="footer_inform2">wuxiandao@zhongchou.com</p>
            <p class="footer_inform0">qq群：123456789</p>
        </div>
    </div>
    <div class="footer_bottom">&copy;版权所有</div>
</div>
<!--尾部end-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/index.js"></script>
</body>

</html>
<script>

    $(function () {

        //显示轮播图
        $.ajax({
            url:'${pageContext.request.contextPath}/RecommendProject.action',
            type:'post',
            // data表示发送的数据
            data:null,
            // 定义发送请求的数据格式为JSON字符串
            contentType : "application/json;charset=UTF-8",
            //定义回调响应的数据格式为JSON字符串,该属性可以省略
            dataType : "json",
            //成功响应的结果
            success : function(data){
                if(data!=null){
                    var str = "";
                    $(data).each(function (index) {
                        var project=data[index];
                        var image="/file/"+project.image;
                        str='<div><a href="${pageContext.request.contextPath}/ToProductDetail.action?id='+project.id +'">'+
                            ' <img width="1400px" height="500px"  src="'+image+'"></a></div>';
                        $("#commendimgs") .append(str);
                    })

                }
                else
                {
                    window.location.reload();
                    // alert("响应失败1");

                }
            },
            error:function (data) {
                // alert("响应失败2");
            }
        });


//免费产品的推荐
        $.ajax({
            url:'${pageContext.request.contextPath}/FreeProjectCommend.action',
            type:'post',
            // data表示发送的数据
            data:null,
            // 定义发送请求的数据格式为JSON字符串
            contentType : "application/json;charset=UTF-8",
            //定义回调响应的数据格式为JSON字符串,该属性可以省略
            dataType : "json",
            //成功响应的结果
            success : function(data){
                if(data!=null){
                    var str = "";
                    $(data).each(function (index) {
                        // alert(data[0].image);
                        var project=data[index];
                        var image="/file/"+data[index].image;
                        var freestyle=["free_one fl","free_two fl","free_three fl","free_four fl"];
                        str='<li class="'+freestyle[index]+'"><a href="${pageContext.request.contextPath}/ToProductDetail.action?id='+project.id +'">'+
                                ' <p class="free_title">'+project.name+'</p>'+
                                '<p class="free_summary">'+project.introduce+'</p>'+
                                ' <img class="free_img" src="'+image+'">'+
                                '<div class="free_hover"  style="margin-top: -30px"><input class="button_apply" type="button" value="立即支持" /></div>'+
                                '</li></a>'
                       $("#freeimages") .append(str);
                       // window.location.href = "${pageContext.request.contextPath}/ToMain.action";
                    })

                }
                else
                {
                    // alert("响应失败");

                }
            },
            error:function (data) {
                alert("响应失败");

            }
        });


        layui.use(['carousel','flow', 'form'], function(){
            var carousel = layui.carousel
            var flow = layui.flow;
            // //图片轮播
            //改变下时间间隔、动画类型、高度
            carousel.render({
                elem: '#test2'
                ,interval: 5000
                ,anim: 'fade'
                ,width: '1300'
                ,height: '500px'
            });

            flow.load({
                elem: '#LAY_demo1' //流加载容器
                ,scrollElem: '#LAY_demo1' //滚动条所在元素，一般不用填，此处只是演示需要。
                ,done: function(page, next){ //执行下一页的回调

                    //模拟数据插入
                    setTimeout(function(){
                        var lis = [];
                        var str = "";
                        $.get('${pageContext.request.contextPath}/HotProjects.action?page='+page+ '&limit=8', function(res){


                            //假设你的列表返回在data集合中
                            layui.each(res.data, function(index, item){
                                var day=getday(item.startdate,item.deadline);
                                //alert(day);
                                var image="/file/"+item.image;
                                //达成率
                                var num=(item.supmoney*item.numsup)/item.needmoney*100;
                                num = num.toFixed(2);
                                //产品状态  0.未开启 1.众筹中 2.预热中 3.已完成
                                //传递到推荐只有 1.众筹中 2.预热中
                                var projectstatus=["tag_conduct hot_tag fr","tag_preheat hot_tag fr"];
                                var status;
                                if (num>=70)
                                {
                                    //众筹中
                                    status=1;
                                    //进度条
                                    num=100;
                                }else {
                                    //2.预热中
                                    status=0;
                                }
                                // alert(item.id);
                                str=' <li class="hot_list"><img class="hot_img"   src="'+image+'"/>'
                                    +'  <div class="hot_content clearfix">'
                                    +' <span class="'+projectstatus[status]+'"></span>'
                                    +' <p class="hot_title">'+item.name+'</p>'
                                    +'<p class="hot_summary">'+item.introduce+'</p>'
                                    +'<ul class="clearfix">'
                                    +' <li class="hot_money fl">已筹集<br /><span>'+item.supmoney*item.numsup+'</span></li>'
                                    +'<li class="hot_people fl">已支持<br /><span>'+item.numsup+'</span></li>'
                                    +' <li class="hot_time fl">剩余天数<br /><span>'+day+'</span></li></ul>'
                                    +'<div class="hot_bar_wrapper"><img style="width:'+num+'%;" class="hot_bar" src="${pageContext.request.contextPath}/images/hot_bar.jpg"/></div>'
                                    +'<span class="hot_rate_wrapper fl">达成率：<span class="hot_rate">'+num+'%</span></span> '
                                    +' <a href="${pageContext.request.contextPath}/ToProductDetail.action?id='+item.id+'" class="hot_support fr"></a>'
                                    +'</ul>'
                                    +'</div>'
                                    +'</li>'
                                ;
                                lis.push(str);
                            });



                            //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                            //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                            next(lis.join(''), page < res.count/8); //假设总页数为 10
                        });
                    }, 500);
                }
            });

        });




    });






function getday(startTime,endTime)
{
    var date1= startTime;  //开始时间
    var date2 =endTime;    //结束时间
    var date3 =  new Date(date2).getTime() - new Date(date1).getTime();   //时间差的毫秒数

    //计算出相差天数
    var days=Math.floor(date3/(24*3600*1000))

    //计算出小时数
    var leave1=date3%(24*3600*1000)    //计算天数后剩余的毫秒数

    var hours=Math.floor(leave1/(3600*1000))
    //计算相差分钟数
    var leave2=leave1%(3600*1000)        //计算小时数后剩余的毫秒数
    var minutes=Math.floor(leave2/(60*1000))
    //计算相差秒数
    var leave3=leave2%(60*1000)      //计算分钟数后剩余的毫秒数
    var seconds=Math.round(leave3/1000)
    //alert(" 相差 "+days+"天 "+hours+"小时 "+minutes+" 分钟"+seconds+" 秒")
    return days;
}


    $('.demoSet').on('keyup', function(){
        var value = this.value
            ,options = {};
        if(!/^\d+$/.test(value)) return;

        options[this.name] = value;
        ins3.reload(options);
    });


    var user="${sessionScope.user.fname }"
    if(user!=null){
        $(".lr1").hide()
        $(".zhuxiao").show();
    }

</script>
