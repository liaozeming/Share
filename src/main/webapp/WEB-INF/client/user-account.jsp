<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/16
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>账户余额</title>
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
               <span class="nav_r1 fl"><a href="${pageContext.request.contextPath}/ToDeproj.action">发起项目</a></span>
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
            <img width="100" height="100" src="/file/${sessionScope.user.headimg} "/>
            <p>${sessionScope.user.fname} </p>
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
        <header>账户余额</header>
        <div class="user_main" id="account">
            <%--<div class="account_now">您的当前账户余额为：<span>1423</span>元<input class="input_button_yes tixian" type="button" value="提现"/></div>--%>
            <%--<table class="account_content">--%>
                <%--<tr>--%>
                    <%--<th>时间</th><th>操作</th><th>金额</th><th>余额</th>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td><time>2016-05-06  21:21:21</time></td><td>提现</td><td>-100</td><td>200</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td><time>2016-05-06  21:21:21</time></td><td>提现</td><td>-100</td><td>200</td>--%>
                <%--</tr>--%>
            <%--</table>--%>
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
            <img src="${pageContext.request.contextPath}/images/foot_ewm_05.png" alt="">
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
      showAccount()
    });

   function showAccount() {

       $.ajax({
           url:'${pageContext.request.contextPath}/UserAccount.action',
           type:'post',
           data: null,
           // 定义发送请求的数据格式为JSON字符串
           contentType : "application/json;charset=UTF-8",
           //定义回调响应的数据格式为JSON字符串,该属性可以省略
           dataType : "json",
           //成功响应的结果
           success : function(data){
               if(data!=null){
                   $(data).each(function (index) {
                       var accountRecord=data[index];

                       //操作时间
                       var s=accountRecord.ctime;
                      var date1= time(s);


                      if (index==0)
                      {
                          var str='<div class="account_now">您的当前账户余额为：<span>'+accountRecord.paymoney+'</span>元<input class="input_button_yes tixian" type="button" value="提现"/></div>'+
                          ' <table class="account_content" id="accountRecord"><tr><th>时间</th><th>操作</th><th>金额</th><th>余额</th></tr>';
                          $("#account").append(str);

                      }else {
                          var pay=data[index].paymoney-data[index-1].paymoney;
                          // alert(pay);
                          var str1='<tr><td><time>'+date1+'</time></td><td>提现</td><td>'+pay+'</td><td>'+accountRecord.paymoney+'</td></tr></table>';
                          $("#accountRecord").append(str1);
                      }


                   })
               }
               else
               {
                   alert("响应失败1");

               }
           },
           error:function (data) {
               alert("响应失败2");
           }


       });
   }

   function time(s) {
       //时间戳转换年月日
       var date=new Date(s)
       var year = date.getFullYear()+'年';
       var month = date.getMonth()+1+'月';
       var day = date.getDate()+'日';
       var date3=  new Date(s).getTime()
       //计算出小时数
       var leave1=date3%(24*3600*1000)    //计算天数后剩余的毫秒数
       var hours=date.getHours();
       //计算分钟数
       var leave2=leave1%(3600*1000);    //计算小时数后剩余的毫秒数
       var minutes=Math.floor(leave2/(60*1000));
       var leave3=leave2%(60*1000);    //计算分钟数后剩余的毫秒数
       var seconds=Math.round(leave3/1000);

       var date2=[year,month,day].join(' ');
       var time=[hours,minutes,seconds].join(':');
       var date1=[date2,time].join('   ');
       return date1;
   }
    var user="${sessionScope.user.fname}"
    if(user!=null){
        $(".lr1").hide()
        $(".zhuxiao").show();
    }
</script>
