<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="Content-Type" content="text/html;charset=utf-8">
    <meta name="keywords" content="熊爸助手,家长交流,社区,kidslimits">
    <title>熊爸助手 - 家长交流社区 </title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-3.2.1.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <style>
        img{
            object-fit: cover;
        }
        .img-rounded{
            border-radius: 50%;
        }
        li {
            list-style-type: none;
        }

        html, body {
            height: 100%;
            font-size: 32px;
            color: #525252;
            font-family: NotoSansHans-Regular, AvenirNext-Regular, arial, Hiragino Sans GB, "Microsoft Yahei", "Hiragino Sans GB", "WenQuanYi Micro Hei", sans-serif;
            background: #f0f2f5;
        }

        .footer {
            background-color: #fff;
            margin-top: 22px;
            margin-bottom: 22px;
            width: 100%;
            padding-top: 22px;
            color: #8A8A8A;
            display: block;
            height: 200px;
            border: 1px;
            clear: both
        }

        .container {
            margin-right: 5%;
            margin-left: 5%;
            padding-left: 15px;
            padding-right: 15px;
            width: 40%;
            float: left;
        }

        .info {
            margin-right: 5%;
            width: 10%;
            float: left;
        }

        a {
            color: #8A8A8A;
            cursor: pointer;
        }
        .inner {
            padding: 20px;
            font-size: 36px;
            line-height: 150%;
            text-align: left;
        }
        a.tab_current:active, a.tab_current:link, a.tab_current:visited {
            display: inline-block;
            font-size: 32px;
            line-height: 32px;
            padding: 12px 20px;
            margin-right: 5px;
            border-radius: 10px;
            background-color: #334;
            color: #fff;
        }
        a.tab:active, a.tab:link, a.tab:visited {
            display: inline-block;
            font-size: 32px;
            line-height: 32px;
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
    </style>
</head>
<body>
<!-- 引入header文件 -->
<%@ include file="header.jsp" %>

<div class="panel panel-default" id="main" style="width: 100%;padding:0;">
    <%--<div class="panel-heading" style="background-color: white">--%>
        <%--<a style="margin-right: 2%">活跃</a><a style="margin-right: 2%">精华</a><a style="margin-right: 2%">最近</a>--%>
    <%--</div>--%>
        <div class="inner" id="Tabs">
            <a href="/" class="tab<c:if test="${tab.tabNameEn == 'index'}">_current</c:if>">全部</a>
            <a href="/tab/tech" class="tab<c:if test="${tab.tabNameEn == 'tech'}">_current</c:if>">
                <i>
                    <img style="margin: -1px 0 0 1px;float: left;" src="/img/imgs/yuer.png" height="32px" width="32px"/>
                </i>
                育儿心得
            </a>
            <a href="/tab/play" class="tab<c:if test="${tab.tabNameEn == 'play'}">_current</c:if>">
                <i>
                    <img style="margin: -1px 0 0 0;float: left;" src="/img/imgs/shaiwa.png" height="32px" width="32px"/>
                </i>
                晒娃专区
            </a>
            <a href="/tab/creative" class="tab<c:if test="${tab.tabNameEn == 'creative'}">_current</c:if>">
                <i>
                    <img style="margin: -1px 0 0 0;float: left;" src="/img/imgs/jiqiao.png" height="32px" width="32px"/>
                </i>
                软件技巧
            </a>
        </div>
    <ul class="list-group" style="width: 100%">
        <c:forEach items="${topics}" var="topic">
            <li class="list-group-item" style="padding: 20px 30px;">
                <div style="float: left;width: 10%;margin-bottom: 5px;margin-top: 5px;">
                    <img width="90px" height="90px" src="${topic.user.avatar}" class="img-rounded">
                </div>
                <div style="width: 80%;float: left;margin-left: 3%;">
                    <a href="/t/${topic.id}">${topic.title}</a><br/>
                    <div>
                        <a><span class="label label-default">${topic.tab.tabName}</span></a>&nbsp;&nbsp;&nbsp;
                        <a href="/member/${topic.user.username}"><span><strong>${topic.user.username}</strong></span></a>&nbsp;&nbsp;&nbsp;
                        <small class="text-muted">${topic.localCreateTime}</small>
                    </div>
                </div>
                <div style="width: 7%;float: right;text-align: center">
                    <span class="badge count-replies">${topic.countReplies}</span>
                </div>
                <div class="clear"></div>
            </li>
        </c:forEach>

    </ul>

</div>

<!-- 引入侧边栏文件 -->
<%@ include file="side.jsp" %>

<!-- 引入footer文件 -->
<%@ include file="footer.jsp" %>
</body>
</html>