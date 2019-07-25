<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/7/16
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>立即下单</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/placeorder.css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/placeorder.js"></script>
    <script src="${pageContext.request.contextPath}/js/user.js"></script>
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
          <span class="nav_r1 fl"><a href="${pageContext.request.contextPath}/ToDeproj.action">发起项目</a></span>
           <span class="nav_r2 fl"><a href="${pageContext.request.contextPath}/ToHelp.action">新手帮助</a></span>
        </span>
    </nav>
    <!--nav end-->
</div>
<!--头部 结束-->
<div  class="content_wrap">
    <div class="warm_tip">请在下单后15分钟内付款，否则您的订单会被自动关闭。</div>
    <div>
        <p class="address_header">收货地址</p>
        <ul  class="address " id="showAddress">

        </ul>
        <input class="input_button_yes address_add" id="EdiAddress" style="margin-top: 10px;margin-bottom: 20px" type="button" value="添加新地址"/>
    </div>
    <div>
        <p class="item_header">项目信息</p>
        <table class="item_table" cellspacing="0">
            <tr>
                <th class="t_1">项目名称</th>
                <th class="t_2">发起人</th>
                <th class="t_3">回报内容</th>
                <th class="t_4">支持单价</th>
                <th class="t_5">配送费用</th>
            </tr>
            <tr id="product">

            </tr>
        </table>
    </div>
    <div class="invitemark">
        <p><span class="invitemark_l" name="invitecode" >邀请码</span><span><input  id="code" type="text" class="invitemark_r" /></span></p>
    </div>
    <div class="payway">
        <p class="payway_h">您可以选择以下支付方式：</p>
        <ul class="clearfix choose_way">
            <input  class="fl relative" type="radio" id="type" name="paytype" value="0"/>
                <p style="margin-left: 20px"><span class="paycheck absolute"></span><span>账户余额</span></p>
                <p class="available_money" style="margin-left: 100px; margin-top: -20px">当前可用余额：<span class="available_money_num" id="account"></span>元</p>

            <input style=" margin-top: 20px" class="fl relative" type="radio" name="paytype" value="1" checked="checked">
                <p><span class="paycheck absolute"></span><span class="payway_img"><img src="${pageContext.request.contextPath}/images/paybaby_08.png" /></span></p>
        </ul>
    </div>
    <div class="postorder clearfix">
        <div class="fr postorder_wrap">
            <span id="order"></span>
            <p class="postorder_tip">请在下单后15分钟内付款，否则您的订单会被自动关闭。</p>
            <p class="postorder_btn" onclick="submitOrder()">提交订单并付款</p>
        </div>
    </div>
    <div class="warm_tip2">
        <p class="warm_tip2_h">风险提示</p>
        <p class="warm_tip2_c">1.无限道众筹是一个开放的众筹平台，公众基于对项目、发起人和回报的认同，通过资助的方式参与和支持创新。</p>
        <p class="warm_tip2_c">2.为了保证项目筹款和制作的顺利进行，您成功付款后不能像往常一样直接申请退款。</p>
        <p class="warm_tip2_c">3.如果筹款失败，支付款项会全部退回，项目取消。</p>
        <p class="warm_tip2_c">4.若您选择无偿支持，项目成功后发起人将不会给您发送回报。</p>
    </div>
</div>

<!--弹出地址层-->
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


        <form id="orderCreate"  method="post"  >
            <input type="hidden" id="orederID" name="id"  />
            <input type="hidden" id="userid" name="userid"  value="${sessionScope.user.id}" />
            <input type="hidden" id="addressid" name="addressid"  />
            <input type="hidden" id="projectid" name="projectid"   />
            <input type="hidden" id="paytype" name="paytype"  />
            <input type="hidden" id="invitecode" name="invitecode"  />
            <input type="hidden" id="paymoney" name="paymoney" />
        </form>


        <form id="orderProject" action="${pageContext.request.contextPath}/ToPay.action" method="post"  >
        <!--//商品编号-->
        <input type="hidden" id="WIDout_trade_no" name="WIDout_trade_no"  />
        <input type="hidden" id="WIDsubject" name="WIDsubject"   />
        <input type="hidden" id="WIDtotal_amount" name="WIDtotal_amount"  />
        <input type="hidden" id="WIDbody" name="WIDbody" />
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
    <div class="footer_bottom">?版权所有</div>
</div>
<!--尾部end-->
</body>
</html>
<script>

    $(function(){
        //付款类型
        var type = $('input[name="paytype"]:checked').val();
        document.getElementById("paytype").value=type;


        GetDateNow();
        $(".address_default").click(function(){
            $(this).parent().parent().css("background-color","#f8f8ff")
            $(this).parent().parent().siblings("li").css("background-color","white")
            $(this).parent().siblings("input").attr("checked","checked")

        })
        ShowAddress();
        ShowProject();
    })

    //根据产品id号查询出产品
    function ShowProject() {
        $.get('${pageContext.request.contextPath}/showOrderProject.action?id='+${id}, function(res){
           var account=res.account;
           $("#account").append(account);
            var allmoney;
           var money=res.sendmoney;
           if (money==0)
           {
               money="免运费";
               allmoney=res.supmoney;
           }else {
               money=money
               allmoney=res.supmoney+money;
           }
           var productStr= '<td>'+res.name+'</td>'+
                   ' <td>'+res.backcontent+'</td>'+
                   ' <td>'+res.teambrief+'</td>'+
                   '<td class="item_table_price">￥'+res.supmoney+'</td>'+
                   '<td>￥'+money+'</td>'
           $("#product").append(productStr);


           var orderMoney='<p class="postorder_num clearfix">支持金额：<span class="postorder_price fr">'+res.supmoney+'</span></p>'+
                   ' <p class="postorder_tra clearfix">+配送费用：<span class="postorder_price fr">'+money+'</span></p>'+
                   ' <p class="postorder_total clearfix">支付总金额：<span class="postorder_price fr">'+allmoney+'</span></p>'
            $("#order").append(orderMoney);

            document.getElementById("projectid").value=res.id;
            document.getElementById("paymoney").value=allmoney;



            document.getElementById("WIDsubject").value=res.name;
            document.getElementById("WIDtotal_amount").value=allmoney;
            document.getElementById("WIDbody").value=res.backcontent;

        });
    }

    function ShowAddress() {

        $.ajax({
            url:'${pageContext.request.contextPath}/ShowDefaultAddress.action',
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
                    var address =data;
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
                        '</li>'
                    $("#showAddress") .append(str);

                    document.getElementById("addressid").value=address.id;

                }
                else
                {
                    alert("请先添加地址");
                }
            },
            error:function (data) {
                alert("请先添加地址");

            }
        });
    }

    //提交订单
    function submitOrder() {

        var code=document.getElementById('code').value;
        if (code==null)
        {
            document.getElementById("invitecode").value="";
        }else {
            document.getElementById("invitecode").value=code;
        }


        //先创建一个订单，设置ispay=0,付款成功设置为1
        var formObject = {};
        var form = $("#orderCreate").serializeArray();
        $.each(form,function(i,item){
            formObject[item.name] = item.value;
        });
        var data=JSON.stringify(formObject);


        //创建订单
        $.ajax({
            url:'${pageContext.request.contextPath}/CreateOrder.action',
            type:'post',
            // data表示发送的数据
            data:data,
            // 定义发送请求的数据格式为JSON字符串
            contentType : "application/json;charset=UTF-8",
            //定义回调响应的数据格式为JSON字符串,该属性可以省略
            dataType : "json",
            //成功响应的结果
            success : function(data){
                if(data!=null){
                 document.getElementById("orderId").value=data;
                }
                else
                {
                }
            },
            error:function (data) {

            }
        });
//激起付款界面
        $("#orderProject").submit();
    }

    function address_add(){
        var formObject = {};
        var form = $("#address_add").serializeArray();
        $.each(form,function(i,item){
            formObject[item.name] = item.value;
        });
        var data=JSON.stringify(formObject);
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
                    // alert("响应成功");

                   window.location.href = "${pageContext.request.contextPath}/ToOrder.action?id="+${id};
                }
                else
                {
                    alert("响应失败");

                }
            }
        })
    };

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
            $("#telephone").val(res.telephone);
            $("#postcard").val(res.postcard);
            $("#provinceid").val(res.provinceid);
            $("#cityid").val(res.cityid);
            $("#streetid").val(res.streetid);
            $("#detailaddress").val(res.detailaddress);
            $("#id").val(id);
        })

    }


    function GetDateNow() {
        var vNow = new Date();
        var sNow = "";
        sNow += String(vNow.getFullYear());
        sNow += String(vNow.getMonth() + 1);
        sNow += String(vNow.getDate());
        sNow += String(vNow.getHours());
        sNow += String(vNow.getMinutes());
        sNow += String(vNow.getSeconds());
        sNow += String(vNow.getMilliseconds());
        //激起付款界面的ID号
        document.getElementById("WIDout_trade_no").value =  sNow;
        //插入order表的ID
        document.getElementById("orederID").value =  sNow;
    }


    var user="${sessionScope.user.fname}"
    if(user!=null){
        $(".lr1").hide()
        $(".zhuxiao").show();
    }
</script>
