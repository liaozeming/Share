<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/14
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>忘记密码</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
</head>

<body>
<div class="content_wrap">
    <div class="content_h clearfix">
        <p class="fl content_h_logo"><img src="${pageContext.request.contextPath}/images/loginlogo.png"></p>
        <p class="fl content_h_logo_text">三级分销的众筹平台</p>
        <p class="fr content_h_r">
            <span class="content_h_r1">100%质量保证</span>
            <span class="content_h_r2">未达成目标全额退款</span>
            <span class="content_h_r3">全国包邮</span>
        </p>
    </div>
    <div class="clearfix content">
        <div class="content_l fl"><img src="${pageContext.request.contextPath}/images/loginad_06.png"></div>
        <form method="post" id="forgetpwd">
        <div class="content_r fl">
            <p class="content_r_h">找回密码</p>
            <p class="content_r_tip">已有账号？<a class="content_r_tip2" href="${pageContext.request.contextPath}/To_login.action">立即登录</a></p>
            <p class="content_r_l">手机号：
                <input type="text" class="content_r_tel" id="phone" name="phone">
            </p>
            <p class="content_r_l">验证码：
                <input type="text"  id="phonecheck" name="phonecheck" class="content_r_mark">
                <span class="freeget" onclick="getphonecheck()">免费获取手机验证码
                    </span>
            </p>
            <p class="content_r_l">新密码：
                <input type="password" class="content_r_tel" id="password" name="password">
            </p>
            <p class="content_r_l">确认密码：
                <input type="password" class="content_r_tel" id="password1">
            </p>
            <p class="post_btn" onclick="ChangePwd()">提交 </p> <span type="text" id="pwd_prompt1"/>
        </div>
        </form>
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
            <p class="footer_inform0">联系我们（9:00 － 18:00）</p>
            <p class="footer_inform1">400-000-0000</p>
            <p class="footer_inform2">wuxiandao@zhongchou.com</p>
            <p class="footer_inform0">qq群：123456789</p>
        </div>
        <div class="footer_a3 fr">
            <p class="footer_ewm">微信公众号</p>
            <p><img src="${pageContext.request.contextPath}/images/foot_ewm_05.png" alt=""></p>
        </div>
    </div>
    <p class="footer_bottom">©版权所有</p>
</div>
<!--尾部end-->
</body>



<script>


    function ChangePwd(){

        var formObject = {};
        var flag=true;
        if(!checkpsw()){flag=false}

        if(flag){
            var form = $("#forgetpwd").serializeArray();
            $.each(form,function(i,item){
                formObject[item.name] = item.value;
            });
            var data=JSON.stringify(formObject);
            alert(data);
            $.ajax({
                url:'${pageContext.request.contextPath}/forgetlogin.action',
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
                        alert("修改密码成功");
                        window.location.href = "${pageContext.request.contextPath}/To_login.action";
                    }
                    else
                    {
                        alert("修改密码失败");

                    }
                },
                error:function (data) {
                  alert("验证码错误");
                }
            })

        }else{
            return;
        }

    }


    function getphonecheck() {
        var formObject = {};
        var phone=$("#phone").val();
        if(phone==""){
            $("#phone").css("border","1px solid red")
            $("#pwd_prompt1").html("请输入手机号") .css("color","red")
            return false
        }else {
            var form = $("#forgetpwd").serializeArray();
            $.each(form,function(i,item){
                formObject[item.name] = item.value;
            });
            var data=JSON.stringify(formObject);
            $.ajax({
                url:'${pageContext.request.contextPath}/getPhoneForgetlogin.action',
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
                        alert("发送验证码成功");
                    }
                    else
                    {
                        alert("发送验证码失败");

                    }
                }
            })
        }

    }


    function checkpsw() {
        var pwd=$("#password").val()
        var checkpwd=$("#password1").val()
        if(pwd==""){
            $("#password").css("border","1px solid red")
            $("#pwd_prompt1").html("*请输入密码") .css("color","red")
            return false
        }
        else {
            if(pwd.length<6){
                $("#pwd_prompt1").html("密码长度至少为6个字符") .css("color","red")
                return false
            }
            else  {
                if(pwd!=checkpwd)
                {
                    $("#pwd_prompt1").html("密码不一致，请重新输入")
                    return false
                }
                else {
                    $("#password").css("border","1px solid black")
                    $("#pwd_prompt1").html("")
                    return true
                }

            }

        }

    }


    $(function () {
        $("#password").blur(checkpsw)
    })

    $("input").hover(
        function () {
            /* $(this).css("border","1px solid blue")*/
            $(this).addClass("oninput")
        },
        function () {
            $(this).removeClass("oninput")
        }
        )
</script>

</html>

