<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<header>
    <style>
        img{
            object-fit: cover;
        }
        .img-rounded{
            border-radius: 50%;
        }
        .nav-app{
            position: fixed;
            top:0;
            left: 0;
            width: 100%;
            height: 140px;
            z-index: 10000;
            box-shadow: 0 2px #476d88;
            background-color: #476DF6;
        }
        .navbar-stay{
            height: 140px;
            width: 100%;
        }
        .foot-stay{
            height: 160px;
            width: 100%;
        }
        .left-nav-bar{
            float: left;
            width: 35%;
            height: 140px;
        }
        .middle-nav-bar{
            float: left;
            width: 30%;
            height: 140px;
        }
        .right-nav-bar{
            float: left;
            width: 35%;
            height: 140px;
        }
        .center-title{
            font-size: 44px;
            color: #ffffff;
            text-align: center;
            line-height: 140px;
        }
        .avatar-name{
            height: 70px;
            width: 80%;
            margin: 35px auto;
        }
        .avatar-name .avatar{
            float: left;
        }
        .avatar-name .avatar img{
            border-radius: 25px;
            width: 75px;
            height: 75px;
        }
        .avatar-name .name{
            float: left;
            width: auto;
            font-size: 32px;
            line-height: 70px;
            padding-left:20px;
        }
        .avatar-name .name a{
            font-size: 32px;
            line-height: 70px;
            color:#ffffff;
        }
        .clear{
            clear: both;
        }
        .count-replies{
            padding: 6px 14px !important;
            font-size: 32px !important;
        }
        .nav-guider{
            position: fixed;
            width: 100%;
            height: 160px;
            background-color: #f0f2f5;
            z-index: 10001;
            bottom:0;
            box-shadow: 0 -2px #d7d9dc;
        }
        .guide-links{
            width: 100%;
            height: 160px;
        }
        .guide-links .guide-links-item{
            width: 33%;
            float: left;
            height: 160px;
            opacity: 0.4;
            cursor: pointer;
        }
        .guide-links .active
        {
            opacity: 1;
        }
        .guide-links-item .item-icon{
            height: 105px;
            padding: 25px 0 15px 0;
            width: 70px;
            margin: 0 auto;
        }
        .guide-links-item .item-icon img{
            height: 70px;
            width: 70px;
        }
        .guide-links-item .item-text{
            color: #8a8a8a;
            height: 40px;
            line-height: 40px;
            font-size: 32px;
            text-align: center;
            vertical-align: top;
        }
        .send-new-text{
            float: right;
            width: auto;
            height: 140px;
            line-height: 140px;
            margin: 0 50px 0 0;
            font-size: 36px;
            color: #ffffff;
        }
        .send-new{
            float: right;
            width: 40px;
            height: 40px;
            margin: 45px 10px 0 0;
        }
        .send-new img{
            width: 40px;
            height: 40px;
        }
    </style>
    <!-- 图片使用"/img/imgs/xxx.jpg" -->
    <div class="nav-app">
        <div class="left-nav-bar">
            <c:if test="${!empty userId}">
                <!--已登陆-->
                <div class="avatar-name">
                    <div onclick="location.href='/settings'" class="avatar">
                        <img src="${user.avatar}">
                    </div>
                    <div class="name">
                        <a href="/settings">${sessionScope.username}</a>
                    </div>
                    <div class="clear"></div>
                </div>
            </c:if>
            <c:if test="${empty userId}">
                <!--未登陆-->
                <div class="avatar-name">
                    <div class="name">
                        <a href="#">请在APP中登录</a>
                    </div>
                    <div class="clear"></div>
                </div>
            </c:if>
        </div>
        <div class="middle-nav-bar">
            <div class="center-title"  onclick="location.href='/'">熊爸社区</div>
        </div>
        <div class="right-nav-bar">
            <c:if test="${!empty userId}">
                <!--已登陆-->
                <div  onclick="location.href='/new'">
                    <div class="send-new-text">
                        发主题
                    </div>
                    <div class="send-new">
                        <img src="/img/imgs/send.png"/>
                    </div>
                </div>
            </c:if>
        </div>
        <div class="clear"></div>
    </div>
    <%--<div class="nav-guider">--%>
        <%--<div class="guide-links">--%>
            <%--<div class="guide-links-item <c:if test="${tab.tabNameEn == 'tech'}">active</c:if>" onclick="location.href='/tab/tech'">--%>
                <%--<div class="item-icon">--%>
                    <%--<img src="/img/imgs/yuer.png"/>--%>
                <%--</div>--%>
                <%--<div class="item-text">育儿心得</div>--%>
            <%--</div>--%>
            <%--<div class="guide-links-item <c:if test="${tab.tabNameEn == 'play'}">active</c:if>" onclick="location.href='/tab/play'">--%>
                <%--<div class="item-icon">--%>
                    <%--<img src="/img/imgs/shaiwa.png"/>--%>
                <%--</div>--%>
                <%--<div class="item-text">晒娃专区</div>--%>
            <%--</div>--%>
            <%--<div class="guide-links-item <c:if test="${tab.tabNameEn == 'creative'}">active</c:if>" onclick="location.href='/tab/creative'">--%>
                <%--<div class="item-icon">--%>
                    <%--<img src="/img/imgs/jiqiao.png"/>--%>
                <%--</div>--%>
                <%--<div class="item-text">软件技巧</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <div class="navbar-stay"></div>
    <%--<nav class="navbar-stay">--%>
        <%--<div class="container-fluid" style="margin-left: 10%">--%>
            <%--<div class="navbar-header">--%>
                <%--<a class="navbar-brand" href="/">Genesis</a>--%>
            <%--</div>--%>
            <%--<div>--%>
                <%--<!--向左对齐-->--%>
                <%--<ul class="nav navbar-nav navbar-left">--%>
                    <%--<li <c:if test="${tab.tabNameEn == 'tech'}">--%>
                            <%--class="active" </c:if>><a href="/tab/tech">技术</a>--%>
                    <%--</li>--%>
                    <%--<li <c:if test="${tab.tabNameEn == 'play'}">class="active"--%>
                        <%--</c:if>><a href="/tab/play">好玩</a></li>--%>
                    <%--<li <c:if test="${tab.tabNameEn == 'creative'}">class="active"--%>
                        <%--</c:if>><a href="/tab/creative">创意</a></li>--%>
                    <%--<li <c:if test="${tab.tabNameEn == 'jobs'}">class="active"--%>
                         <%--</c:if>><a href="/tab/jobs">工作</a></li>--%>
                    <%--<li <c:if test="${tab.tabNameEn == 'deals'}">class="active"--%>
                        <%--</c:if>><a href="/tab/deals">交易</a></li>--%>

                <%--</ul>--%>

                <%--<c:if test="${empty userId}">--%>
                <%--<!--未登陆-->--%>
                 <%--<ul class="nav navbar-nav navbar-right">--%>
                       <%--<li>--%>
                           <%--<p class="navbar-text"><a href="/signin">登录</a></p>--%>
                       <%--</li>--%>
                       <%--<li>--%>
                               <%--<p class="navbar-text"><a href="/signup">注册</a></p>--%>
                       <%--</li>--%>
                 <%--</ul>--%>
                <%--</c:if>--%>
            <%--<c:if test="${!empty userId}">--%>
                   <%--<!--已登陆-->--%>
                <%--<ul class="nav navbar-nav navbar-right">--%>
                    <%--<li>--%>
                        <%--<p class="navbar-text"><a href="/">首页</a></p>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<p class="navbar-text"><a href="/member/${sessionScope.username}">${sessionScope.username}</a></p>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<p class="navbar-text"><a href="/settings">设置</a></p>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                        <%--<p class="navbar-text"><a href="javascript:signout_confirm();">登出</a></p>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</c:if>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</nav>--%>


</header>
<script>
    function signout_confirm()
    {
        var r=confirm("确定退出?")
        if (r==true)
        {
            window.location.href="/signout";
        }
        else
        {

        }
    }
</script>