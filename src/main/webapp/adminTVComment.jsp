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
    <title></title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<form method="post" action="">
    <div class="panel admin-panel">
        <div class="panel-head"><strong class="icon-reorder"> 留言管理</strong></div>
        <div class="padding border-bottom">
            <ul class="search">
                <li>
                    <button type="button"  class="button border-green" id="checkall"><span class="icon-check"></span> 全选</button>
                    <button type="submit" class="button border-red"><span class="icon-trash-o"></span> 批量删除</button>
                </li>
            </ul>
        </div>
        <table class="table table-hover text-center">
            <tr>
                <th width="120">ID</th>
                <th>电影id</th>
                <th>用户id</th>
                <th>评分</th>
                <th>标题</th>
                <th width="25%">内容</th>
                <th width="120">留言时间</th>
                <th>操作</th>
            </tr>

            <c:if test="${!empty adminTVComments.list }">
                <c:forEach items="${adminTVComments.list}" var="tvplay">
                    <tr>
                        <td><input type="checkbox" name="id[]" value="${tvplay.typlaycommentid}" />
                                ${tvplay.typlaycommentid}</td>
                        <td>${tvplay.typlayid}</td>
                        <td>${tvplay.userid}</td>
                        <td>${tvplay.commentstar}</td>
                        <td>${tvplay.commenttitle}</td>
                        <td>${tvplay.commentcontent}</td>
                        <td>${tvplay.commenttime}</td>
                        <td><div class="button-group"> <a class="button border-red" href="adminTVCommentDelete?typlaycommentid=${tvplay.typlaycommentid}" ><span class="icon-trash-o"></span> 删除</a> </div></td>
                    </tr>
                </c:forEach>
            </c:if>
            <hr style="height:1px;border:none;border-top:1px solid #ccc;" />
            <!-- 分页导航栏 -->
            <!-- 分页信息 -->

            <!-- 分页文字信息，其中分页信息都封装在adminTVComments中 -->
            <div class="col-md-6">
                当前第：${adminTVComments.pageNum}页，总共：${adminTVComments.pages}页，总共：${adminTVComments.total}条记录
            </div>

            <!-- 分页条 -->
            <div class="col-md-6">
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li><a href="adminTVComment?pn=1" rel="external nofollow" >首页</a></li>
                        <c:if test="${adminTVComments.hasPreviousPage }">
                            <li>
                                <a href="adminTVComment?pn=${adminTVComments.pageNum-1}" rel="external nofollow" aria-label="Previous">
                                    <span aria-hidden="true">«</span>
                                </a>
                            </li>
                        </c:if>
                        <c:forEach items="${adminTVComments.navigatepageNums }" var="page_Num">
                            <c:if test="${page_Num == adminTVComments.pageNum }">
                                <li class="active"><a href="" rel="external nofollow" >${ page_Num}</a></li>
                            </c:if>
                            <c:if test="${page_Num != adminTVComments.pageNum }">
                                <li><a href="adminTVComment?pn=${ page_Num}" rel="external nofollow" >${ page_Num}</a></li>
                            </c:if>
                        </c:forEach>
                        <c:if test="${adminTVComments.hasNextPage }">
                            <li>
                                <a href="adminTVComment?pn=${adminTVComments.pageNum+1}" rel="external nofollow" aria-label="Next">
                                    <span aria-hidden="true">»</span>
                                </a>
                            </li>
                        </c:if>
                        <li><a href="adminTVComment?pn=${adminTVComments.pages}" rel="external nofollow" >末页</a></li>
                    </ul>
                </nav>
            </div>
        </table>
    </div>


</form>
<script type="text/javascript">



    $("#checkall").click(function(){
        $("input[name='id[]']").each(function(){
            if (this.checked) {
                this.checked = false;
            }
            else {
                this.checked = true;
            }
        });
    })

    function DelSelect(){
        var Checkbox=false;
        $("input[name='id[]']").each(function(){
            if (this.checked==true) {
                Checkbox=true;
            }
        });
        if (Checkbox){
            var t=confirm("您确认要删除选中的内容吗？");
            if (t==false) return false;
        }
        else{
            alert("请选择您要删除的内容!");
            return false;
        }
    }

</script>
</body></html>