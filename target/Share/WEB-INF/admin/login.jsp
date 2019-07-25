<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>管理员登陆</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>

</head>

<body>

<div class="content_wrap">
    <div class="content_h clearfix">
        <p class="fl content_h_logo"><img src="${pageContext.request.contextPath}/images/loginlogo.png"/></p>
        <p class="fl content_h_logo_text">二级分销的众筹平台</p>
        <p class="fr content_h_r">
            <span class="content_h_r1">100%质量保证</span>
            <span class="content_h_r2">未达成目标全额退款</span>
            <span class="content_h_r3">全国包邮</span>
        </p>
    </div>
    <div class="clearfix content">
        <div class="content_l fl"><img src="${pageContext.request.contextPath}/images/loginad_06.png"/></div>
        <div class="content_r fl">
            <form  id="login" method="post" class="form1">
                <p>
                    <input type="text" class="acount" placeholder="请输入账户" name="phone" id="phone"  />
                </p>
                <p>
                    <input type="password" class="pass_word" placeholder="请输入密码" name="password" id="password"/>
                </p>
                <p style="margin-left: 50px"><span><input style=" border:none; color:white;background-color:#13b7e6;
                 width:290px;height:28px; " type="button"  UseSubmitBehavior="true" value="登录" onclick="login()" /></span></p>
            </form>
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

<script>
    function login(){
        var formObject = {};
        var form = $("#login").serializeArray();
        $.each(form,function(i,item){
            formObject[item.name] = item.value;
        });
        var data=JSON.stringify(formObject);

        $.ajax({
            url:'${pageContext.request.contextPath}/adminlogin.action',
            type:'post',
            // data表示发送的数据
            data:data,
            // 定义发送请求的数据格式为JSON字符串
            contentType : "application/json;charset=UTF-8",
            //定义回调响应的数据格式为JSON字符串,该属性可以省略
            // dataType : "json",
            //成功响应的结果
            success : function(data){
                if(data==1){
                    window.location.href = "${pageContext.request.contextPath}/ToAdminIndex.action";
                }
                else
                {
                    alert("登陆失败");

                }
            }
        })
    }
</script>
</body>

</html>

