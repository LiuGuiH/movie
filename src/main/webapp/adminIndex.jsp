<%--
  Created by IntelliJ IDEA.
  User: liuguihua
  Date: 2019/8/27
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
    <div class="logo margin-big-left fadein-top">
        <h1  style="color: black;"><img src="img/y.jpg" class="radius-circle rotate-hover" height="50" style="color: black;" alt="" />后台管理中心</h1>
    </div>
    <div class="head-l"><a class="button button-little bg-green" href="${pageContext.request.contextPath}/" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;
        <a class="button button-little bg-red" href="logout"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
    <div class="leftnav-title"><strong  style="color: black;"><span class="icon-list"  style="color: black;"></span>菜单列表</strong></div>
    <h2><span class="icon-user"></span>基本设置</h2>
    <ul style="display:block">
        <li><a href="adminPassword.jsp" target="right" ><span class="icon-caret-right"></span>修改密码</a></li>
        <li><a href="adminComment" target="right"><span class="icon-caret-right"></span>电影留言管理</a></li>
        <li><a href="adminTVComment" target="right"><span class="icon-caret-right"></span>电视剧留言管理</a></li>
        <li><a href="adminUser" target="right"><span class="icon-caret-right"></span>用户管理</a></li>
        <li><a href="adminList" target="right"><span class="icon-caret-right"></span>管理员管理</a></li>
    </ul>
    <h2><span class="icon-pencil-square-o"></span>电影管理</h2>
    <ul>
        <li><a href="adminMovie" target="right"><span class="icon-caret-right"></span>全部电影</a></li>
        <li><a href="adminAddMovie.jsp" target="right"><span class="icon-caret-right"></span>添加电影</a></li>
    </ul>
</div>
<script type="text/javascript">
    $(function(){
        $(".leftnav h2").click(function(){
            $(this).next().slideToggle(200);
            $(this).toggleClass("on");
        })
        $(".leftnav ul li a").click(function(){
            $("#a_leader_txt").text($(this).text());
            $(".leftnav ul li a").removeClass("on");
            $(this).addClass("on");
        })
    });
</script>
<div class="admin">
    <iframe scrolling="auto" rameborder="0" src="adminPassword.jsp" name="right" width="100%" height="100%"></iframe>
</div>
</body>
</html>
