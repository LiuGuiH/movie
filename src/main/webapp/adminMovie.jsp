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
    <title></title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<form method="post" action="" id="listform">
    <div class="panel admin-panel">
        <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
        <div class="padding border-bottom">
            <ul class="search" style="padding-left:10px;">
                <li> <a class="button border-main icon-plus-square-o" href="adminAddMovie.jsp"> 添加内容</a> </li>
                <%--<li>

                    <if condition="$iscid eq 1">
                    <li>
                        <select name="cid" id="cid" class="input" style="width:200px; line-height:17px;" onchange="changesearch()">
                            <option value="">请选择分类</option>
                            <option value="小说">小说</option>
                            <option value="历史">历史</option>
                            <option value="散文">散文</option>
                            <option value="言情">言情</option>
                        </select>
                    </li>
                </if>

                    <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
                    <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>--%>
            </ul>
        </div>
        <table class="table table-hover text-center">
            <tr>
                <th width="100" style="text-align:left; padding-left:20px;">ID</th>
                <th>图片</th>
                <th>简介</th>
                <th>电影名</th>
                <th>类别</th>
                <th width="5%">评分</th>
                <th width="210">操作</th>
            </tr>
            <volist name="list" id="vo">


                <c:if test="${!empty adminMovie.list }">
                    <c:forEach items="${adminMovie.list}" var="movie">
                        <tr>
                            <td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" />${movie.movieid}</td>
                            <td width="10%"><img src="${movie.movieuri}" alt="" width="70" height="50" /></td>
                            <td>${movie.movieoverview}</td>
                            <td><font color="#00CC99">${movie.moviename}</font></td>
                            <td>${movie.movietype}</td>
                            <td>${movie.moviestar}</td>
                            <td><div class="button-group"> <a class="button border-main" href="adminAddMovie.jsp"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="adminMovieDelete?movieid=${movie.movieid}"><span class="icon-trash-o"></span> 删除</a> </div></td>
                        </tr>
                    </c:forEach>

                </c:if>
                <hr style="height:1px;border:none;border-top:1px solid #ccc;" />
                <!-- 分页导航栏 -->
                <!-- 分页信息 -->

                <!-- 分页文字信息，其中分页信息都封装在adminMovie中 -->
                <div class="col-md-6">
                    当前第：${adminMovie.pageNum}页，总共：${adminMovie.pages}页，总共：${adminMovie.total}条记录
                </div>

                <!-- 分页条 -->
                <div class="col-md-6">
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            <li><a href="adminMovie?pn=1" rel="external nofollow" >首页</a></li>
                            <c:if test="${adminMovie.hasPreviousPage }">
                                <li>
                                    <a href="adminMovie?pn=${adminMovie.pageNum-1}" rel="external nofollow" aria-label="Previous">
                                        <span aria-hidden="true">«</span>
                                    </a>
                                </li>
                            </c:if>
                            <c:forEach items="${adminMovie.navigatepageNums }" var="page_Num">
                                <c:if test="${page_Num == adminMovie.pageNum }">
                                    <li class="active"><a href="" rel="external nofollow" >${ page_Num}</a></li>
                                </c:if>
                                <c:if test="${page_Num != adminMovie.pageNum }">
                                    <li><a href="adminMovie?pn=${ page_Num}" rel="external nofollow" >${ page_Num}</a></li>
                                </c:if>
                            </c:forEach>
                            <c:if test="${adminMovie.hasNextPage }">
                                <li>
                                    <a href="adminMovie?pn=${adminMovie.pageNum+1}" rel="external nofollow" aria-label="Next">
                                        <span aria-hidden="true">»</span>
                                    </a>
                                </li>
                            </c:if>
                            <li><a href="adminMovie?pn=${adminMovie.pages}" rel="external nofollow" >末页</a></li>
                        </ul>
                    </nav>
                </div>


            </volist>
        </table>
    </div>
</form>
<script type="text/javascript">

    //全选
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

    //批量删除
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
            $("#listform").submit();
        }
        else{
            alert("请选择您要删除的内容!");
            return false;
        }
    }



</script>
</body>
</html>