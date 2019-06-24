<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-3.2.1.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <%@ include file="head.jsp"%>
    <title>熊爸助手 - <c:if test="${!empty userInfo}">${userInfo.username}</c:if><c:if test="${!empty errorInfo}">会员未找到</c:if></title>
    <style>
        body{
            font-size: 38px;
        }
        .img-rounded{
            border-radius: 50%;
        }
        .form-control{
            font-size: 38px;
            height: auto;
            margin-bottom: 20px;
        }
        .btn{
            font-size: 38px;
        }
        img{
            object-fit: cover;
        }
    </style>
</head>
<body>
<!-- 引入header文件 -->
<%@ include file="header.jsp"%>

<div style="width: 90%;margin:1% 5% 1% 5%;">
        <div class="panel-heading" style="background-color: white;">
            <a href="/">熊爸助手</a> › ${userInfo.username}
        </div>

            <c:if test="${!empty userInfo}">
            <form class="form-horizontal" role="form"  style="background-color: #fafafa;padding-top: 40px;padding-bottom: 40px;">
                <div class="form-group">
                    <label class="col-sm-3 control-label">头像</label>
                    <div class="col-sm-9">
                        <img width="150px" height="150px" src="${userInfo.avatar}" class="img-rounded">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">uid</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">${userInfo.id}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">用户名</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">${userInfo.username}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">${userInfo.email}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">注册时间</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">${userInfo.localCreateTime}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">积分</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">${userInfo.credit}</p>
                    </div>
                </div>
            </form>
            </c:if>
            <c:if test="${!empty errorInfo}">
                会员未找到!
            </c:if>
</div>

<!-- 引入侧边栏文件 -->
<%@ include file="side.jsp"%>

<!-- 引入footer文件 -->
<%@ include file="footer.jsp"%>

</body>
</html>