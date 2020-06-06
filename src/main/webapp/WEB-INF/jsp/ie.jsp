<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>H+已不再支持老旧的IE</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta name="description" content="">
    <meta name="keywords" content="">
    <style>
        html,
        body {
            height: 100%;
            overflow: hidden;
        }

        body {
            background: #3cbbdc url(img/browser.png) no-repeat center center;
        }
    </style>
</head>

<body>
</body>

</html>
