<%--
  Created by IntelliJ IDEA.
  User: 廖泽铭
  Date: 2019/5/20
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <title>登陆界面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>
</head>
<body>

<div class="page-wrapper flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-5">
                <div class="card p-4">
                    <div class="card-header text-center text-uppercase h4 font-weight-light">
                        管理员登陆
                    </div>
                    <form id="loginForm"  method="post">
                    <div class="card-body py-5">
                        <div class="form-group">
                            <label class="form-control-label">账户</label>
                            <input type="text" name="phone" value="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="form-control-label">密码</label>
                            <input type="password" class="form-control" name="password" value="">
                        </div>
                    </div>
                    </form>
                    <div class="card-footer">
                        <div class="row">
                            <div class="col-6">
                                <button onclick="login()" class="btn btn-primary px-5">登陆</button>
                            </div>
                            <div class="col-6">
                                <a href="${pageContext.request.contextPath }/loginPage.action" class="btn btn-primary px-5">忘记密码</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function login(){
        alert("1");
            var form = $("#loginForm").serializeArray();
            $.each(form,function(i,item){
                formObject[item.name] = item.value;
            });
            var data=JSON.stringify(formObject);
            alert(data);

            $.ajax({
                url:'${pageContext.request.contextPath}/adminlogin.action',
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
                        alert("登陆成功");
                        window.location.href = "${pageContext.request.contextPath}/ToAdminIndex.action";
                    }
                    else
                    {
                        alert("登陆失败");

                    }
                }
            })
    }
</script>
</body>
</html>

