<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/16
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>我的支持</title>
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
          <span class="nav_r1 fl"><a href="${pageContext.request.contextPath}/ToContract.action">发起项目</a></span>
         <span class="nav_r2 fl"><a href="${pageContext.request.contextPath}/ToHelp.action">新手帮助</a></span>
        </span>
    </nav>
    <!--nav end-->
</div>
<!--头部 结束-->
<!--主体部分-->
<div class="main clearfix">
    <!--我的众筹导航-->
    <div class="user_nav fl">
        <a class="data" >
            <img  width="100" height="100" src="/file/${sessionScope.user.headimg} "/>
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
        <header>我的支持</header>
        <div class="user_main">
            <ul class="project_nav clearfix">
                <li class="user_project_one project_all" onclick="ShowSupportProjects(1)">我的购买</li>
                <li class="project_lose" onclick="ShowSupportProjects(0)">免费试用</li>
            </ul>
            <!--我的购买-->

            <ul class="project_content" style="display:block;" id="SupportProject">

            </ul>
            <!--免费试用-->
            <ul class="project_content" style="display:none;" id="FreeProject">
            </ul>
        </div>
    </div>
</div>

<!--项目评论-->
<form id="projectComment" method="post"  >
<div class="bomb_comment_wrapper" style="display:none;"  id="comment">
    <div class="bomb_comment clearfix">
        <div class="bomb_title clearfix">
            <p class="fl">项目评论</p>
            <span class="close fr"></span>
        </div>
        <div class="layui-input-block" style="margin-left: 0px">
            <textarea placeholder="请输入内容" id="content"  name="content" class="layui-textarea"></textarea>
        </div>
        <div class="comment_img clearfix" style="margin-top: 50px">


                <button type="button" class="layui-btn layui-btn-normal" id="test2"   >
                    <i class="layui-icon">&#xe67c;</i>列表图片（最多选择20张，单张图片最大为10M）
                </button>
                <button type="button" class="layui-btn layui-btn-normal" id="test3">开始上传</button>
                <button type="button" class="layui-btn layui-btn-normal" id="cleanImgs"> <i class="fa fa-trash-o fa-lg"></i>清空图片预览</button>
            </div>

            <div class="layui-upload-list" id="demo3" ></div>

        <div class="layui-input-block" style="margin-top: 10px ; margin-left: 58px" >
            <input type="hidden" name="images" id="images" value="" >
            <input type="hidden" name="projectid" id="projectid" value="" >
            <%--<input class="add_img add_comment_img" type="button" value="+Add Image"/>--%>
            <%--<img class="img1" src="${pageContext.request.contextPath}/images/img_suoluetu.jpg"/>--%>
            <%--<img class="img2" src="${pageContext.request.contextPath}/images/img_suoluetu.jpg"/>--%>
            <%--<img class="img3" src="${pageContext.request.contextPath}/images/img_suoluetu.jpg"/>--%>
            <%--<img class="img4" src="${pageContext.request.contextPath}/images/img_suoluetu.jpg"/>--%>
        </div>
        <div class="bomb_button fr">
            <input class="input_button_yes" type="button" value="确认" onclick="submitComment()"/>
            <input class="input_button_no" type="button" value="取消"/>
        </div>
    </div>
</div>
</form>


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
        var typeID=1;
        ShowSupportProjects(typeID);
    })

    function ShowSupportProjects(typeID) {
        $("#FreeProject").empty();
        $("#SupportProject").empty();
        $("#type1").empty();
        $("#type0").empty();
        $.ajax({
            url:'${pageContext.request.contextPath}/ShowProjectByType.action?typeId='+typeID,
            type:'get',
            // data表示发送的数据
            data:null,
            // 定义发送请求的数据格式为JSON字符串
            contentType : "application/json;charset=UTF-8",
            //定义回调响应的数据格式为JSON字符串,该属性可以省略
            // dataType : "json",
            //成功响应的结果
            success : function(data){
                if(data!=null){
                    var str='<li class="project_content_nav"> <ul class="clearfix"><li style="width:40%;">项目信息</li><li>邀请码</li><li>'+
                        '单价</li><li>当前状态</li><li>操作</li></ul>  </li><li class="project_list" id="type1">';
                    var str1='<li class="project_content_nav"> <ul class="clearfix"><li style="width:40%;">项目信息</li><li>价值</li> </li><li>当前状态</li><li>操作</li></ul>  </li><li class="project_list" id="type0">';
                    if(typeID==1)
                    {
                        $("#SupportProject").empty();
                        $("#SupportProject").append(str);
                    }else if(typeID==0)
                    {
                        $("#FreeProject").empty();
                        $("#FreeProject").append(str1);
                    }
                    $(data).each(function (index) {
                        var support=data[index];
                        var project=support.project;
                        var invitecode=support.invitecode;
                        if (invitecode=="")
                        {
                            invitecode="没有邀请码"
                        }
                        //达成率
                        var num=(project.supmoney*project.numsup)/project.needmoney*100;
                        num = num.toFixed(2);
                        //时间差转剩余天数
                        var day=getday(project.startdate,project.deadline);
                        //状态
                        var a=project.statue-1;
                        var status=["待众筹","众筹中","完成众筹"];
                        if(project.typeid==1)
                        {
                            str2='<ul class="clearfix">'+
                                '<li class="project_list_xinxi"><img src="/file/'+project.image+'"/></li>'+
                                '<li class="project_list_xinxi"><p class="project_list_xinxi_name">'+
                                project.name+'</p><p>达成率'+num+'%</p>剩余时间<time>'+day+'天</time></p>'+
                                '</li><li class="project_list_text">'+invitecode+'</li>'+
                                '<li class="project_list_text price">￥'+project.supmoney+'</li>'+
                                '<li class="project_list_text">'+status[a]+'</li>'+
                                '<li class="project_list_text support_caozuo"><a href="${pageContext.request.contextPath}/ToProductDetail.action?id='+project.id+'">查看项目</a>'+
                                '<p class="ogistics1">查看物流</p>'+
                                ' <p class="comment_add" onclick="showComment('+project.id+')">评价</p>'
                                +'</ul></li>';
                            $("#type1").append(str2);
                        }else if(project.typeid==0)
                        {
                            str3='<ul class="clearfix">'+
                                '<li class="project_list_xinxi"><img src="/file/'+project.image+'"/></li>'+
                                '<li class="project_list_xinxi"><p class="project_list_xinxi_name">'+
                                project.name+'</p><p>达成率'+num+'%</p>剩余时间<time>'+day+'天</time></p>'+
                                '<li class="project_list_text price">￥'+project.supmoney+'</li>'+
                                '<li class="project_list_text">'+status[a]+'</li>'+
                                '<li class="project_list_text support_caozuo"><a href="${pageContext.request.contextPath}/ToProductDetail.action?id='+project.id+'">查看项目</a>'+
                                '<p class="ogistics1" >查看物流</p>'+
                                    ' <p class="comment_add" onclick="showComment('+project.id+')">评价</p>'
                                +'</ul></li>';
                            $("#type0").append(str3);
                        }
                        // alert(project.id);

                    });
                }
                else
                {
                    alert("响应失败");

                }
            },
            error:function () {
                alert("响应失败2");
            }
        })
    }

    //评论
    function showComment(id) {
        document.getElementById("content").value="";
        $("#comment").show();
        //将产品id传递过去
        document.getElementById("projectid").value=id;
    }

    function submitComment() {
        var formObject = {};
        var form = $("#projectComment").serializeArray();
        $.each(form,function(i,item){
            formObject[item.name] = item.value;
        });
        var data=JSON.stringify(formObject);
        // alert(data.imgUrls);
        $.ajax({
            url:'${pageContext.request.contextPath}/AddComment.action',
            type:'post',
            // data表示发送的数据
            data:data,
            // 定义发送请求的数据格式为JSON字符串
            contentType : "application/json;charset=UTF-8",
            //定义回调响应的数据格式为JSON字符串,该属性可以省略
            // dataType : "json"
        })
        //清空预览图片
        $('#demo3').empty();
        $('#images').val("");
        $("#comment").hide();
    }

    var user="${sessionScope.user.fname}"
    if(user!=null){
        $(".lr1").hide()
        $(".zhuxiao").show();
    }

    function getday(startTime,endTime)
    {
        var date1= startTime;  //开始时间
        var date2 =endTime;    //结束时间
        var date3 =  new Date(date2).getTime() - new Date(date1).getTime();   //时间差的毫秒数

        //计算出相差天数
        var days=Math.floor(date3/(24*3600*1000))

        //计算出小时数
        var leave1=date3%(24*3600*1000)    //计算天数后剩余的毫秒数

        var hours=Math.floor(leave1/(3600*1000))
        //计算相差分钟数
        var leave2=leave1%(3600*1000)        //计算小时数后剩余的毫秒数
        var minutes=Math.floor(leave2/(60*1000))
        //计算相差秒数
        var leave3=leave2%(60*1000)      //计算分钟数后剩余的毫秒数
        var seconds=Math.round(leave3/1000)
        //alert(" 相差 "+days+"天 "+hours+"小时 "+minutes+" 分钟"+seconds+" 秒")
        return days;
    }

    layui.use(['upload','layer'], function () {

        upload = layui.upload,
        layer = layui.layer
        //多张图片上传变量
        var success=0;
        var fail=0;
        var imgurls="";

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
                        alert("11111");
                        fail++;
                    }else{
                        success++;
                        imgurls=imgurls+""+res.data.src+",";
                        $("[name=images]").val(imgurls);
                    }
                },
                allDone:function(obj){
                    layer.msg("总共要上传图片总数为："+(fail+success)+"\n"
                        +"其中上传成功图片数为："+success+"\n"
                        +"其中上传失败图片数为："+fail
                    )
                }
            });

    });

    function cleanImgsPreview(){
        $("#cleanImgs").click(function(){
            success=0;
            fail=0;
            $('#demo3').empty();
            $('#images').val("");
        });
    }


</script>

