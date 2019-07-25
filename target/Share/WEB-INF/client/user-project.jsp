<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/16
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>我的项目</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
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
        <span class="logoo fl mt20"><img src="${pageContext.request.contextPath}/images/logo_08.png" alt="logo"></span>
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
          <span class="nav_r1 fl"><a href="${pageContext.request.contextPath}/ToContract.action">发起项目</a></span>
         <span class="nav_r2 fl"><a href="${pageContext.request.contextPath}/ToHelp.action">新手帮助</a></span>
        </span>
    </nav>
    <!--nav end-->
</div>
<!--头部 结束-->
<!--主体部分-->
<div class="main clearfix">
    <!--导航-->
    <div class="user_nav fl">
        <a class="data">
            <img width="100" height="100" src="/file/${sessionScope.user.headimg}"/>
            <p>${sessionScope.user.fname}</p>
        </a>
        <ul class="list">
            <li class="my_address"><a href="${pageContext.request.contextPath}/ToUserAddress.action">收货地址</a></li>
            <li class="my_account"><a href="${pageContext.request.contextPath}/ToUserAccount.action">账户余额</a></li>
            <li class="my_project"><a href="${pageContext.request.contextPath}/ToUserProject.action">我的项目</a></li>
            <li class="my_profit"><a href="${pageContext.request.contextPath}/ToUserProfit.action">我的收益</a></li>
            <li class="my_support"><a href="${pageContext.request.contextPath}/ToUserSup.action">我的支持</a></li>
            <li class="my_collect"><a href="${pageContext.request.contextPath}/ToUserCol.action">我的收藏</a></li>
        </ul>
        <div class="user_nav_bubai"></div>
    </div>
    <div class="user_content fr">
        <header>我的项目</header>
        <div class="user_main">
            <ul class="project_nav clearfix">
                <li class="user_project_one project_all" onclick="showproject(0)">全部</li>
                <li onclick="showproject(1)">待审核</li>
                <li onclick="showproject(2)">众筹中</li>
                <li class="project_lose" onclick="showproject(3)">众筹完成</li>
            </ul>
            <ul class="project_content" style="display:block;" id="allProject">

            </ul>
            <ul class="project_content" style="display:none;"  id="WaitProject"></ul>
            <ul class="project_content" style="display:none;" id="Projecting">
            </ul>
            <ul class="project_content" style="display:none;" id="endProject">
            </ul>

        </div>
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
            <img src="src/images/foot_ewm_05.png" alt="">
        </div>
        <div class="footer_a3 fr">
            <p class="footer_inform0"><span>联系我们（9:00 － 18:00）</span></p>
            <p class="footer_inform1">400-000-0000</p>
            <p class="footer_inform2">wuxiandao@zhongchou.com</p>
            <p class="footer_inform0">qq群：123456789</p>
        </div>
    </div>
    <div class="footer_bottom">©版权所有</div>
</div>
<!--尾部end-->
<script type="text/javascript"  language="javascript" src="${pageContext.request.contextPath}/js/jquery.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/user.js"></script>
</body>
</html>
<script>
    $(function () {
        var status=0;
        showproject(0);
    })

    function showproject(status)
    {
        $("#allProject").empty();
        $("#WaitProject").empty();
        $("#Projecting").empty();
        $("#endProject").empty();
        $.ajax({
            url:'${pageContext.request.contextPath}/UserProject.action?status='+status,
            type:'get',
            // data表示发送的数据
            data:null,
            // 定义发送请求的数据格式为JSON字符串
            contentType : "application/json;charset=UTF-8",
            //定义回调响应的数据格式为JSON字符串,该属性可以省略
            // dataType : "json",
            //成功响应的结果
            success : function(data){
                if(data!=null){
                    // alert(status);
                    var str='<li class="project_content_nav"> <ul class="clearfix"><li style="width:40%;">项目信息</li><li>目标金额</li><li>'+
                        '已筹金额</li><li>当前状态</li><li>操作</li></ul>  </li><li class="project_list" id="status'+status+'">';
                    if(status==0)
                    {
                        $("#allProject").append(str);
                    }else if(status==1)
                    {
                        $("#WaitProject").append(str);
                    }else if(status==2)
                    {
                        $("#Projecting").append(str);
                    }else if(status==3)
                    {
                        $("#endProject").append(str);
                    }
                    $(data).each(function (index) {
                        var myproject=data[index];
                        //时间差转剩余天数
                        var day=getday(myproject.startdate,myproject.deadline);
                        //达成率
                        var num=(myproject.supmoney*myproject.numsup)/myproject.needmoney*100;
                        num = num.toFixed(2);
                        var a=myproject.statue-1;
                        var Status=["待众筹","众筹中","众筹完成"];
                      // alert(myproject.name);

                        var str1= '<ul class="clearfix"><li class="project_list_xinxi"><img src="/file/'+myproject.image+'"/></li>' +
                            '<li class="project_list_xinxi"><p class="project_list_xinxi_name">'+myproject.name+'</p><p>'+num+'%</p>'+
                            '<p>剩余时间<time>'+day+'</time></p></li><li class="project_list_text">'+myproject.needmoney+'</li><li class="project_list_text">'+myproject.numsup*myproject.supmoney+'</li>'+
                                '<li class="project_list_text">'+Status[a]+'</li><li class="project_list_text"><a href="${pageContext.request.contextPath}/ToProductDetail.action?id='+myproject.id+'">查看项目</a>'+
                                <%--'<a href="${pageContext.request.contextPath}/Deleteproject.action?id='+myproject.id+'">删除项目</a>'+--%>
                            '</ul></li>';
                        //全部
                        if(status==0)
                        {
                            $("#status0").append(str1);
                        }else if(status==1)
                        {
                            $("#status1").append(str1);
                        }else if(status==2)
                        {
                            $("#status2").append(str1);
                        }else if(status==3)
                        {
                            $("#status3").append(str1);
                        }
                    })

                }
                else
                {
                    alert("添加失败");

                }
            }
        })
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
