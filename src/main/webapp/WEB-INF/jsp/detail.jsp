<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-3.2.1.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <title>${topic.title} - 熊爸助手 </title>
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
        .inner {
            padding: 20px;
            font-size: 36px;
            line-height: 150%;
            text-align: left;
            background-color: #fafbfc;
        }
        a.tab_current:active, a.tab_current:link, a.tab_current:visited {
            display: inline-block;
            font-size: 36px;
            line-height: 36px;
            padding: 12px 20px;
            margin-right: 5px;
            border-radius: 10px;
            background-color: #334;
            color: #fff;
        }
        a.tab:active, a.tab:link, a.tab:visited {
            display: inline-block;
            font-size: 36px;
            line-height: 36px;
            padding: 5px 8px 5px 8px;
            margin-right: 5px;
            border-radius: 4px;
            color: #555;
        }
        a:active, a:link, a:visited {
            color: #778087;
            text-decoration: none;
            word-break: break-all;
        }
        img{
            object-fit: cover;
        }
    </style>
</head>
<body>
<!-- 引入header文件 -->
<%@ include file="header.jsp"%>
<div class="inner" id="Tabs">
    <a href="javascript:window.history.back()" class="tab">&lt;&nbsp;返回</a>
</div>
<div style="width: 90%;margin:1% 5% 1% 5%;">
        <div>
            <h1 style="font-size: 40px;font-weight: bold;margin: 30px 0;">${topic.title}</h1>
            <div>
                <a href="/member/${topic.user.username}"><span ><strong>${topic.user.username}</strong></span></a>&nbsp;&nbsp;
                <small class="text-muted">${topic.localCreateTime}</small>&nbsp;&nbsp;
                <small class="text-muted">${topic.click}次点击</small>
            </div>
        </div>

        <div style="float: right;margin-top: -130px" >
            <img width="80px" height="80px" src="${topic.user.avatar}" class="img-rounded">
        </div>

    <ul class="list-group" style="width: 100%">
            <li class="list-group-item">
                ${topic.content}
            </li>
    </ul>

<c:if test="${!empty replies}">
<div class="panel panel-default" id="main" style="margin-top: 40px;">
    <div class="panel-heading" style="background-color: white">
        <span>
                ${fn:length(replies)} 条讨论信息
                    <%--|  直到 <c:forEach items="${replies}" var="reply" varStatus="status">--%>
                    <%--<c:if test="${status.last}">--%>
                        <%--${reply.localCreateTime}--%>
                        <%--</c:if>--%>
                        <%--</c:forEach>--%>
        </span>
    </div>
    <ul class="list-group" style="width: 100%">
        <!-- 遍历评论 -->
        <c:forEach items="${replies}" var="reply">
        <li class="list-group-item">
                <div style="float: left;width: 11%;margin-bottom: 5px">
                    <img width="75px" height="75px" src="${reply.user.avatar} " class="img-rounded" style="margin-top: 10px;">
                </div>
                <div style="width: 80%;float: left;margin-left:1%;">
                    <a href="/member/${reply.user.username}"><strong>${reply.user.username}</strong></a>&nbsp;&nbsp;
                    <small class="text-muted">${reply.localCreateTime}</small>
                    <br/>
                    <div>
                        <p>${reply.content}</p>
                    </div>
                </div>
                <div style="clear: both;"></div>
        </li>
        </c:forEach>

    </ul>
</div>
</c:if>

<c:if test="${!empty user}">

<div class="panel panel-default" id="main"  style="margin-top: 40px;">
    <div class="panel-heading" style="background-color: white">
        加入讨论
    </div>
    <div class="panel-body">
        <div class="form-group">
            <form action="/reply/add" method="post">
                <input type="hidden" name="topicId" value="${topic.id}">
                <input type="hidden" name="replyUserId" value="${user.id}">
                <textarea class="form-control" rows="3" name="content" required="required"></textarea>
                <input type="submit" class="btn btn-default btn-sm" value="发言">
            </form>
        </div>

    </div>
</div>
</c:if>

</div>
<!-- 引入侧边栏文件 -->
<%@ include file="side.jsp"%>

<!-- 引入footer文件 -->
<%@ include file="footer.jsp"%>

</body>
</html>