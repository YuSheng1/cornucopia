<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>
<link href="../assets/css/bootstrap.css" rel="stylesheet">
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/jquery.ztree.all-3.5.js"></script>
<script src="../BgAssets/js/bootstrapValidator.min.js"></script>
<link href="../assets/css/metroStyle.css" rel="stylesheet" />
<link href="../BgAssets/css/bootstrapValidator.min.css" rel="stylesheet" />

<script type="text/javascript"  src="/Cornucopia/utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript"  src="/Cornucopia/utf8-jsp/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript"  src="/Cornucopia/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
 

<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
  
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
});
</script>
</head>
<body>
<form id="form1" method="post"  action="/Cornucopia/push/update">
<h1>
查看公告
</h1>

	<ul class="forminfo">
		<li><input type="hidden" name="id" value="${pushNotice.id }"></li>
		<li><input type="hidden" name="create_date" value="${pushNotice.create_date }"></li>
    	<li><label>标题：</label><input name="title" type="text" class="dfinput" value="${pushNotice.title }"  style="width:518px;"/></li>
    </ul>

		<div>
		<!-- 加载编辑器的容器 -->  
				内容
				<script id="container" name="content" type="text/plain">${pushNotice.content }</script>  
				<!-- 配置文件 -->  
				<!-- 编辑器源码文件 -->  
				<!-- 实例化编辑器 -->  
				<script type="text/javascript">  
				    var ue = UE.getEditor('container');  
				</script>  
		</div>
		
		<button type="submit" class="btn btn-primary" >保存修改</button>  
</form>
</body>
</html>