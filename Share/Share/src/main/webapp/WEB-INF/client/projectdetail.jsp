<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/15
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>项目详情</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/projectdetail.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/projectdetail.js"></script>
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
            <span class="top_r fr">
               <span><a href="#">${sessionScope.user.fname} </a>，欢迎您</span>
             <span style="display:none" class="zhuxiao"><a href="${pageContext.request.contextPath}/LoginOut.action">注销</a></span>
              <span class="pagelogin lr1"><a href="${pageContext.request.contextPath}/To_login.action">登陆</a></span>
             <span><a class="pageregister lr1" href="${pageContext.request.contextPath}/ToRegister_login.action">注册</a></span>
           </span>
        </div>
    </div>
    <!--top end-->
    <!--logo start-->
    <div class="logo auto clearfix">
        <span class="logoo fl mt20"><img src="${pageContext.request.contextPath}/images/logo_08.png" alt="logo"/></span>
        <div class="search fl mt30">
            <input type="text" placeholder="输入关键字"/>
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
<!--adtop-->
<div class="adtop wrapcenter clearfix relative" id="productDetail">


</div>
<div class="actionmessage" style="width:130px;display:none; height:45px; margin-left:600px;margin-top:-50px;
       border:1px solid black;position:absolute;color:white;background-color:black;border-radius:10px;
      text-align:center; font-size:20px; "><span style="margin-top:10px ;display:block"></span></div>
<!--adbot-->
<div class="adbot wrapcenter clearfix">
    <div class="adbot_l fl">
        <ul class="clearfix tab">
            <li class="fl active relative">项目详情
                <p class="absolute whitebg"></p>
            </li>
            <li class="fl relative">项目评论
                <p class="absolute whitebg hide"></p>
            </li>
            <li class="fl relative">试用报告
                <p class="absolute whitebg hide"></p>
            </li>
            <li class="fl relative">规则说明
                <p class="absolute whitebg hide"></p>
            </li>
        </ul>


        <div class="table" style="display:block;" id="detail"><!--项目详情-->

        </div>
        <div class="table" style="display:none;"><!--项目评论-->
            <div class="projectappraise">
                <p><img src="${pageContext.request.contextPath}/images/head1.png" class="absolute projectappraise_head"/></p>
                <p><span class="projectappraise_name">哎呀呀呀</span><span class="projectappraise_time">13小时前</span></p>
                <p class="projectappraise_content">产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用</p>
                <p>
                    <span class="projectappraise_img"><img src="${pageContext.request.contextPath}/images/bike_08.png"></span>
                    <span class="projectappraise_img"><img src="${pageContext.request.contextPath}/images/bike_08.png"></span>
                    <span class="projectappraise_img"><img src="${pageContext.request.contextPath}/images/bike_08.png"></span>
                </p>
            </div>
            <div class="projectappraise">
                <p><img src="${pageContext.request.contextPath}/images/head1.png" class="absolute projectappraise_head"></p>
                <p><span class="projectappraise_name">哎呀呀呀</span><span class="projectappraise_time">13小时前</span></p>
                <p class="projectappraise_content">产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用</p>
                <p>
                    <span class="projectappraise_img"><img src="${pageContext.request.contextPath}/images/bike_08.png"></span>
                    <span class="projectappraise_img"><img src="${pageContext.request.contextPath}/images/bike_08.png"></span>
                    <span class="projectappraise_img"><img src="${pageContext.request.contextPath}/images/bike_08.png"></span>
                </p>
            </div>
            <div class="projectappraise">
                <p><img src="${pageContext.request.contextPath}/images/head1.png" class="absolute projectappraise_head"></p>
                <p><span class="projectappraise_name">哎呀呀呀</span><span class="projectappraise_time">13小时前</span></p>
                <p class="projectappraise_content">产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用</p>
                <p>
                    <span class="projectappraise_img"><img src="${pageContext.request.contextPath}/images/bike_08.png"></span>
                    <span class="projectappraise_img"><img src="${pageContext.request.contextPath}/images/bike_08.png"></span>
                    <span class="projectappraise_img"><img src="${pageContext.request.contextPath}/images/bike_08.png"></span>
                </p>
            </div>
            <div class="projectappraise">
                <p><img src="${pageContext.request.contextPath}/images/head1.png" class="absolute projectappraise_head"></p>
                <p><span class="projectappraise_name">哎呀呀呀</span><span class="projectappraise_time">13小时前</span></p>
                <p class="projectappraise_content">产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用</p>
                <p>
                    <span class="projectappraise_img"><img src="${pageContext.request.contextPath}/images/bike_08.png"></span>
                    <span class="projectappraise_img"><img src="${pageContext.request.contextPath}/images/bike_08.png"></span>
                    <span class="projectappraise_img"><img src="${pageContext.request.contextPath}/images/bike_08.png"></span>
                </p>
            </div>
        </div>
        <div class="table" style="display:none;"><!--试用报告-->
            <div class="trialReport">
                <p><img src="${pageContext.request.contextPath}/images/head1.png" class="absolute trialReport_head"/></p>
                <p class="dropdown absolute drop" onClick="drop(this)">查看详情</p>
                <p><span class="trialReport_name">哎呀呀呀</span><span class="trialReport_time">13小时前</span></p>
                <p class="clearfix  trialsummarize">
                    <span class="fl">试用总结：</span>
                    <span class="fl trialsummarize_content">产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用实</span>
                </p>
                <div class="clearfix  trialprocedure">
                    <span class="fl">试用过程：</span>
                    <div class="fl trialprocedure_content">
                        <p>产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用实产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用实</p>
                        <div class="dropdown_content hide">
                            <p><img src="${pageContext.request.contextPath}/images/sport_bike_08.png"></p>
                            <p>产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用实产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用实</p>
                            <p><img src="${pageContext.request.contextPath}/images/sport_bike_08.png"></p>
                            <p>产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用实产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用实</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="trialReport">
                <p><img src="${pageContext.request.contextPath}/images/head1.png" class="absolute trialReport_head"></p>
                <p class="dropdown absolute drop" onClick="drop(this)">查看详情</p>
                <p><span class="trialReport_name">哎呀呀呀</span><span class="trialReport_time">13小时前</span></p>
                <p class="clearfix  trialsummarize">
                    <span class="fl">试用总结：</span>
                    <span class="fl trialsummarize_content">产品非常好非常好非常好非常好非常好很实用很实用很实用产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用很实用实</span>
                </p>
                <div class="clearfix  trialprocedure">
                    <span class="fl">试用过程：</span>
                    <div class="fl trialprocedure_content">
                        <p>产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用实产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用实</p>
                        <div class="dropdown_content hide">
                            <p><img src="${pageContext.request.contextPath}/images/sport_bike_08.png"/></p>
                            <p>产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用实产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用实</p>
                            <p><img src="${pageContext.request.contextPath}/images/sport_bike_08.png"/></p>
                            <p>产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用实产品非常好非常好非常好非常好非常好很实用很实用很实用很实用很实用很实用实</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="table" style="display:none;"><!--规则说明-->

        </div>
    </div>
    <div class="adbot_r fl" id="projectMan">

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
                <li class="border_none" ><a href="">意见反馈</a></li>
            </ul>
        </div>
        <div class="footer_a2 fl">
            <p class="footer_ewm">微信公众号</p>
            <img src="${pageContext.request.contextPath}/images/foot_ewm_05.png" alt="">
        </div>
        <div class="footer_a3 fr">
            <p class="footer_inform0"><span>联系我们（9:00 － 18:00）</span></p>
            <p class="footer_inform1">400-000-0000</p>
            <p class="footer_inform2">wuxiandao@zhongchou.com</p>
            <p class="footer_inform0">qq群：123456789</p>
        </div>
    </div>
    <div class="footer_bottom">?版权所有</div>
</div>
<!--尾部end-->
</body>
</html>
<script>

    $(function () {
        //产品id号
       var id=${id};
       // alert(id);
        showProductDetail(id);

    });

    function showProductDetail(id) {


       $.ajax({
            url:'${pageContext.request.contextPath}/ShowProjectDetail.action',
            type:'get',
            data: {
               id:id
            },
            dataType:'json',
            success: function(data){
                if(data!=null){
                    var img="/file/"+data.image;
                    var num=data.supmoney*data.numsup;
                    //达成率
                    var s=num/data.needmoney*100;
                    //时间差转剩余天数
                    var day=getday(data.startdate,data.deadline);


                    //时间戳转换年月日
                    var date=new Date(data.deadline)
                    var year = date.getFullYear()+'年';
                    var month = date.getMonth()+1+'月';
                    var date = date.getDate()+'日';
                    var date1=[year,month,date].join('-');

                    //图片列表数组
                    var imageList=data.imageUrls;
                    // alert(imageList[0]);

                    //达成率
                    var num=(data.supmoney*data.numsup)/data.needmoney*100;
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

                    // ' <span class="'+projectstatus[status]+'"></span>'

                    s = s.toFixed(2);
                    if(s>100)
                    {
                        s=100;
                    }
                    var  str='<div class="adtop_l fl">'+
                         '<p> <img src="'+img+'" width="777px" height="399px"/></p>'+
                          '</div>'+
                            '<div class="adtop_r fl">'+
                            '<p class="projectname">'+data.name+'</p>'+
                            '<p class="projectad">'+data.introduce+'</p>'+
                            '<p><span  class="already">已筹到</span><span class="moneymark">￥</span><span class="money">'+num+'</span></p>'+
                            '<p class="progressbar relative"> <span class="progressbar_t absolute" style="width:'+s+'%">'+
                            '<img src="${pageContext.request.contextPath}/images/progress_08.png" class="absolute"/></span> </p>'+
                            '<p class="clearfix"><span  class="progressnow fl">当前进度'+s+'%</span>'+
                            '<span class="support fr">'+data.numsup+'名支持者</span>'+
                            '<p class="progresstip">此项目必须在 <span>'+date1+'</span> 前得到 <span>'+data.needmoney+
                            '</span> 的支持才可成功！ 剩余 <span>'+day+'天</span> !</p>'+
                            '<p class="clearfix"><a href="${pageContext.request.contextPath}/ToOrder.action?id='+data.id+'"><span class="fl btn_l">立即支持</span></a>'+
                            '<span class="fr btn_r" id="coll"  onclick="collect('+data.id+')">收藏</span></p>'+
                            '<p class="share">分享到 <a href="#"><span class="webo"></span></a> <a href="#"><span class="qzone"></span></a> '+
                            '<a href="#"><span class="wechat"></span></a><a href="#"><span class="qq"></span></a> </p>'+
                            '</div>'+
                            '<div class="absolute mark_ing" style="margin-left:100px;margin-top:20px "><span class="'+projectstatus[status]+'"></span></div>'+
                            '</div>';
                          ;
                    $("#productDetail").append(str);

                    //视频
                    var str1='<div class="video"> <embed src="'+data.detailvido+'" width="700" height="450"></div>'+
                            '<div class="adpic"></div>'+
                            '<div class="adpic" id="imageUrls"></div>';
                    $("#detail").append(str1);


                    //遍历图片数组加入图片
                    $(imageList).each(function (index) {
                        var str2='><img src="/file/'+imageList[index]+'" width="759" height="1300"/>'
                        // alert(imageList[index]);
                        $("#imageUrls").append(str2);
                    });
                    //项目发起人
                    var str3='<div class="adbot_r_t"> <p class="projectleader">项目发起人</p><div class="projectitem clearfix">'+
                    '<div class="projectleader_header fl"><img src="/file/'+data.user.headimg+'" width="150" height="120"/></div>'+
                    ' <div class="fl"><p class="projectleader_header_t">'+data.user.fname+'</p>'+
                    '<p class="projectleader_header_b">'+data.user.introduce+'</p>'+
                    '</div></div></div>'+
                    '<div   id="backImages">'
                    ;
                    $("#projectMan").append(str3);

                    //遍历回报图片数组
                    $(data.imageBackUrls).each(function (index) {
                       var image=data.imageBackUrls[index];
                       var sendmoney=data.sendmoney;
                       if (sendmoney==0)
                       {
                           sendmoney="全国包邮";
                       }
                       else {
                           sendmoney=sendmoney+"元";
                       }
                       // alert(image);
                        var str4='<div class="adbot_r_b" >'+
                         '<p class="clearfix adbot_r_b_t"><span class="fl">￥'+data.backmoney+'</span><span class="fr">限额20位，剩余10位</span></p>'+
                         '<p class="adbot_r_b_m">'+ data.backcontent+'</p>'+
                        '<p ><img src="/file/'+image+'"  width="300px" height="140px" ></p>'+
                        '<p class="adbot_r_b_grey" font-size="18">配送费用：<span class="adbot_r_b_black">'+sendmoney+'</span></p>'+
                        '<p class="adbot_r_b_grey">预计发放时间：<span class="adbot_r_b_black">项目筹款成功后的<span class="adbot_r_b_yellow">'+data.backtime+'</span>天内</span></p>'+
                        '<p class="adbot_r_b_btn"><a href="${pageContext.request.contextPath}/ToOrder.action?id='+data.id+'" style="color:white">立即支持</a></p></div>';
                        $("#backImages").append(str4);
                    });

                }else {
                    alert("响应失败1");
                }
            },
            error:function (data) {
                alert("响应失败2");

            }
        });

    }

    function collect(id) {
        // alert(id);
       $.ajax({
        url:'${pageContext.request.contextPath}/collectProject.action?id='+id,
        type:'get',
        // data表示发送的数据
        data:null,
        // 定义发送请求的数据格式为JSON字符串
        contentType : "application/json;charset=UTF-8",
        //定义回调响应的数据格式为JSON字符串,该属性可以省略
        // dataType : "json",
        //成功响应的结果
        success : function(data){
        if(data==1){
        alert("收藏成功");
        }
        else if(data==2)
        {
        alert("您已收藏");

        }
        },
        error:function (data) {
        alert("收藏失败2")
        }
        })

    }

    var msg="${requestScope.actionmessage}";
    if(msg!=""){
        $(".actionmessage").show().delay(2000).fadeOut()
    }

    var user="${sessionScope.user.fname}"
    if(user!=null){
        $(".lr1").hide()
        $(".zhuxiao").show();
    }

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

</script>

