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
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/scanproj.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
</head>

<body>
<form id="projectsubimit" method="post" >
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
        <span class="logoo fl mt20"><img src="${pageContext.request.contextPath}/images/logo.jpg" width="160" height="80" alt="logo"></span>
        <div class="search fl mt30">
            <input type="text" placeholder="输入关键字">
            <a href=""><img src="${pageContext.request.contextPath}/images/mark_search_05.png" alt="搜索" /></a>
        </div>
        <div class="mark_group fr clearfix">
            <span class="mark_logo1 fl"><span class="mlogo_1">新品尝鲜</span><span class="mlogo_2">海量商品&nbsp;第一手尝鲜</span></span>
            <span class="mark_logo2 fl"><span class="mlogo_1">全额返还</span><span class="mlogo_2">邀请码使用次数完成</span></span>
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
<!--主体start--><!--第一步-->
<div class="deproj_ctn step1">
    <!--项目进度条start-->
    <div class="deproj_head">
        <div class="deproj_line"></div>
        <div class="deproj_prcs clearfix">
            <div class="d_prcs">
                <p><span class="d_prcs1 d_pactive">1</span><span class="d_prcs2">项目及发起人信息</span></p>
            </div>
            <div class="d_prcs">
                <p><span class="d_prcs1">2</span><span class="d_prcs2">回报设置</span></p>
            </div>
            <div class="d_prcs">
                <p><span class="d_prcs1">3</span><span class="d_prcs2">确认信息</span></p>
            </div>
        </div>
    </div>
    <!--项目进度条end-->
    <div class="deproj_body">
        <h4>项目发起人联系信息</h4>
        <dl>
            <dt>项目信息</dt>
            <input type="hidden" name="userid" id="userid" value="${sessionScope.user.id}">
            <dd class="clearfix">
                <span class="proj_inf">众筹类型：</span>


                    <input id="style1" class="proj_inf_inp style_normal" type="radio" name="typeid" value="1" />
                    <label for="style1">普通众筹</label>
                    <input id="style2" class="proj_inf_inp style_free" type="radio" name="typeid" value="0" />
                    <label for="style2">免费试用</label>

            </dd>
            <dd class="clearfix">
                <span class="proj_inf">选择分类：</span>

                <input id="classify1" class="proj_inf_inp" type="radio" name="kindid" value="1" />
                <label for="classify1">影音</label>
                <input id="classify2" class="proj_inf_inp" type="radio" name="kindid" value="2" />
                <label for="classify2">公益</label>
                <input id="classify3" class="proj_inf_inp" type="radio" name="kindid" value="3" />
                <label for="classify3">书籍</label>
                <input id="classify4" class="proj_inf_inp" type="radio" name="kindid" value="4" />
                <label for="classify4">娱乐</label>
                <input id="classify5" class="proj_inf_inp" type="radio" name="kindid" value="5" />
                <label for="classify5">科技</label>
                <input id="classify6" class="proj_inf_inp" type="radio" name="kindid" value="6" />
                <label for="classify6">设计</label>
                <input id="classify7" class="proj_inf_inp" type="radio" name="kindid" value="7" />
                <label for="classify7">动漫</label>
                <input id="classify8" class="proj_inf_inp" type="radio" name="kindid" value="8" />
                <label for="classify8">游戏</label>
                <input id="classify9" class="proj_inf_inp" type="radio" name="kindid" value="9" />
                <label for="classify9">农业</label>
                <input id="classify10" class="proj_inf_inp" type="radio" name="kindid" value="0" />
                <label for="classify10">其他</label>

            </dd>

            <dd class="clearfix">
                <span class="proj_inf">项目名称：</span>
                <input class="proj_name" type="text" name="name" maxlength="40" placeholder="项目名称不超过20个字" />
            </dd>
            <dd class="clearfix">
                <span class="proj_inf">项目简介：</span>
                <textarea class="proj_brief" name="introduce" maxlength="100" placeholder="简单介绍一下你的项目，不超过50个字"></textarea>
            </dd>

            <dd class="clearfix">
                <span class="proj_inf">项目细节：</span>
                <textarea class="proj_brief" name="detail" maxlength="100" placeholder="详细介绍你的项目，并详细说明你与所发起的项目之间的背景让支持者能够在最短的时间内了解你，不超过160个字"></textarea>
            </dd>

            <div class="layui-inline">
                <label class="proj_inf">截止时间：</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="lasttime" id="test5" placeholder="项目截至时间">
                </div>
            </div>

            <div  class="layui-upload" style="margin-left: 140px" >
                <div class="layui-upload-list"  >
                    <img class="layui-upload-img" id="demo1" src="/file/black.jpg" style="width:100px;height:100px;" >
                    <p id="demoText"></p>
                </div>
                <button type="button" class="layui-btn layui-btn-normal" id="img">项目图片</button>
            </div>

            <input type="hidden" name="image" id="image" value="" src="" >





            <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px; margin-left: 130px" >
                项目列表图：
                <div class="layui-upload-list" id="demo2" ></div>
            </blockquote>

            <div class="layui-input-block" style="margin-top: 10px ; margin-left: 58px" >
                <button type="button" class="layui-btn layui-btn-normal" id="test1"  style="margin-left: 80px" >
                    <i class="layui-icon">&#xe67c;</i>列表图片（最多选择20张，单张图片最大为10M）
                </button>
                <button type="button" class="layui-btn layui-btn-normal" id="test9">开始上传</button>
                <button type="button" class="layui-btn layui-btn-normal" id="cleanImgs"> <i class="fa fa-trash-o fa-lg"></i>清空图片预览</button>
            </div>



            <input type="hidden" name="imagelist" id="imagelist" value="" >


            <dd class="clearfix">
                <span class="proj_inf">视频介绍：</span>
                <input class="proj_url" type="text" name="detailvido" placeholder="填写视频链接" />
            </dd>
        
            <dd class="clearfix">
                <span class="proj_inf">规则说明：</span>
                <textarea class="rule_rep" name="rule" placeholder="填写规则说明"></textarea>
            </dd>
            <dt>发起人信息</dt>
            <dd class="clearfix">
                <span class="proj_inf">个人(团队)简介：</span>
                <input type="text" class="team_brief" name="teambrief" placeholder="一句简介不超过40个字" maxlength="40" />
            </dd>
            <dd class="clearfix">
                <span class="proj_inf">详细介绍：</span>
                <textarea class="team_detail" name="teamdetail" placeholder="详细介绍你自己或你的团队，并详细说明你与所发起的项目之间的背景让支持者能够在最短的时间内了解你，不超过160个字"></textarea>
            </dd>
            <dd class="clearfix">
                <span class="proj_inf">联系电话：</span>
                <input type="text" class="team_tel" name="teamtel" placeholder="此信息不会显示在项目页面里" />
            </dd>
        </dl>
        <div class="proj_p"><input class="input_button_yes go_step2" type="button" value="下一步"/></div>
    </div>
</div>
<!--第二步-->
<div class="deproj_ctn step2" style="display:none;">
    <!--项目进度条start-->
    <div class="deproj_head">
        <div class="deproj_line"></div>
        <div class="deproj_prcs clearfix">
            <div class="d_prcs">
                <p><span class="d_prcs1">1</span><span class="d_prcs2">项目及发起人信息</span></p>
            </div>
            <div class="d_prcs">
                <p><span class="d_prcs1 d_pactive">2</span><span class="d_prcs2">回报设置</span></p>
            </div>
            <div class="d_prcs">
                <p><span class="d_prcs1">3</span><span class="d_prcs2">确认信息</span></p>
            </div>
        </div>
    </div>
    <!--项目进度条end-->
    <div class="deproj_body">
        <h4>回报设置</h4>
        <dl>
            <dt>回报设置</dt>
            <dd class="clearfix">
                <span class="proj_inf">回报类型：</span>

                <input class="proj_inf_inp" type="radio" name="backtype" value="1" />
                <label>实物回报</label>
                <input class="proj_inf_inp" type="radio" name="backtype" value="0" />
                <label>虚拟回报</label>

            </dd>
            <dd class="clearfix">
                <span class="proj_inf">筹资金额：</span>
                <input class="proj_name1" type="text" name="needmoney" placeholder="" />
                <label class="pj_unit">元</label>
            </dd>
            <dd class="clearfix">
                <span class="proj_inf">支持金额：</span>
                <input class="proj_name1" type="text" name="supmoney" placeholder="" />
                <label class="pj_unit">元</label>
            </dd>
            <dd class="clearfix">
                <span class="proj_inf">回报内容：</span>
                <textarea class="proj_brief" name="backcontent" maxlength="200" placeholder="简单介绍一下你的项目，不超过200个字"></textarea>
            </dd>
            <dd class="clearfix">


                <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px; margin-left: 130px" >
                    说明图片：
                    <div class="layui-upload-list" id="demo3" ></div>
                </blockquote>
                <div class="layui-input-block" style="margin-top: 10px ; margin-left: 58px" >
                    <button type="button" class="layui-btn layui-btn-normal" id="test2"  style="margin-left: 80px" >
                        <i class="layui-icon">&#xe67c;</i>列表图片（最多选择20张，单张图片最大为10M）
                    </button>
                    <button type="button" class="layui-btn layui-btn-normal" id="test3">开始上传</button>
                    <button type="button" class="layui-btn layui-btn-normal" id="cleanImgs3"> <i class="fa fa-trash-o fa-lg"></i>清空图片预览</button>
                </div>

                <input type="hidden" name="backimage" id="backimage" value="" >

            </dd>
            <dd class="clearfix">
                <span class="proj_inf">运费：</span>
                <input class="proj_name1" type="text" name="sendmoney" placeholder="0" />
                <label class="pj_unit">元&nbsp;“0”为包邮</label>
            </dd>
            <dd class="clearfix">
                <span class="proj_inf">发票：</span>

                <input class="proj_inf_inp" type="radio" name="isticket" value="0" />
                <label>不可开发票</label>
                <input class="proj_inf_inp" type="radio" name="isticket" value="1" />
                <label>可开发票(包括个人发票和自定义抬头发票)</label>

            </dd>
            <dd class="clearfix">
                <span class="proj_inf">回报时间：</span>
                <p class="repay_time">项目结束后
                    <input class="rep_time" type="text" name="backtime" value="30"/>天，向支持者发送回报</p>
            </dd>
        </dl>
        <div class="proj_p clearfix">
            <input class="input_button_yes fl go_step3" type="button" value="下一步"/>
            <input class="input_button_no fr go_step1" type="button" value="上一步"/>
        </div>
    </div>
</div>
<!--第三步-->
<div class="deproj_ctn step3" style="display:none;">
    <!--项目进度条start-->
    <div class="deproj_head">
        <div class="deproj_line"></div>
        <div class="deproj_prcs clearfix">
            <div class="d_prcs">
                <p><span class="d_prcs1">1</span><span class="d_prcs2">项目及发起人信息</span></p>
            </div>
            <div class="d_prcs">
                <p><span class="d_prcs1">2</span><span class="d_prcs2">回报设置</span></p>
            </div>
            <div class="d_prcs">
                <p><span class="d_prcs1 d_pactive">3</span><span class="d_prcs2">确认信息</span></p>
            </div>
        </div>
    </div>
    <!--项目进度条end-->
    <div class="deproj_body">
        <h4>确认信息</h4>
        <p class="deproj_confirm">请先预览确认信息，提交后不能进行更改了哦</p>
        <div class="proj_p clearfix">
            <a class="input_button_yes fl" target="_blank" href="projectdetail.html">预览</a>
            <input class="input_button_yes fl" type="button" onclick="projectsubimit()" value="提交"/>
            <input class="input_button_no fr go_step2" type="button" value="上一步"/>

        </div>
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
            <img src="src/images/foot_ewm_05.png" alt="">
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
</form>
</body>

</html>
<script>

    layui.use(['table','laydate',  'layer','upload'], function () {
        var table = layui.table,
            layer = layui.layer,
            upload = layui.upload,
            $ = layui.jquery
        var laydate = layui.laydate;
        //多张图片上传变量
        var success=0;
        var fail=0;
        var imgurls="";


        //日期时间选择器
        laydate.render({
            elem: '#test5'
            ,type: 'datetime'
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
                $("[name=image]").val(res.data);
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
                    $("[name=imagelist]").val(imgurls);
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


        upload.render({
            elem: '#test2',
            url: '${pageContext.request.contextPath}/MultipleUpload.action',
            multiple: true,
            auto:false,
//			上传的单个图片大小
            size:10240,
//			最多上传的数量
            number:20,
//			MultipartFile file 对应，layui默认就是file,要改动则相应改动
            field:'file',
            bindAction: '#test3',
            before: function(obj) {
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result) {
                    $('#demo3').append('<img src="' + result
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
                    $("[name=backimage]").val(imgurls);
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
        cleanImgsPreview1();

    });



    function cleanImgsPreview1(){
        $("#cleanImgs3").click(function(){
            success=0;
            fail=0;
            $('#demo3').html("");
            $('#backimage').val("");
        });
    }

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


    function projectsubimit(){

            var formObject = {};
            var form = $("#projectsubimit").serializeArray();
            $.each(form,function(i,item){
                formObject[item.name] = item.value;
            });
            var data=JSON.stringify(formObject);
            // alert(data.imgUrls);
            $.ajax({
                url:'${pageContext.request.contextPath}/AddProject.action',
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
                        alert("添加成功");
                        window.location.href = "${pageContext.request.contextPath}/ToMain.action";
                    }
                    else
                    {
                        alert("添加失败");

                    }
                }
            })

    }


    $(".uploadpic").change(function(){
        $(this).parent().siblings().children("img").attr("src",URL.createObjectURL($(this)[0].files[0])).css({"width":"148px","height":"90px"});
        $(this).parent().siblings().children("span").html("");
    })

    var user="${sessionScope.user.fname}"
    if(user!=null){
        $(".lr1").hide()
        $(".zhuxiao").show();
    }

</script>
