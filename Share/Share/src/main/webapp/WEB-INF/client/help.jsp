<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/14
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>新手帮助</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/help.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/help.js"></script>
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
               <span style="display:none" class="zhuxiao"><a href="login.html">注销</a></span>
             <span class="pagelogin lr1"><a href="login.html">登陆</a></span>
             <span><a class="pageregister lr1" href="register.html">注册</a></span>
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
<!--主体start-->

<div class="main clearfix">
    <ul class="nav_help fl">
        <li class="about_us help_now">关于我们</li>
        <li class="course">项目教程</li>
        <li class="problem">常见问题</li>
        <li class="service">服务条款</li>
        <li class="rule">项目规则</li>
    </ul>
    <div class="help_content fr" style="display:block;">
        <font size="5">常见问题</font><br>
        <font size="15">.</font>什么是众筹 <br>
        <font size="15">.</font>众筹具有什么特征 <br>
        <font size="15">.</font>我们如何保护出资人的利益 <br>
        <font size="15">.</font>在我们平台支持项目与在商城购买有什么区别<br>
    </div>
    <div class="help_content fr" style="display:none;">
        <font size="5">常见问题</font><br>
        <font size="15">.</font>发起了产品众筹项目，审核需要多长时间 <br>
        <font size="15">.</font>发起产品众筹项目需要准备什么资料 <br>
        <font size="15">.</font>可在平台发起哪些项目 <br>
        <font size="15">.</font>为什么我发起的众筹项目审核未通过 <br>
        <font size="15">.</font>怎样查询我发起的项目 <br>
        <font size="15">.</font>国外的产品是否可以发起产品众筹 <br>
        <font size="15">.</font>发起众筹项目，质检报告有哪些要求 <br>
        <font size="15">.</font>平台会提供什么样的服务 <br>
        <font size="15">.</font>项目发起者需要做什么 <br>
        <font size="15">.</font>同一发起人帐号，可以同时发起两个或多个众筹项目吗 <br>
        <font size="15">.</font>如何提高产品众筹项目的成功率 <br>
        <font size="15">.</font>产品众筹页面设计有哪些要求 <br>
        <font size="15">.</font>众筹中的项目，内容可以修改吗<br>
        <font size="15">.</font>永久众筹是什么 <br>
        <font size="15">.</font>发起永久众筹需要什么条件 <br>
        <font size="15">.</font>发起项目后，资质的审核结果在哪儿可以查看 <br>
        <font size="15">.</font>发起项目实名认证审核结果在哪儿可以查看 <br>
    </div>
    <div class="help_content fr" style="display:none;">
        <font size="5">常见问题</font><br>
        <font size="15">.</font>产品已寄回，项目方多久给退款 <br>
        <font size="15">.</font>如何支持产品众筹项目 <br>
        <font size="15">.</font>项目众筹失败了，退款多久会到账 <br>
        <font size="15">.</font>众筹产品超时未收到货怎么办 <br>
        <font size="15">.</font>怎么操作产品众筹商品的退换货 <br>
        <font size="15">.</font>怎样查询支持过的产品众筹订单 <br>
        <font size="15">.</font>为什么支付产品众筹的订单时提示限额 <br>
        <font size="15">.</font>众筹成功后，能修改收货地址吗 <br>
        <font size="15">.</font>如何查看支持的商品是否发货 <br>
        <font size="15">.</font>申请退换货被项目方驳回了怎么办 <br>
        <font size="15">.</font>怎样查询众筹退款的记录 <br>
        <font size="15">.</font>支持的项目因不可抗力终止了，怎么办 <br>
        <font size="15">.</font>公益类众筹发起人的资质要求是什么 <br>
        <font size="15">.</font>如何发起公益类众筹 <br>
        <font size="15">.</font>公益众筹项目，怎么申请退款 <br>
        <font size="15">.</font>支持的公益众筹项目失败了，多久给操作退款 <br>
        <font size="15">.</font>众筹商家后台的网址是什么 <br>
        <font size="15">.</font>产品众筹退货时间有限制<br>
    </div>
    <div class="help_content fr" style="display:none;">
        <font size="5">常见问题</font><br>
        <font size="15">.</font>众筹平台发起人协议<br>
        <font size="15">.</font>众筹支持者协议 <br>
        <font size="15">.</font>金融服务协议 <br>
        <font size="15">.</font>众筹平台发起人协议更新公开意见征集<br>
    </div>
    <div class="help_content fr" style="display:none;">
        <font size="5">常见问题</font><br>
        <font size="15">.</font>话题区管理规定 <br>
        <font size="15">.</font>众筹回报后续服务指引 <br>
        <font size="15">.</font>商品售后服务总则<br>
    </div>
</div>

<!--主体end-->
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
                <li><a href="123124">关于我们</a></li>
                <li><a href="">服务条款</a></li>
                <li><a href="">项目教程</a></li>
                <li><a href="">新手帮助</a></li>
                <li><a href="">常见问题</a></li>
                <li class="border_none"><a href="">意见反馈</a></li>
            </ul>
        </div>
        <div class="footer_a2 fl">
            <p class="footer_ewm">微信公众号</p>
            <img src="${pageContext.request.contextPath}/images/foot_ewm_05.png" alt=""/>
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
</body>

</html>
<script>
    var user="${sessionScope.user.fname}"
    if(user!=null){
        $(".lr1").hide()
        $(".zhuxiao").show();
    }
</script>
