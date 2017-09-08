<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>
<script language="javascript">
$(function(){	
	//导航切换
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>
</head>
<body>

	<div class="place">
    <span>公告管理</span>
    </div>
    
    <div class="rightinfo">
    <div class="tools">
    <table>
    <tr>
    <td>
    <ul class="forminfo">
   	 <li><label>标题:</label><input name="" type="text" class="dfinput" placeholder="公告标题"/></li>
    </ul>
    </td>
    <td>
    <ul class="toolbar1">
        <li><input type="button" value="搜索"></li>
        <li><span></span>新增</li>
     </ul>
     </td>
     </tr>
    </table>
    <!-- 
    	<ul class="toolbar">
        <li class="click"><span><img src="../BgAssets/images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="../BgAssets/images/t02.png" /></span>修改</li>
        <li><span><img src="../BgAssets/images/t03.png" /></span>删除</li>
        <li><span><img src="../BgAssets/images/t04.png" /></span>统计</li>
        </ul>
         -->
        
        <!-- 
        <ul class="toolbar1">
        <li><span><img src="../BgAssets/images/t05.png" /></span>设置</li>
        </ul>
         -->
    
    </div>
    
    
    <table class="imgtable">
    
    <thead>
    <tr>
    <th width="100px;">序号</th>
    <th>类别</th>
    <th>公告标题</th>
    <th>添加时间</th>
    <th>操作</th>
    </tr>
    </thead>
    
    <tbody>
    <c:forEach items="${list }" var="e" varStatus="stat">
		<tr>
		<td>1</td><td>2</td><td>3</td><td>4</td>
		<td><a href="/springmvc6/emp/initData/${e.id }">编辑</a>
		<a href="/springmvc6/emp/delete/${e.id }">删除</a></td>
		</tr>
	</c:forEach>
	
    <tr>
    <td class="imgtd"><img src="../BgAssets/images/img11.png" /></td>
    <td><a href="#">非常不错的国外后台模板，支持HTML5</a><p>发布时间：2013-10-12 09:25:18</p></td>
    <td>后台界面<p>ID: 82122</p></td>
    <td>开放浏览</td>
    <td>admin</td>
    </tr>
    
    <tr>
    <td class="imgtd"><img src="../BgAssets/images/img12.png" /></td>
    <td><a href="#">一套简约形状图标UI下载</a><p>发布时间：2013-10-12 09:25:18</p></td>
    <td>图标设计<p>ID: 82122</p></td>
    <td>开放浏览</td>
    <td></td>
    </tr>
    
    <tr>
    <td class="imgtd"><img src="../BgAssets/images/img13.png" /></td>
    <td><a href="#">配色软件界面设计PSD下载</a><p>发布时间：2013-10-12 09:25:18</p></td>
    <td>软件界面<p>ID: 82122</p></td>
    <td>开放浏览</td>
    <td>admin</td>
    </tr>
    
    <tr>
    <td class="imgtd"><img src="../BgAssets/images/img14.png" /></td>
    <td><a href="#">.com分享-123张switch界面UI设计</a><p>发布时间：2013-10-12 09:25:18</p></td>
    <td>图标设计<p>ID: 82122</p></td>
    <td>开放浏览</td>
    <td>user</td>
    </tr>
    
    <tr>
    <td class="imgtd"><img src="../BgAssets/images/img15.png" /></td>
    <td><a href="#">章鱼图标PSD源文件下载</a><p>发布时间：2013-10-12 09:25:18</p></td>
    <td>界面设计<p>ID: 82122</p></td>
    <td>开放浏览</td>
    <td>admin</td>
    </tr>
    
    </tbody>
    
    </table>
   
    <div class="pagin">
    	<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="../BgAssets/images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    
    
    
    </div>
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="../BgAssets/images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>
</body>
</html>