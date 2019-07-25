<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/23
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<html>
<head>
    <title>商品管理</title>
</head>
<body>
<div class="layui-row" id="EditProduct" style="display:none;">
    <div class="layui-col-md10">
        <form class="layui-form layui-from-pane" id="updateUser"   style="margin-top:20px" >

            <div class="layui-form-item">
                <label class="layui-form-label">产品名称</label>
                <div class="layui-input-block">
                    <input type="text" name="name" id="name"  required  lay-verify="required" autocomplete="off" placeholder="请输入产品名称" class="layui-input">
                </div>
            </div>

            <input type="hidden" name="id" id="id">
            <input type="hidden" name="userid" id="userid">
            <input type="hidden" name="image" id="image" value="" >


            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">产品类型</label>
                    <div class="layui-input-block">
                        <input type="text" name="typeid" id="typeid"  required  lay-verify="required" autocomplete="off" placeholder="请输入回报金额" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">产品种类</label>
                    <div class="layui-input-block">
                        <input type="text" name="kindid" id="kindid"  required  lay-verify="required" autocomplete="off" placeholder="请输入回报内容" class="layui-input">
                    </div>
                </div>
            </div>

            <div class="layui-form-item" hidden >
                <label class="layui-form-label">产品类型</label>
                <div class="layui-input-block">
                    <select name="typeid" id="typeid1" lay-filter="aihao">
                        <option value="0">公益众筹</option>
                        <option value="1">普通众筹</option>
                    </select>
                </div>
            </div>

            <div class="layui-form-item"  hidden>
                <label class="layui-form-label">产品种类</label>
                <div class="layui-input-block">
                    <select name="kindid"  id="kindid1" lay-filter="aihao">
                        <option value="1">影音</option>
                        <option value="2">公益</option>
                        <option value="3">书籍</option>
                        <option value="4">娱乐</option>
                        <option value="5">科技</option>
                        <option value="6">设计</option>
                        <option value="7">农业</option>
                        <option value="8">动漫</option>
                        <option value="9">游戏</option>
                        <option value="10">其他</option>
                    </select>
                </div>
            </div>

            <div class="layui-form-item" id="showImg">
                <label class="layui-form-label">产品图片</label>
                <div class="layui-input-block">
                    <img class="layui-upload-img"  id="imgshow" src="" style="width:100px;height:100px;" >
                </div>
            </div>

            <div class="layui-form-item" >
                <label class="layui-form-label">产品系列图</label>
                 <div id="showImg1">

                 </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">产品简介</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入产品细节" class="layui-textarea"  id="introduce" name="introduce"></textarea>
                </div>
            </div>

            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">产品细节</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入产品细节" class="layui-textarea"  id="detail" name="detail"></textarea>
                </div>
            </div>



            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">筹集金额</label>
                    <div class="layui-input-block">
                        <input type="text" name="needmoney" id="needmoney"  required  lay-verify="required" autocomplete="off" placeholder="请输入筹集金额" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">支持金额</label>
                    <div class="layui-input-block">
                        <input type="text" name="supmoney" id="supmoney"  required  lay-verify="required" autocomplete="off" placeholder="请输入支持金额" class="layui-input">
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">支持人数</label>
                    <div class="layui-input-block">
                        <input type="text" name="numsup" id="numsup"  required  lay-verify="required" autocomplete="off" placeholder="请输入支持人数" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">收藏人数</label>
                    <div class="layui-input-block">
                        <input type="text" name="numcol" id="numcol"  required  lay-verify="required" autocomplete="off" placeholder="请输入收藏人数" class="layui-input">
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">回报金额</label>
                    <div class="layui-input-block">
                        <input type="text" name="backmoney" id="backmoney"  required  lay-verify="required" autocomplete="off" placeholder="请输入回报金额" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">回报内容</label>
                    <div class="layui-input-block">
                        <input type="text" name="backcontent" id="backcontent"  required  lay-verify="required" autocomplete="off" placeholder="请输入回报内容" class="layui-input">
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">团队简介</label>
                    <div class="layui-input-block">
                        <input type="text" name="teambrief" id="teambrief"  required  lay-verify="required" autocomplete="off" placeholder="请输入团队简介" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">团队电话</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="teamtel" id="teamtel"  lay-verify="required|phone" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>

            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">团队细节</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入团队细节" class="layui-textarea"  id="teamdetail" name="teamdetail"></textarea>
                </div>
            </div>


            <div class="layui-form-item" style="margin-top:40px" id="check" hidden>
                <div class="layui-input-block">
                    <button class="layui-btn  layui-btn-submit " lay-submit="" lay-filter="formDemo" >确认修改</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>


<div class="demoTable" style="padding: 15px">
    搜索产品名：
    <div class="layui-inline">
        <input class="layui-input" id="find" autocomplete="off">
    </div>
    <button class="layui-btn" data-type="reload" id="queryRole" >搜索</button>
</div>

<table class="layui-hide" id="Products" lay-filter="test"></table>

<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
    </div>
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
    <%--<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>--%>
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
    layui.use(['table', 'layer'], function () {
        var table = layui.table,
            layer = layui.layer

            table.render({
            elem: '#Products'
            ,url:'${pageContext.request.contextPath}/ShowAllProducts.action'
            ,type:'post'
            ,toolbar: '#toolbarDemo'
            ,title: '用户数据表'
            ,totalRow: true
            ,limit:10
            ,cols: [[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'id', title:'ID', width:80, fixed: 'left', unresize: true, sort: true, totalRowText: '合计'}
                ,{field:'fname', title:'发起人', width:100, edit: 'text',sort: true, totalRow: true,templet:'<div>{{d.user.fname}}</div>'}
                ,{field:'typename', title:'类型', width:120, edit: 'text'}
                ,{field:'kidename', title:'产品种类', width:100, edit: 'text'}
                ,{field:'name', title:'名字', width:120, sort: true,}
                ,{field:'introduce', title:'产品介绍', width:120,sort: true}
                ,{field:'rule', title:'众筹规则',width:140,sort: true,}
                ,{field:'image', title:'产品图片', width:'10%',sort:true, templet:'<div><img width="120" height="50" src="/file/{{d.image}}"></div>'}
                ,{field:'needmoney', title:'众筹金额', width:160}
                ,{field:'numsup', title:'支持人数', width:120,sort: true, totalRow: true}
                ,{field:'numcol', title:'收藏人数', width:120,sort: true, totalRow: true}
                ,{field:'statue', title:'产品状态', width:120,sort: true,templet:function (d) {
                       var status=d.statue;
                       if (status==1)
                       {
                           return "待众筹";
                       }else if (status==2)
                       {
                           return "众筹中";
                       }else if (status==3){
                           return "完成众筹";
                       }
                    }}
                ,{field:'teambrief', title:'团队简介', width:120,sort: true}
                ,{field:'teamdetail', title:'团队介绍', width:120,sort: true}
                ,{field:'teamtel', title:'团队联系', width:120,sort: true}
                ,{field:'startdate', title:'开启时间', width:120,sort: true, templet:function (d) {
                        var date=new Date(d.startdate)
                        var year = date.getFullYear()+'年';
                        var month = date.getMonth()+1+'月';
                        var date = date.getDate()+'日';
                        var date1=[year,month,date].join('')
                        return date1;
                    }}
                ,{field:'deadline', title:'截至时间', width:140,sort: true, templet:function (d) {
                        var date=new Date(d.deadline)
                        var year = date.getFullYear()+'年';
                        var month = date.getMonth()+1+'月';
                        var date = date.getDate()+'日';
                        var date1=[year,month,date].join('')
                        return date1;
                    }}
                ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:120}
            ]]
            ,page: true

        });


        //根据phone关键字查询
        $('#queryRole').on('click', function(){
            var find=document.getElementById("find").value;
            table.reload('Products', {
                page:{ curr:1 },
                url:'${pageContext.request.contextPath}/selectProductByName.action',
                where:{'name':find}

            })
        });


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
                $("#name").val(data.name);
                $("#typeid").val(data.typename);
                $("#kindid").val(data.kidename);
                $("#introduce").val(data.introduce);
                $("#detail").val(data.detail);
                $("#rule").val(data.rule);
                $("#supmoney").val(data.supmoney);
                $("#backcontent").val(data.backcontent);
                $("#needmoney").val(data.needmoney);
                $("#backmoney").val(data.backmoney);
                $("#teambrief").val(data.teambrief);
                $("#teamdetail").val(data.teamdetail);
                $("#teamtel").val(data.teamtel);
                $("#numsup").val(data.numsup);
                $("#numcol").val(data.numcol);
                $('#imgshow').attr('src', "/file/"+data.image);
                //遍历回报图片数组
                $('#showImg1').empty();
                $(data.imageUrls).each(function (index) {
                    var image=data.imageUrls[index];
                    var str= ' <div class="layui-inline">'+
                    '<img class="layui-upload-img" src="/file/'+image+'" style="width:120px;height:200px;" ></div>';
                    $('#showImg1').append(str);
                })
                layer.open({
                    type:1,
                    offset: '10px',
                    title:"查看产品信息",
                    area: ['1080px', '620px'],
                    content: $("#EditProduct")
                });
                // layer.msg('ID：'+ data.id + ' 的查看操作');
            } else if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    $.ajax({
                        url:'${pageContext.request.contextPath}/deleteProject.action',
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
                                加载层-风格
                            }else{
                                layer.msg("删除失败", {icon: 5});
                            }
                        }
                    })
                    obj.del();
                    layer.close(index);
                });
            // } else if(obj.event === 'edit'){
            //
            //     layer.open({
            //         type:1,
            //         offset: '10px',
            //         title:"修改产品信息",
            //         area: ['1080px', '620px'],
            //         content: $("#EditProduct")
            //     });
            }
        });



    });


</script>
</body>
</html>
