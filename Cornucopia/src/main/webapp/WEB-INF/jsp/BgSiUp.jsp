<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ page import="java.util.*"%>
<!-- //获取系统时间必须导入的 -->
<%@ page import="java.text.*"%>
<!--  获取系统时间必须导入的 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../assets/css/bootstrap.css" rel="stylesheet">
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<link href="../BgAssets/css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>
<script type="text/javascript" src="../BgAssets/js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="../BgAssets/js/select-ui.min.js"></script>
<script type="text/javascript" src="../BgAssets/editor/kindeditor.js"></script>
<script src="../assets/js/jquery.ztree.all-3.5.js"></script>
<script src="../BgAssets/js/bootstrapValidator.min.js"></script>
<link href="../assets/css/metroStyle.css" rel="stylesheet" />
<link href="../BgAssets/css/bootstrapValidator.min.css" rel="stylesheet" />

<SCRIPT type="text/javascript">
	
<%String datetime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime()); //获取系统时间%>
	var cid = 0;
	function cc(id) {
		cid = id;
		var setting = {
			check : {
				enable : true,
				chkStyle : "checkbox",
				chkboxType : {
					"Y" : "ps",
					"N" : "ps"
				}
			},
			//获取json数据  
			async : {
				enable : true,
				url : "Ztree", // Ajax 获取数据的 URL 地址    
				autoParam : [ "id", "name" ], //ajax提交的时候，传的是id值  
				otherParam : {
					"id" : id
				}
			},
			data : { // 必须使用data    
				simpleData : {
					enable : true,
					idKey : "id", // id编号命名     
					pIdKey : "pId", // 父id编号命名      
					rootId : 0
				}
			},
			// 回调函数    
			callback : {
				onClick : function(event, treeId, treeNode, clickFlag) {
				},
				//捕获异步加载出现异常错误的事件回调函数 和 成功的回调函数    
				onAsyncSuccess : function(event, treeId, treeNode, msg) {
				},
			}

		};
		$.fn.zTree.init($("#treeDemo"), setting);
	}
</SCRIPT>
<script type="text/javascript">
	KE.show({
		id : 'content7',
		cssPath : './index.css'
	});
</script>
<script type="text/javascript">
	KE.show({
		id : 'content6',
		cssPath : './index.css'
	});
</script>
<script type="text/javascript">
	KE.show({
		id : 'content5',
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
	<nav class="navbar navbar-default" role="navigation">
	<h3>产品信息详细页</h3>
	</nav>
	<div class="formbody">
		<div id="tab1" class="tabson">

			<form action="/Cornucopia/finance/update"
				method="post">
				<ul class="forminfo">
					<li><label>名称：<b>*</b></label> <input name="name" type="text"
						class="form-control" style="width: 518px;" value="${financeProductFunds.name }"/></li>
					<li>
						<div class="vocation">
						<label>类型:<b>*</b></label>
							<select class="select1" name="type" value="${financeProductFunds.type }">
								<option value="0">固收类</option>
								<option value="1">P2P车贷</option>
								<option value="2">P2P房贷</option>
							</select>
						</div></li>
						<br><br><br><br>
					<li><label>起投金额：<b>*</b></label> <input name="floor_amount"
						type="text" class="form-control" style="width: 518px;" value="${financeProductFunds.floor_amount }" /></li>

					<li><label>年化收益：<b>*</b></label> <input name="year_rate"
						type="text" class="form-control" style="width: 518px;" value="${financeProductFunds.year_rate }"/></li>

					<li><label>开始时间</label><input name="start_date" type="date"
						class="form-control" style="width: 518px;" /></li>
					<li><label>结束时间</label><input name="end_date" type="date"
						class="form-control" style="width: 518px;" /></li>
					<li>
						<div class="vocation">
						<label>状态:<b>*</b></label>
							<select class="select1" name="status" value="${financeProductFunds.status }">
								<option value="0">未发布</option>
								<option value="1">募集中</option>
								<option value="2">已发布</option>
							</select>
						</div></li>
      					<br><br><br><br>
					<li><label>投资期限：<b>*</b></label> <input name="period"
						type="text" class="form-control" style="width: 518px;"value="${financeProductFunds.period }" /></li>

					<li><label>投资方向：<b>*</b></label> <input name="invest_points"
						type="text" class="form-control" style="width: 518px;" value="${financeProductFunds.invest_points }" /></li>

					<input style="display: none;" name="update_date"
						value="<%=datetime%>">

					<li><label>基金专题/关于基金<b>*</b></label> <textarea id="content7"
							name="product_topic"
							style="width: 700px; height: 250px; visibility: hidden;" value="${financeProductFunds.product_topic }"></textarea>
					</li>
					<li><label>产品要素<b>*</b></label> <textarea id="content6"
							name="product_factor"
							style="width: 700px; height: 250px; visibility: hidden;" value="${financeProductFunds.product_factor }"></textarea>
					</li>
					<li><label>基金经理名称：<b>*</b></label> <input
						name="product_manager_name" type="text" class="form-control"
						style="width: 518px;" value="${financeProductFunds.product_manager_name }"/></li>
					<li><label>基金经理头衔：<b>*</b></label> <input
						name="product_manager_title" type="text" class="form-control"
						style="width: 518px;" value="${financeProductFunds.product_manager_title }"/></li>
					<li><label>基金经理详情：<b>*</b></label> <input
						name="product_manager_desc" type="text" class="form-control"
						style="width: 518px;" value="${financeProductFunds.product_manager_desc }"/></li>
					<li><label>基金经理头像：<b>*</b></label> 
                     <div>
					<img  src="/Cornucopia/BgAssets/images/img06.png"><input type="radio" name="product_manager_pic" value="/Cornucopia/BgAssets/images/img06.png">
					<img  src="/Cornucopia/BgAssets/images/img07.png"><input type="radio" name="product_manager_pic" value="/Cornucopia/BgAssets/images/img07.png">	
					<img  src="/Cornucopia/BgAssets/images/img09.png"><input type="radio" name="product_manager_pic" value="/Cornucopia/BgAssets/images/img09.png">		
					</div>
					</li>

					<li><label>银行账户：<b>*</b></label> <input name="bank_account"
						type="text" class="form-control" style="width: 518px;" value="${financeProductFunds.bank_account }" /></li>
						<input type="hidden" name="wid" value="${financeProductFunds.id }">
					<li><input type="submit"  class="btn btn-primary" value="修改" /></li>
				</ul>
			</form>

		</div>
	</div>
</body>
</html>