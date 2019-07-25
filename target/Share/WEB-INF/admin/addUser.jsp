<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/23
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<html>
<head>
    <title>增加用户</title>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>增加用户</legend>
</fieldset>
<form class="layui-form"  action="" style="margin-left: 30px">
    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-block">
            <input type="text" name="fname" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div  class="layui-upload"  id="updateImg" >
        <label class="layui-form-label">用户头像</label>
        <div class="layui-upload-list">
            <img class="layui-upload-img" id="demo1" src="/file/${sessionScope.user.headimg}" style="width:100px;height:100px;" >
            <p id="demoText"></p>
        </div>
        <button type="button"  class="layui-btn" id="img"  style="margin-left: 110px;margin-bottom: 20px">上传头像</button>
    </div>

    <input type="hidden" name="headimg" id="headimg" value="" >

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">手机号</label>
            <div class="layui-input-inline">
                <input type="tel" name="phone" lay-verify="required|phone" placeholder="请输入手机号" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">邮箱</label>
            <div class="layui-input-inline">
                <input type="text" name="email" lay-verify="email" placeholder="请输入邮箱" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-block">
            <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">真实姓名</label>
        <div class="layui-input-block">
            <input type="text" name="name" required  lay-verify="required" placeholder="请输入真实姓名" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">身份证号</label>
        <div class="layui-input-block">
            <input type="text" name="idcard" lay-verify="identity"   placeholder="请输入身份证号" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">个人介绍</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入个人介绍" name="introduce" class="layui-textarea"></textarea>
        </div>
    </div>


    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
            <button type="reset" id="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<script>
    //Demo
    layui.use([ 'form', 'layer','upload'], function () {
        var form = layui.form;
            layer = layui.layer,
            upload = layui.upload,

        //监听提交
        form.on('submit(formDemo)', function(data){
            $.ajax({
                url:'${pageContext.request.contextPath}/AddUser.action',
                type:'post',
                contentType:'application/json',
                data:JSON.stringify(data.field),
                success:function (msg) {
                    if(msg==1){
                        layer.closeAll('loading');
                        layer.load(2);
                        layer.msg("添加成功", {icon: 6});
                        setTimeout(function(){
                            layer.closeAll();//关闭所有的弹出层
                        }, 1000);
                        $("#reset").trigger("click");
                        $('#demo1').attr('src', "/file/${sessionScope.user.headimg}");
                        加载层-风格
                    }else if (msg==0) {
                        layer.msg("用户名重复", {icon: 5});
                    }
                    else if (msg==2) {
                        layer.msg("手机号已注册", {icon: 5});
                    }
                }
            })
            return false;
        });


        // 修改头像
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
            }
        });
    });
</script>
</body>
</html>
