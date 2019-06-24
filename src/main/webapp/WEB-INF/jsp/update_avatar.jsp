<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-3.2.1.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <title>熊爸助手 - 头像上传</title>
    <style>
        body {
            font-size: 38px;
        }
        .img-rounded{
            border-radius: 50%;
        }
        .form-control, input {
            font-size: 38px;
            height: auto;
            margin-bottom: 20px;
        }

        .btn {
            font-size: 38px;
        }
        img{
            object-fit: cover;
        }
    </style>
</head>
<body>
<!-- 引入header文件 -->
<%@ include file="header.jsp" %>

<div style="width: 90%;margin:1% 5% 1% 5%;float: left;">
    <a href="/">熊爸助手</a> › 设置 ›头像上传
</div>

<div class="panel-body">
    <form action="/settings/avatar/update" enctype="multipart/form-data" method="post" class="form-horizontal" role="form">
        <div style="margin-left: 17%">
            <img for="file-selector" id="newShow" width="240px" height="240px" src="${user.avatar}" class="img-rounded">
            <br/>
            <input id="file-selector" type="file" name="avatar" accept="image/png,image/jpeg,image/jpg">
            <br/>
            <input class="btn btn-default" type="submit" value="保存头像">
        </div>
    </form>
</div>
<script>
    $('#file-selector').change(function () {
        var $file = $(this);
        var fileObj = $file[0];
        var windowURL = window.URL || window.webkitURL;
        var dataURL;
        var $img = $("#newShow");
        if (fileObj && fileObj.files && fileObj.files[0]) {
            dataURL = windowURL.createObjectURL(fileObj.files[0]);
            $img.attr('src', dataURL);
        } else {
            dataURL = $file.val();
            var imgObj = document.getElementById("preview");
            imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
            imgObj.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
        }
    });
</script>
<!-- 引入侧边栏文件 -->
<%@ include file="side.jsp" %>
<!-- 引入footer文件 -->
<%@ include file="footer.jsp" %>

</body>
</html>