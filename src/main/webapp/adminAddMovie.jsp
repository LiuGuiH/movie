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
<div class="panel admin-panel">
    <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加电影</strong></div>
    <div class="body-content">
        <form method="post" class="form-x" action="adminAddMovie" enctype="multipart/form-data">
            <div class="form-group">
                <div class="label">
                    <label>电影名字：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="" name="moviename" data-validate="required:请输入电影名" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>图片：</label>
                </div>
                <div class="field">
                    <input type="file" name="movieuri" class="input tips" style="width:25%; float:left;" accept="image/png,image/jpg,image/webp,image/PNG,image/gif" >
                    <%--<input type="text" id="url1" name="img" class="input tips" style="width:25%; float:left;"  value=""  data-toggle="hover" data-place="right" data-image="" />
                    <input type="button" class="button bg-blue margin-left" id="image1" value="+ 浏览上传"  style="float:left;">--%>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>电影类别：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="" name="movietype" data-validate="required:请输入电影类别" />
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>描述：</label>
                </div>
                <div class="field">
                    <textarea class="input" name="movieoverview" style=" height:90px;" placeholder="最多为255个字节" maxlength="255"></textarea>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>评分：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" name="moviestar" value=""  />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
                </div>
            </div>
        </form>
    </div>
</div>

</body></html>
