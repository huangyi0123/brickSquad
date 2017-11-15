<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'add_business.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="resource/plugins/layui/css/layui.css">

<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript" src="resource/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript" src="resource/plugins/wang_edit/wangEditor.min.js"></script>
<script type="text/javascript">
	
	
	
	$(function() {
		$.ajax({
		url : 'shopActivities/findTypeAndArticle',
		success : function(data) {
			data = JSON.parse(data);
			var type = data[0].type;
			findAll(type, "#typeId");
			var url = "${url}";
		if (url == 'addShopActivities') {
		} else {
			var da = $("#startId").attr('val');
			dat = Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
			$("#startId").val(dat);

			var da = $("#endId").attr('val');
			dat = Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
			$("#endId").val(dat);
		}
		}
	}); 
});

			 layui.use('form', function() {
					var form = layui.form();
					//遍店铺下的商品
					
					$(function() {
							var da = '${businessData}';
							console.log(da);
							da=JSON.parse(da);
							findAll(da,"#shopname");
							form.render('select', 'shopname1');
						});
					
				}); 


$(function() {
		var data="";
		$(".error").each(function() {
			data=data+"<br>"+$(this).val();
		});
		if (data!="") {
			layui.use('layer', function() {
				var layer = layui.layer;
				var msg = data;
				layer.msg(msg);
			});
		}
	});

		
</script>
</head>

<body>

	 <br>
	<div style="padding-left: 130px;font-size:16;">${msg }商品活动信息</div>
	<br>
	
	<form class="layui-form" action="shopActivities/${url}" id="form1" >
	<input type="hidden" name="id" value="${shopActivities.id}">

		
		<div class="layui-form-item">
			<label class="layui-form-label">店铺名</label>
			<div class="layui-input-inline">
				<input type="hidden" name="businessId" value="${business.id}">
				<input type="text" value="${business.shopname}"   required
					lay-verify="required" placeholder="店铺名" autocomplete="off" class="layui-input" readonly="readonly">
			</div>
		</div>
		
		 
		<div class="layui-form-item">
			<label class="layui-form-label" >商品名称</label>
			<div class="layui-input-inline">
				<select name="articleId" id="shopname"  lay-search="" val="${shopActivities.articleId}"
					lay-filter="shopname1">
					<option value="">请选择添加商品</option>
				</select>
			</div>
		</div>






		   
		  
		<div class="layui-form-item">
			<label class="layui-form-label">活动价格</label>
			<div class="layui-input-inline">
				<input type='text' name="activePrice" 
				onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)" onblur="this.v();"
				required lay-verify="required" placeholder="请输入有效价格" autocomplete="off" class="layui-input"
					value="${shopActivities.activePrice}" />
				</select>
			</div>
		</div>
	
		
		
		
 

		
		<div class="layui-form-item">
			<label class="layui-form-label">活动类型</label>
			<div class="layui-input-inline">
				<select name="typeId" id="typeId" val="${shopActivities.typeId}" lay-search="">
					<option value="">请选择活动类型</option>
				</select>
			</div>
		</div>





		<!-- 		 <div class="layui-inline">
      		<label class="layui-form-label">开始时间</label>
      		<div class="layui-input-inline">
        	<input type="date" class="layui-input" name="startTime" placeholder="开始时间"
				onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
        	</div>
   	    </div>
     -->
		<div class="layui-form-item">
			<label class="layui-form-label">开始时间：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" val="${shopActivities.startTime }"
					id="startId" name="startTime" placeholder="开始时间"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">结束时间：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" name="endTime"
					val="${shopActivities.endTime }" id="endId" placeholder="结束时间"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>


		<!--  <div class="layui-inline">
      <label class="layui-form-label">结束时间</label>
      <div class="layui-input-inline">
        <input type="date" class="layui-input" name="endTime" placeholder="yyyy-MM-dd"
			onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
      </div>
    </div> 
     -->




		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>

		<c:forEach items="${errors}" var="error">
   		<input class="error" value="${error.defaultMessage}" type="hidden">
   	</c:forEach>


	</form>
</body>
</html>
