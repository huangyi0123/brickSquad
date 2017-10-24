<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add_article.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="ui/backstage_managed/plugins/layui/css/layui.css">
	
<script type="text/javascript"
	src="ui/backstage_managed/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript" src="ui/backstage_managed/js/common.js"></script>	
	
	
<script type="text/javascript">
	
	$(function() {
		$.ajax({
			url : 'activities/findAllActivities',
			success : function(data) {
				data = JSON.parse(data);
				var id = $("#act").attr('val');
				
				$(data).each(
						function() {
							if (id == this.id) {
								$("#act").append(
										'<option value="'+this.id+'"  selected="selected">'
												+ this.centent+ '</option>');
							} else {
								$("#act").append(
										'<option value="'+this.id+'">'
												+ this.centent + '</option>');
							}

						});
				layui.use('form', function() {
					var form = layui.form();
				});
			}
		});
		
		var url="${url}"
		if(url=='addActivities'){}
		else{
		var da = $("#startTimeId").attr('val');
		dat = Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
		$("#startTimeId").val(dat);
		
		var da = $("#endTimeId").attr('val');
		dat = Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
		$("#endTimeId").val(dat);
		}
		
	});
	
	
</script>
  </head>
  <body>

   <form class="layui-form" action="activities/${url }" id="form1" method="post">
  <input type="hidden" name="id" value="${activities.id}">
		<div class="layui-form-item">
			<label class="layui-form-label">活动名称</label>
			<div class="layui-input-inline">
				<input type="text" name="name" required lay-verify="required"
					placeholder="活动名称" value="${activities.name }" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">活动类型id</label>
			<div class="layui-input-inline">
				<input type="text" name="typeId" required lay-verify="required"
					placeholder="活动类型id" autocomplete="off" class="layui-input"
					value="${activities.typeId }">
			</div>
		</div>
		<div class="layui-form-item" style="width: 300px;">
			<label class="layui-form-label">活动内容</label>
			<div class="layui-input-block">
				<select name="centent" id="act"  lay-filter="aihao" val="${activities.centent}">
					<option value=""></option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">开始时间</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" id="startTimeId" name="startTime" placeholder="开始时间" val="${activities.startTime }"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>
        <div class="layui-form-item">
			<label class="layui-form-label">结束时间</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" id="endTimeId" name="endTime" placeholder="结束时间" val="${activities.endTime }"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>
		<div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
	</form>
  </body>
</html>
