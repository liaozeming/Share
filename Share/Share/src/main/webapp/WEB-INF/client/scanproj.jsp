<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/14
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>浏览项目</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xc-s-p.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/scanproj.js"></script>
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
            <form method="get">
                <input type="text" placeholder="输入关键字" name="keywords">
                <img src="${pageContext.request.contextPath}/images/mark_search_05.png" alt="搜索" type="submit"/>

            </form>
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
<!--头部 结束-->    <!--浏览项目主体start-->
<div class="s-p-content">
    <div class="s-p-auto auto clearfix" >
        <!--左侧目录start-->
        <div class="s-p-side fl" style="height:727px">
            <dl>
                <dt class="sort-com">排序&nbsp;|&nbsp;compositor</dt>
                <dd><input type="radio" id="sort1" checked="checked" name="sort"><label name="sort" class="checked" for="sort1" onclick="getListData(1,1,null)"> 综合排序</label></dd>
                <dd><input type="radio" id="sort2" name="sort"><label class="label-sort" name="sort" for="sort2" onclick="getListData(1,2,null)">最新上线</label></dd>
                <dd><input type="radio" id="sort3" name="sort"><label class="label-sort" name="sort" for="sort3" onclick="getListData(1,3,null)">最高金额</label></dd>
                <dd><input type="radio" id="sort4" name="sort"><label class="label-sort" name="sort" for="sort4" onclick="getListData(1,4,null)">最多支持</label></dd>
                <dt class="sort-con">状态&nbsp;|&nbsp;condition</dt>
                <dd><input type="radio" id="state1" checked="checked" name="state"><label name="state" class="checked"  for="state1" onclick="getListData(1,null,1)">全部</label></dd>
                <dd><input type="radio" id="state2" name="state"><label name="state" for="state2" onclick="getListData(1,null,2)">众筹中</label></dd>
                <dd><input type="radio" id="state3" name="state"><label name="state" for="state3" onclick="getListData(1,null,3)">即将开始</label></dd>
                <dd><input type="radio" id="state4" name="state"><label name="state" for="state4" onclick="getListData(1,null,4)">众筹成功</label></dd>
            </dl>
        </div>
        <!--左侧目录end-->
        <!--主体start-->
        <div class="s-p-main fl">
            <h3 id="productsum">

            </h3>
            <ul class="main_proj" >

                <div  id="freeimages">
                </div>
                <div class="layui-progress">
                    <div class="layui-progress-bar" lay-percent="10%"></div>
                </div>

            </ul>

        </div>
        <!--主体end-->

    </div>
    <div style=" width:700px;margin-left:310px;">
        <ul class="s-p-index clearfix" style="display:block;margin-left:500px;">
            <div id="demo5"></div>
        </ul>
    </div>
</div>
<!--浏览项目主体end-->
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
</body>

</html>
<script>

    function paged(data,status) {
        layui.use(['laypage', 'layer'],function () {
            var laypage = layui.laypage
                , layer = layui.layer;
            var nums = 6; //每页出现数量;
            var count=data.count;



            laypage.render({
                elem: 'demo5'
                ,count: count
                ,limit:6
                ,curr: location.hash.replace('#!fenye=', '') //获取hash值为fenye的当前页
                ,hash: 'fenye' //自定义hash值
                , jump: function (obj, first) {
                    //首次不执行
                    if (!first) {
                        // alert(currPage);
                        //do something
                        var curr = obj.curr;//获取当前点击页码
                        getListData(curr,compositor,conditon);
                    }
                }
            });

        });
    };

    $(function () {
        var compositor=1;
        var conditon=1;
        getListData(1,compositor,conditon);
    });


    function getListData(currPage,com,cod){
        if(com!=null)
        {
            compositor=com;
        }
        if (cod!=null)
         {
             conditon=cod;
         }
        //  alert(compositor);
        // alert(conditon);
        $.ajax({
            url:'${pageContext.request.contextPath}/SortProductByAll.action',
            type:'post',
            data: {
                page:currPage, //当前页数
                limit:6,
                compositor:compositor,
                condition:conditon,
            },
            dataType:'json',
            success: function(data){
                $("#freeimages") .empty();
                $("#productsum").empty();
                if(data!=null){
                    var str = "";
                    var products=data.data;
                    var productsum="";
                    productsum='共<span class="c_yellow">'+data.count+'</span>个项目'
                    $("#productsum").append(productsum);
                    $(products).each(function (index) {
                        var project=products[index];
                        //达成率
                        var num=(project.supmoney*project.numsup)/project.needmoney*100;
                        num = num.toFixed(2);
                        if(num>100)
                        {
                            num=100;
                        }
                        //剩余天数
                        var day=getday(project.startdate,project.deadline);
                        var image="/file/"+project.image;
                        str='<li> <a href="ToProductDetail.action?id='+project.id+'">'+
                        '<p class="s-p-bg"><img src="'+image+'" alt=""></p>'+
                        ' <p class="s-p-mt">'+project.name+'</p>'+
                        ' <p class="s-p-hide dispno"></p>'+
                        ' <p class="s-p-hide1 dispno">'+project.name+'</p> </a>'+
                        '<div class="count_down"><span class="count_d" style="width:'+num+'%;"></span></div>'+
                        '<p class="clearfix">'+
                        '<span class="s-p-mtxt fl">已筹金额<span class="s-p-t">'+project.supmoney+'</span></span>'+
                        '<span class="s-p-mtxt fr">剩余时间<span class="s-p-t">'+day+'天</span></span>';
                        $("#freeimages") .append(str);

                        // window.location.href = "${pageContext.request.contextPath}/ToMain.action";
                    })
                }else {
                    alert("响应失败1");
                }

                // alert(data.count);
                paged(data,status);
            },
            error:function (data) {
                alert("响应失败2");

            }
        });
    };


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


    var user="${sessionScope.user.fname}"
    if(user!=null){
        $(".lr1").hide()
        $(".zhuxiao").show();
    }
</script>
