<%--
  Created by IntelliJ IDEA.
  User: liuguihua
  Date: 2019/8/27
  Time: 14:49
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
    <title>网站信息</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong></div>
    <div class="padding border-bottom">
        <a class="button border-yellow" href=""><span class="icon-plus-square-o"></span> 添加用户</a>
        <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
        <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
    </div>
    <table class="table table-hover text-center">
        <tr>
            <th width="5%">ID</th>
            <th>管理员名称名称</th>
            <th>邮箱</th>
            <th width="250">操作</th>
        </tr>


        <c:if test="${!empty adminList.list }">
            <c:forEach items="${adminList.list}" var="admin">
                <tr>
                    <td>${admin.adminid}</td>
                    <td>${admin.adminname}</td>
                    <td>${admin.adminemail}</td>
                    <td>
                        <div class="button-group">
                            <a type="button" class="button border-main" href="#"><span class="icon-edit"></span>修改</a>
                            <a class="button border-red" href="javascript:void(0)" onclick="return del(17)"><span class="icon-trash-o"></span> 删除</a>
                        </div>
                    </td>
                </tr>
            </c:forEach>

        </c:if>
        <hr style="height:1px;border:none;border-top:1px solid #ccc;" />
        <!-- 分页导航栏 -->
        <!-- 分页信息 -->

        <!-- 分页文字信息，其中分页信息都封装在adminList中 -->
        <div class="col-md-6">
            当前第：${adminList.pageNum}页，总共：${adminList.pages}页，总共：${adminList.total}条记录
        </div>

        <!-- 分页条 -->
        <div class="col-md-6">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li><a href="adminList?pn=1" rel="external nofollow" >首页</a></li>
                    <c:if test="${adminList.hasPreviousPage }">
                        <li>
                            <a href="adminList?pn=${adminList.pageNum-1}" rel="external nofollow" aria-label="Previous">
                                <span aria-hidden="true">«</span>
                            </a>
                        </li>
                    </c:if>
                    <c:forEach items="${adminList.navigatepageNums }" var="page_Num">
                        <c:if test="${page_Num == adminList.pageNum }">
                            <li class="active"><a href="" rel="external nofollow" >${ page_Num}</a></li>
                        </c:if>
                        <c:if test="${page_Num != adminList.pageNum }">
                            <li><a href="adminList?pn=${ page_Num}" rel="external nofollow" >${ page_Num}</a></li>
                        </c:if>
                    </c:forEach>
                    <c:if test="${adminList.hasNextPage }">
                        <li>
                            <a href="adminList?pn=${adminList.pageNum+1}" rel="external nofollow" aria-label="Next">
                                <span aria-hidden="true">»</span>
                            </a>
                        </li>
                    </c:if>
                    <li><a href="adminList?pn=${adminList.pages}" rel="external nofollow" >末页</a></li>
                </ul>
            </nav>
        </div>


    </table>
</div>
<script>
    function del(id){
        if(confirm("您确定要删除吗?")){

        }
    }
</script>
</body></html>
