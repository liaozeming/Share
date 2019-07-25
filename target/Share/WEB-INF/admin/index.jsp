<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/6/6
  Time: 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<%--<script src="${pageContext.request.contextPath}/layui/lay/modules/jquery.js"></script>--%>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<html>
<head>
    <title>二级分销系统</title>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin" style="padding: -35px;">
    <div class="layui-header">
        <div class="layui-logo">二级分销系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/ToAdminIndex.action">控制台</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/ToManageProject.action" target="viewDiv">商品管理</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/ToManageUser.action" target="viewDiv">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="/file/${sessionScope.user.headimg}" class="layui-nav-img">
                    ${sessionScope.user.fname}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/LoginOut.action">退了</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">用户管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${pageContext.request.contextPath}/ToManageUser.action" target="viewDiv">显示用户</a></dd>
                        <dd><a href="${pageContext.request.contextPath}/ToAddUser.action" target="viewDiv">增加用户</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">商品管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${pageContext.request.contextPath}/ToManageProject.action" target="viewDiv">显示商品</a></dd>
                        <%--<dd><a href="javascript:;">发布商品</a></dd>--%>
                        <dd><a href="${pageContext.request.contextPath}/ToCheckProject.action" target="viewDiv">待审核商品</a></dd>
                        <dd><a href="javascript:;">显示商品支持</a></dd>
                        <dd><a href="javascript:;">显示商品收藏</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">商品类型管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">显示商品类型</a></dd>
                        <dd><a href="javascript:;">增加商品类型</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">评论管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">显示评论</a></dd>
                        <dd><a href="javascript:;">增加评论</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">订单管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">显示订单</a></dd>
                        <dd><a href="javascript:;">增加订单</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">收益管理</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div >
            <iframe width="100%" height="100%" name="viewDiv"> </iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        <a href="http://www.liaozeming.cn:8080/Share/">© http://www.liaozeming.cn</a>
    </div>
</div>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
    });
</script>

</body>
</html>
