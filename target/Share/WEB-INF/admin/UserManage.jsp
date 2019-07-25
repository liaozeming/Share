<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/22
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<html>
<head>
    <title>显示用户</title>
</head>
<body>
<div class="layui-row" id="EditUser" style="display:none;">
    <div class="layui-col-md10">
        <form class="layui-form layui-from-pane" id="updateUser"   style="margin-top:20px" >

            <input type="hidden" name="isadmin" id="isadmin">
            <input type="hidden" name="id" id="id">
            <input type="hidden" name="isforbid" id="isforbid">
            <input type="hidden" name="isable" id="isable">
            <input type="hidden" name="rtime" id="rtime">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-block">
                    <input type="text" name="fname" id="fname"  required  lay-verify="required" autocomplete="off" placeholder="请输入用户名" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">手机号</label>
                <div class="layui-input-block">
                    <input type="text" name="phone" id="phone" required  lay-verify="required" autocomplete="off" placeholder="请输入年龄" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">邮箱</label>
                <div class="layui-input-block">
                    <input type="text" name="email" id="email" required  lay-verify="required" autocomplete="off" placeholder="请输入邮箱" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-block">
                    <input type="text" name="password" id="password" required  lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">真实姓名</label>
                <div class="layui-input-block">
                    <input type="text" name="name" id="name" required  lay-verify="required" autocomplete="off" placeholder="请输入真实姓名" class="layui-input">
                </div>
            </div>


            <div class="layui-form-item" id="showImg">
                <label class="layui-form-label">头像</label>
                <div class="layui-input-block">
                    <img class="layui-upload-img"  id="imgshow" src="" style="width:100px;height:100px;" >
                </div>
            </div>


            <div  class="layui-upload"  id="updateImg">
                <button type="button"  class="layui-btn layui-btn-primary" id="img" style="margin-top: 30px;margin-left: 10px">修改头像</button>
                <div class="layui-upload-list" style="margin-left: 120px;margin-top: -50px"  >
                    <img class="layui-upload-img" id="demo1" src="" style="width:100px;height:100px;" >
                    <p id="demoText"></p>
                </div>
            </div>

            <input type="hidden" name="headimg" id="headimg" value="" >


            <div class="layui-form-item">
                <label class="layui-form-label">自我介绍</label>
                <div class="layui-input-block">
                    <input type="text" name="introduce" id="introduce" required  lay-verify="required" autocomplete="off" placeholder="请输入自我介绍" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item" style="margin-top:40px" id="check">
                <div class="layui-input-block">
                    <button class="layui-btn  layui-btn-submit " lay-submit="" lay-filter="formDemo" >确认修改</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>


<div class="demoTable" style="padding: 15px">
    搜索手机号：
    <div class="layui-inline">
        <input class="layui-input" id="find" autocomplete="off">
    </div>
    <button class="layui-btn" data-type="reload" id="queryRole" >搜索</button>
</div>

<table class="layui-hide" id="Users" lay-filter="test"></table>



<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
    </div>
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<style type="text/css">
    td div.layui-table-cell{height:60px;
        line-height: 60px;
        position: relative;
        text-overflow: ellipsis;
        white-space: nowrap;
        box-sizing: border-box;
        padding: 0px 15px;
        overflow: hidden;
    }
</style>

<script>
    layui.use(['table', 'form', 'layer','upload'], function () {
        var table = layui.table,
            layer = layui.layer,
            upload = layui.upload,
             // $ = layui.jquery
            form = layui.form;
        table.render({
            elem: '#Users'
            ,url:'${pageContext.request.contextPath}/ShowAllUser.action'
            ,type:'post'
            ,toolbar: '#toolbarDemo'
            ,title: '用户数据表'
            ,totalRow: true
            ,limit:6
            ,cols: [[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'id', title:'ID', width:80, fixed: 'left', unresize: true, sort: true, totalRowText: '合计'}
                ,{field:'fname', title:'用户名', width:100, edit: 'text',sort: true, totalRow: true}
                ,{field:'phone', title:'手机号', width:120, edit: 'text'}
                ,{field:'email', title:'邮箱', width:100, edit: 'text'}
                ,{field:'password', title:'密码', width:120, sort: true,}
                ,{field:'name', title:'名字', width:120,sort: true}
                ,{field:'idcard', title:'身份证号',width:140,sort: true,}
                ,{field:'headimg', title:'头像', width:'10%',sort:true, templet:'<div><img width="120" height="50" src="/file/{{d.headimg}}"></div>'}
                ,{field:'introduce', title:'介绍', width:160}
                ,{field:'rtime', title:'加入时间', width:140, templet:function (d) {
                        var date=new Date(d.rtime)
                        var year = date.getFullYear()+'年';
                        var month = date.getMonth()+1+'月';
                        var date = date.getDate()+'日';
                        var date1=[year,month,date].join('')
                        return date1;
                    }}
                ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:200}
            ]]
            ,page: true

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
                demoText.find('.demo-reload').on('click', function(){
                    uploadInst.upload();
                });
            }
        });



        //根据phone关键字查询
        $('#queryRole').on('click', function(){
            var find=document.getElementById("find").value;
            table.reload('Users', {
                page:{ curr:1 },
                url:'${pageContext.request.contextPath}/selectUserByPhone.action',
                where:{'phone':find}

           })
        });


        form.on('submit(formDemo)', function(data) {
            $.ajax({
                url:'${pageContext.request.contextPath}/updateUser.action',
                type:'post',
                contentType:'application/json',
                data:JSON.stringify(data.field),
                success:function (msg) {
                    if(msg!=null){
                        layer.closeAll('loading');
                        layer.load(2);
                        layer.msg("修改成功", {icon: 6});
                        setTimeout(function(){
                            layer.closeAll();//关闭所有的弹出层
                            table.reload("Users");
                        }, 1000);
                        加载层-风格
                    }else{
                        layer.msg("修改失败", {icon: 5});
                    }
                }
            })
            return false;
        })



        //工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            switch(obj.event){
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：'+ data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选')
                    break;
            };
        });


        //监听工具条
        table.on('tool(test)', function(obj){
            var data = obj.data;
            //查看
            if(obj.event === 'detail'){
                $("#check").hide();
                $("#showImg").show();
                $("#updateImg").hide();
                $("#isadmin").val(data.isadmin);
                $("#id").val(data.id);
                $("#isforbid").val(data.isforbid);
                $("#isable").val(data.isable);
                $("#rtime").val(data.rtime);
                $("#fname").val(data.fname);
                $("#phone").val(data.phone);
                $("#email").val(data.email);
                $("#password").val(data.password);
                $("#name").val(data.name);
                $("#idcard").val(data.idcard);
                $('#imgshow').attr('src', "/file/"+data.headimg);
                $('#demo1').attr('src', "/file/"+data.headimg);
                $("#introduce").val(data.introduce);
                layer.open({
                    type:1,
                    offset: '10px',
                    title:"查看个人信息",
                    area: ['520px', '540px'],
                    content: $("#EditUser")
                });
                // layer.msg('ID：'+ data.id + ' 的查看操作');
            } else if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    $.ajax({
                        url:'${pageContext.request.contextPath}/deleteUser.action',
                        type:'GET',
                        data:{
                            id:data.id
                        },
                        success:function (msg) {
                            if(msg=="1"){
                                layer.msg("删除成功", {icon: 6});
                                setTimeout(function(){
                                    layer.closeAll();//关闭所有的弹出层
                                }, 1000);

                            }else{
                                layer.msg("删除失败", {icon: 5});
                            }
                        }
                    })
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                $("#check").show();
                $("#showImg").hide();
                $("#updateImg").show();
                // layer.alert('编辑行：<br>'+ JSON.stringify(obj.data.address))
                // alert(data.fname);
                $("#id").val(data.id);
                $("#fname").val(data.fname);
                $("#phone").val(data.phone);
                $("#email").val(data.email);
                $("#password").val(data.password);
                $("#name").val(data.name);
                $("#idcard").val(data.idcard);
                $('#imgshow').attr('src', "/file/"+data.headimg);
                $('#demo1').attr('src', "/file/"+data.headimg);
                $("#introduce").val(data.introduce);
                layer.open({
                    type:1,
                    offset: '10px',
                    title:"修改个人信息",
                    area: ['520px', '590px'],
                    content: $("#EditUser")
                });
            }
        });




    });

</script>

</body>
</html>
