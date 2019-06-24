<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-3.2.1.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <title>熊爸助手 - 设置</title>
    <style>
        img{
            object-fit: cover;
        }
        .img-rounded{
            border-radius: 50%;
        }
        body{
            font-size: 38px;
        }
        .form-control{
            font-size: 38px;
            height: auto;
            margin-bottom: 20px;
        }
        .btn{
            font-size: 38px;
        }
    </style>
</head>
<body>
<!-- 引入header文件 -->
<%@ include file="header.jsp"%>

<div style="width: 90%;margin:1% 5% 1% 5%;">
        <div class="panel-heading" style="background-color: white;margin-bottom: 40px; ">
            <a href="/">熊爸助手</a> › 设置
        </div>

                <form class="form-horizontal" role="form" >
                    <div class="form-group">
                        <label class="col-sm-3 control-label">头像</label>
                        <div class="col-sm-9">
                            <img width="150px" height="150px" src="${user.avatar}" class="img-rounded">
                            <a class="btn btn-default" href="/settings/avatar" role="button">更换头像</a>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">uid</label>
                        <div class="col-sm-9">
                            <p class="form-control-static">${user.id}</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">用户名</label>
                        <div class="col-sm-9">
                            <p class="form-control-static">${user.username}</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Email</label>
                        <div class="col-sm-9">
                            <p class="form-control-static">${user.email}</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">注册时间</label>
                        <div class="col-sm-9">
                            <p class="form-control-static">${user.localCreateTime}</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">积分</label>
                        <div class="col-sm-9">
                            <p class="form-control-static">${user.credit}</p>
                        </div>
                    </div>

                </form>

        </div>

<!-- 引入侧边栏文件 -->
<%@ include file="side.jsp"%>

<!-- 引入footer文件 -->
<%@ include file="footer.jsp"%>

</body>
</html>