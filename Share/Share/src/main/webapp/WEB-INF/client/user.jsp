<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/11
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>我的众筹</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
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
            <span class="top_r fr">
          <span class="lrall"><a href="#" class="username">${sessionScope.user.fname} </a>，欢迎您</span>
              <span style="display:none" class="zhuxiao"><a href="${pageContext.request.contextPath}/LoginOut.action">注销</a></span>
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
            <img class="head_img" width="100" height="100" src="/file/${sessionScope.user.headimg}"/>
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
        <div class="user_nav_bubai"  style="height:365px"></div>
    </div>
    <div class="user_content fr">
        <header>
            个人资料
        </header>
        <div class="user_main clearfix">
            <form class="layui-form layui-from-pane" action=""  id="UpdateUserForm" >
                <div class="user_data_input fl">

                    昵称：<input class="input_name" type="text"   maxlength="20" name="fname" value="${sessionScope.user.fname}"/>
                    <br>
                    电话：<input class="input_name"   type="text" style="margin-top: 10px" maxlength="20" name="phone" value="${sessionScope.user.phone}"/>
                    <br>
             <%--<span style="margin-left: -10px">验证码：</span><input class="input_check"  type="text" style="margin-top: 10px" maxlength="10" name="phonecheck" value="${sessionScope.user.phone}"/>--%>
                    <%--<br>--%>
                    邮箱：<input class="input_name" type="text"  maxlength="20" style="margin-top: 10px;padding:0 0 0 0px;" name="email" value="${sessionScope.user.email}"/>
                    <br>
                    简介：<input class="input_text" type="textarea"  maxlength="100" name="introduce" value="${sessionScope.user.introduce}"></input>

                    <div  class="layui-upload" style="margin-left: 600px ;margin-top: -170px">
                        <div class="layui-upload-list"  >
                            <img class="layui-upload-img" id="demo1" src="/file/${sessionScope.user.headimg}" style="width:100px;height:100px;" >
                            <p id="demoText"></p>
                        </div>
                        <button type="button" class="layui-btn" id="img">修改头像</button>
                    </div>

                    <input type="hidden" name="headimg" id="headimg" value="${sessionScope.user.headimg}" >

                    <input type="hidden" name="id" id="id" value="${sessionScope.user.id}">

                    <div class="layui-form-item" style="margin-top:40px">
                        <div class="layui-input-block">
                            <button class="layui-btn  layui-btn-submit " lay-submit="" lay-filter="formDemo" type="button">确认修改</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>

                </div>
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
<script type="text/javascript"  language="javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/user.js"></script>
</body>
</html>
<script>
    layui.use(['table', 'form', 'layer','upload'], function () {
        var table = layui.table,
            layer = layui.layer,
            upload = layui.upload,
            $ = layui.jquery
        form = layui.form;
        form.on('submit(formDemo)', function(data) {
            $.ajax({
                url:'${pageContext.request.contextPath}/UpdateUser.action',
                type:'post',
                contentType:'application/json',
                data:JSON.stringify(data.field),
                success:function (msg) {
                    if(msg=="1"){
                        $('#demo1').attr('src','/file/${sessionScope.user.headimg}');
                        layer.closeAll('loading');
                        layer.load(2);
                        layer.msg("更新成功", {icon: 6});
                        setTimeout(function(){
                            layer.closeAll();//关闭所有的弹出层
                            window.location.href = "${pageContext.request.contextPath}/ToUser.action";
                            // $("#UpdateUserForm")[0].reset();
                        }, 1000);
                        加载层-风格
                    }else{
                        layer.msg("更新失败", {icon: 5});
                    }
                }
            })
            return false;
        });


        // 图片上传
        upload.render({
            elem: '#img'
            ,url: '${pageContext.request.contextPath}/picture/upload.action'
            ,before: function(obj){
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result){
                    $('#demo1').attr('src', result); //图片链接（base64）
                });
            }
            ,done: function(res){
                $("[name=headimg]").val(res.data);
                style:'display:inline-block;max-width:50%;height:auto'
                //如果上传失败
                if(res.code > 0){
                    return layer.msg('上传失败');
                }else {
                    layer.msg("上传成功");
                }
                //上传成功
            }
            ,error: function(){
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function(){
                    uploadInst.upload();
                });
            }
        });


        //指定允许上传的文件类型
        upload.render({
            elem: '#test3'
            ,url: '${pageContext.request.contextPath}/file/upload.action'
            ,accept: 'file' //普通文件
            ,done: function(res){
                console.log(res)
            }
        });



    });
</script>

<script>

    $("input[type='file']").change(function(){
        var file = this.files[0];
        var url;
        if (window.FileReader) {
            var reader = new FileReader();
            reader.readAsDataURL(file);
            //监听文件读取结束后事件
            reader.onloadend = function (e) {
                url=e.target.result;
                $(".xiugai_img").attr("src",url).css({"width":"90px","height":"90px","border":"1px solid black"});
                //e.target.result就是最后的路径地址
            };
        }
        $(".input_button_yes").click(function(){
            $(".cur_img").attr("src",url).css({"width":"90px","height":"90px","border":"1px solid black"});
            $(".head_img").attr("src",url).css({"width":"90px","height":"90px","border":"1px solid black"});
            $(".input_url").val($(".file").val())
            $(this).parent().parent().parent().hide();
        })
    })


    $(function () {
        $(".list li").click(function () {

            $(".user_content").hide();
            $(".user_content").eq($(this).index()).show();

        })
    })
    var user="${sessionScope.user.fname}"
    if(user!=null){
        $(".lr1").hide()
        $(".zhuxiao").show();
    }
</script>
