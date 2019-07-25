<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>商品添加</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common/header.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}css/goodsAdd.css"/>
	</head>

	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<div class="layui-header">
				<div class="layui-logo">
					<a href="#">
						<span class="logoTit">后台管理</span>
					</a>
				</div>
				<div class="admin-side-toggle">
					<i class="fa fa-bars" aria-hidden="true"></i>
				</div>
				<div class="admin-side-full">
					<i class="fa fa-life-bouy" aria-hidden="true"></i>
				</div>
				<!-- 头部区域（可配合layui已有的水平导航） -->
				<ul class="layui-nav layui-layout-left navBarMargin">
					<li class="layui-nav-item">
						<a href="#">控制台</a>
					</li>
					<li class="layui-nav-item">
						<a href="#">商品管理</a>
					</li>
					<li class="layui-nav-item">
						<a href="#">用户</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;">其它系统</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#">邮件管理</a>
							</dd>
							<dd>
								<a href="#">消息管理</a>
							</dd>
							<dd>
								<a href="#">授权管理</a>
							</dd>
						</dl>
					</li>
				</ul>
				<ul class="layui-nav layui-layout-right">
					<li class="layui-nav-item">
						<a href="javascript:;">
							<img src="${pageContext.request.contextPath}/resources/imgs/head.jpg" class="layui-nav-img"> liuxuquan
						</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="#">基本资料</a>
							</dd>
							<dd>
								<a href="#">安全设置</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="#">注销</a>
					</li>
				</ul>
			</div>

			<!--侧边栏-->
			<div class="layui-side layui-bg-black" id="admin-side">
				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
					<li class="layui-nav-item">
						<a href="javascript:;">商品管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">商品列表</a>
							</dd>
							<dd>
								<a href="javascript:;">添加商品</a>
							</dd>
							<dd>

							</dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;">我的信息</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">信息修改</a>
							</dd>
							<dd>
								<a href="javascript:;">后台模版</a>
							</dd>
							<dd>
								<a href="javascript:;">电商平台</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;">报表统计</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">销售图表</a>
							</dd>
							<dd>
								<a href="javascript:;">商品数量类别表</a>
							</dd>
							<dd>
								<a href="javascript:;">其他数据信息</a>
							</dd>
						</dl>
					</li>
				</ul>
			</div>
			<!--主体-->
			<div class="layui-body" id="admin-body">
				<!-- 内容主体区域 -->
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
			</div>
			<!--底部-->
			<div class="layui-footer" id="admin-footer" style="text-align: center;">
				<!-- 底部固定区域 -->
				© http://blog.csdn.net/qq_26570353 -供学习
			</div>
		</div>
		<script src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/goodsMutiUpload.js" ></script>
		<script>
			//JavaScript代码区域
			layui.use(['element', 'form', 'laydate'], function() {
				var element = layui.element;
				var form = layui.form;
			});
		</script>
	</body>

</html>