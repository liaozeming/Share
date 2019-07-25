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
    <title>我的收益</title>
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
        <a class="data" >
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
        <header>我的收益</header>
        <div class="user_main">
            <ul class="project_content" style="display:block;">
                <li class="project_content_nav">
                    <ul class="clearfix"><li style="width:40%;">项目信息</li><li>单价</li><li>当前状态</li><li>我的收益</li><li>操作</li></ul>
                </li>
                <li class="project_list">
                    <ul class="clearfix"><li class="project_list_xinxi"><img src="${pageContext.request.contextPath}/images/img_suoluetu.jpg"/></li><li class="project_list_xinxi"><p class="project_list_xinxi_name">够跑随身摄录仪DF1</p><p>达成率78%</p><p>剩余时间<time>21天</time></p></li><li class="project_list_text">￥984</li><li class="project_list_text">众筹中</li><li class="project_list_text">￥234</li><li class="project_list_text profit_caozuo"><a href="">查看项目</a><p class="profit_details1">收益详情</p></li></ul>
                    <table class="profit_details1_see" style="display:none">
                        <tr><th>级数</th><th>收益百分比</th><th>单价收益</th><th>支持人数</th><th>单级总收益</th></tr>
                        <tr><td>一级收益</td><td>5%</td><td>￥10</td><td>10</td><td>￥100</td></tr>
                        <tr><td>二级收益</td><td>3%</td><td>￥10</td><td>10</td><td>￥100</td></tr>
                        <tr><td>三级收益</td><td>2%</td><td>￥10</td><td>10</td><td>￥100</td></tr>
                    </table>
                </li>
                <li class="project_list">
                    <ul class="clearfix"><li class="project_list_xinxi"><img src="${pageContext.request.contextPath}/images/img_suoluetu.jpg"/></li><li class="project_list_xinxi"><p class="project_list_xinxi_name">够跑随身摄录仪DF1</p><p>达成率78%</p><p>剩余时间<time>21天</time></p></li><li class="project_list_text">￥984</li><li class="project_list_text">众筹中</li><li class="project_list_text">￥234</li><li class="project_list_text profit_caozuo"><a href="">查看项目</a><p class="profit_details2">收益详情</p></li></ul>
                    <table class="profit_details2_see" style="display:none">
                        <tr><th>级数</th><th>收益百分比</th><th>单价收益</th><th>支持人数</th><th>单级总收益</th></tr>
                        <tr><td>一级收益</td><td>5%</td><td>￥10</td><td>10</td><td>￥100</td></tr>
                        <tr><td>二级收益</td><td>3%</td><td>￥10</td><td>10</td><td>￥100</td></tr>
                        <tr><td>三级收益</td><td>2%</td><td>￥10</td><td>10</td><td>￥100</td></tr>
                    </table>
                </li>
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
<script type="text/javascript"  language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js" charset="utf-8"></script>
<script src="src/js/user.js"></script>
</body>
</html>
<script>
    var user="${sessionScope.user.fname}"
    if(user!=null){
        $(".lr1").hide()
        $(".zhuxiao").show();
    }
</script>
