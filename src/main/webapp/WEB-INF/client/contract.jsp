<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/12
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>发起项目</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xc-s-p.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/scanproj.js"></script>
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
             <span class="nav_r1 fl"><a href="${pageContext.request.contextPath}/ToDeproj.action">发起项目</a></span>
          <span class="nav_r2 fl"><a href="${pageContext.request.contextPath}/ToHelp.action">新手帮助</a></span>
        </span>
    </nav>
    <!--nav end-->
</div>
<!--头部 结束-->
<!--主体start-->
<div class="deproj_ctn">
    <h2>无限道生态平台项目发起人协议</h2>
    <p class="proj_contract" style="font-size:20px">&nbsp;&nbsp;协议编号：甲方：北京汇金技术培训有限公司乙方：甲、乙双方在平等、
        互惠互利的基础上，本着为企业提供合适的人才，降低企业的招聘成本的目标，达成如下合作协议：甲乙双方约定：<br/>
        1、 甲乙双方在进行合作业务时，双方须提供营业执照的复印件。 甲方有权要求乙方，提供企业真实的经济性质，<br/>规模大小，发展前景等情况，以便使乙方正确理解委托招聘岗位的要求和客观负责的向候选人介绍聘方的情况。
        2、 乙方授权甲方使用其企业名称、LOGO等，用于招聘宣传（甲方不得利用乙方授权相关信息做其他与招聘无关或是损害企业形象的行为）。
        3、 乙方应及时、准确将有效的招聘信息提供给甲方，甲方应及时将符<br/>合乙方需求的相关人员资料提供给乙方。
        4、 在甲乙双方协商的时限内，甲方通过自身的培训体系，将培<br/>训合格并且符合乙方要求的学员，免费推荐给乙方，录用权在乙方。
        5、 乙方对甲方提供的<br/>人员进行面试后的两个星期内应明确通知甲方是否录用。
        6、 其他约定事项_
        二、不可抗力甲乙双方如果遇到战争，<br/>洪水，地震等非正常因素，使合同无法履行的，双方免责。
        三、合同争议的解决办法本合同项下发生的争议，由双方当事人协商<br/>或申请调解解决。协商或调解解决不成的，可提交北京仲裁委员会仲裁。
        四、其它本协议未尽事宜应由甲、乙双方本着友好的原则协商解决。本合<br/>同一式二份在双方签字盖章后生效。合同生效后，双方对合同内容的变更或补充应采取书面形式，作为本合同的附件。附件与本合同具有同等的法律效力</p>
    <div class="proj_p"><a class="proj_p0" href="${pageContext.request.contextPath}/ToDeproj.action">阅读并同意协议</a></div>
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
