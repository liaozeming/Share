<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/18
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>收货地址</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/scanproj.js"></script>
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
    <!--导航-->
    <div class="user_nav fl">
        <a class="data" >
            <img  width="100" height="100" src="/file/${sessionScope.user.headimg}"/>
            <p>${sessionScope.user.fname}</p>
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
        <header>
            收货地址
        </header>
        <div class="user_main">
            <ul class="address_content" id="showAddress">

            </ul>
            <input class="input_button_yes address_add" style="margin-top: 10px" id="EdiAddress" type="button" value="添加新地址"/>
        </div>
    </div>
</div>
<!--修改地址-->
<div class="bomb bomb_address_wrapper" style="display:none;" id="formAddress">
    <div class="bomb_address clearfix">
        <div class="bomb_title clearfix">
            <p class="fl">添加新地址</p>
            <span class="close fr"></span>
        </div>
        <form id="address_add" method="post" >
            <input type="hidden"  name="userid"  value="${sessionScope.user.id}"/>
            <input type="hidden"  name="id" id="id"/>
            <p>&nbsp;收货人：<input type="text" id="consignee" name="consignee"/></p>
            <P>手机号码：<input type="tel" maxlength="11" id="telephone" name="telephone"/></P>
            <p>邮政编码：<input type="text" maxlength="6" id="postcard" name="postcard"/></p>
            <p>&nbsp;&nbsp;地区：<select name="provinceid"  id="provinceid">
                <option value="1">江西省</option>
                <option value="2">浙江省</option>
                <option value="3">湖南省</option>
                <option value="4">福建省</option>
            </select><select name="cityid"  id="cityid">
                <option value="1">上饶市</option>
                <option value="2">赣州市</option>
                <option value="3">厦门市</option>
                <option value="4">南昌市</option>
            </select>
                <select name="streetid"  id="streetid">
                    <option value="1">双港东大道</option>
                    <option value="2">丰溪街道</option>
                    <option value="3">艾溪湖东路</option>
                    <option value="4">青山湖大道</option>
                </select>
            </p>
            <p>详细地址：<input class="bomb_address_more" type="text" id="detailaddress" name="detailaddress"/></p>

            <div class="bomb_button fr" id="Addresscheck">
                <input class="input_button_yes" type="button" value="确认" onclick="address_add()"/>
                <input class="input_button_no" type="button" value="取消" />
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

    function address_add(){
        var formObject = {};
        var form = $("#address_add").serializeArray();
        $.each(form,function(i,item){
            formObject[item.name] = item.value;
        });
        var data=JSON.stringify(formObject);
        // alert(data);
        $.ajax({
            url:'${pageContext.request.contextPath}/AddUserAddress.action',
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
                    alert("响应成功");
                    window.location.href = "${pageContext.request.contextPath}/ToUserAddress.action";
                }
                else
                {
                    alert("响应失败");

                }
            }
        })
    };



    $(function(){

        $(".address_default").click(function(){
            $(this).parent().parent().css("background-color","#f8f8ff")
            $(this).parent().parent().siblings("li").css("background-color","white")
            $(this).parent().siblings("input").attr("checked","checked")

        })

        $.ajax({
            url:'${pageContext.request.contextPath}/ShowAddress.action?userid='+${sessionScope.user.id},
            type:'get',
            // data表示发送的数据
            data:null,
            // 定义发送请求的数据格式为JSON字符串
            contentType : "application/json;charset=UTF-8",
            //定义回调响应的数据格式为JSON字符串,该属性可以省略
            dataType : "json",
            //成功响应的结果
            success : function(data){
                if(data!=null){
                    var str = "";
                    $(data).each(function (index) {
                        var address =data[index];
                        // alert(address.provincename);
                        str=' <li class="address2">&nbsp;&nbsp;&nbsp;'+
                            address.provincename+'&nbsp;&nbsp;'+
                            address.cityname+'&nbsp;&nbsp;'+
                            address.streetnam+'&nbsp;&nbsp;'+
                            address.detailaddress+'&nbsp;&nbsp;'+
                            address.consignee+'&nbsp;&nbsp;'+
                            // address.telephone+'&nbsp;&nbsp;'+
                            // address.postcard+'&nbsp;&nbsp;'+
                            '<div class="address_setup fr clearfix" >'+
                            '<a onclick=setDefaultAddress('+address.id+','+address.userid+')><p class="address_default fl" id="addressText">[设为默认地址]</p></a>'+
                            '<p class="address_xiugai fl" onclick="editAddress('+address.id+')">&nbsp;修改</p>'+
                            '<p class="address_delete fl"  onclick="deleteAddress('+address.id+')">&nbsp;删除</p>'+
                            '</li>'
                        ;
                        $("#showAddress") .append(str);
                        //    $("#freeimages") .append(str);
                    })
                }
                else
                {
                    alert("响应失败1");
                }
            },
            error:function (data) {
                alert("响应失败2");

            }
        });

    })


    function setDefaultAddress(id,userid)
    {
        $.get('${pageContext.request.contextPath}/setDefaultAddress.action?id='+id+'&userid='+userid, function(res){
            // alert(res);

            alert("设置成功");

        });
    }

    function deleteAddress(id) {
        $.get('${pageContext.request.contextPath}/deleteAddress.action?id='+id, function(res){
            alert("删除成功");
            window.location.href = "${pageContext.request.contextPath}/ToUserAddress.action";
        });
    }

    function editAddress(id) {
        $("#EdiAddress").click();
        $.get('${pageContext.request.contextPath}/findAddressById.action?id='+id, function(res) {
            $("#consignee").val(res.consignee);
            $("#isdefault").val(res.isdefault);
            $("#telephone").val(res.telephone);
            $("#postcard").val(res.postcard);
            $("#provinceid").val(res.provinceid);
            $("#cityid").val(res.cityid);
            $("#streetid").val(res.streetid);
            $("#detailaddress").val(res.detailaddress);
            $("#id").val(res.id);
        })

    }

    var user="${sessionScope.user.fname}"
    if(user!=null){
        $(".lr1").hide()
        $(".zhuxiao").show();
    }

</script>
