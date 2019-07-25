<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/12
  Time: 12:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
</head>
<body>
<form class="layui-form goodsAddForm" action="" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">商品名称</label>
        <div class="layui-input-block">
            <input type="text" name="title" id="title" required lay-verify="required" placeholder="请输入商品名称" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">商品副标题</label>
        <div class="layui-input-block">
            <textarea name="smallTit" id="smallTit" placeholder="商品副标题：" class="layui-textarea"></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">商品图片上传</label>
        <div class="layui-input-block">
            <button type="button" class="layui-btn" id="test1">
                <i class="layui-icon">&#xe67c;</i>选择图片（最多选择20张，单张图片最大为10M）
            </button>
            <button type="button" class="layui-btn" id="test9">开始上传</button>
            <button type="button" class="layui-btn" id="cleanImgs"> <i class="fa fa-trash-o fa-lg"></i>清空图片预览</button>
        </div>
        <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;">
            预览图：
            <div class="layui-upload-list" id="demo2"></div>
        </blockquote>
    </div>

    <input type="text" id="imgUrls" name="imgUrls" style="display: none;" class="layui-input">
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" type="button" style="width: 800px;" id="btnSubmit">添加商品</button>
        </div>
    </div>
</form>

<script>
    layui.use(['table', 'form', 'layer','upload'], function () {
        var table = layui.table,
            layer = layui.layer,
            upload = layui.upload,
            $ = layui.jquery
        form = layui.form;



        upload.render({
            elem: '#test1',
            url: '${pageContext.request.contextPath}/MultipleUpload.action',
            multiple: true,
            auto:false,
//			上传的单个图片大小
            size:10240,
//			最多上传的数量
            number:20,
//			MultipartFile file 对应，layui默认就是file,要改动则相应改动
            field:'file',
            bindAction: '#test9',
            before: function(obj) {
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result) {
                    $('#demo2').append('<img src="' + result
                        + '" alt="' + file.name
                        +'"height="92px" width="92px" class="layui-upload-img uploadImgPreView">')
                });
            },
            done: function(res, index, upload) {
                //每个图片上传结束的回调，成功的话，就把新图片的名字保存起来，作为数据提交
                console.log(res.code);
                if(res.code=="1"){
                    fail++;
                }else{
                    success++;
                    imgurls=imgurls+""+res.data.src+",";
                    $('#imgUrls').val(imgurls);
                }
            },
            allDone:function(obj){
                layer.msg("总共要上传图片总数为："+(fail+success)+"\n"
                    +"其中上传成功图片数为："+success+"\n"
                    +"其中上传失败图片数为："+fail
                )
            }
        });

   //清空预览图片
        cleanImgsPreview();
        //保存商品
        goodsSave();

    });


    /**
     * 清空预览的图片
     * 原因：如果已经存在预览的图片的话，再次点击上选择图片时，预览图片会不断累加
     * 表面上做上传成功的个数清0
     */
    function cleanImgsPreview(){
        $("#cleanImgs").click(function(){
            success=0;
            fail=0;
            $('#demo2').html("");
            $('#imgUrls').val("");
        });
    }

    /**
     * 保存商品
     */
    function goodsSave(){
        $('#btnSubmit').click(function(){
            var tt=$("#title").val();
            var st=$("#smallTit").val();
            var ius=$("#imgUrls").val();

            $.ajax({
                type: "POST",
                url: "/saveGoods",
                data: {
                    title:tt,
                    smallTit:st,
                    imgUrls:ius,
                },
                success: function(msg){
                    if(msg=="1"){
                        alert("保存成功");
                    }else{
                        alert("保存失败");
                    }
                }
            });
        });
    }
</script>



</body>
</html>
