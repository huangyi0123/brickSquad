<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

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


<link rel="stylesheet" type="text/css"
	href="ui/backstage_managed/plugins/layui/css/layui.css">

<script type="text/javascript"
	src="ui/backstage_managed/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/lay/modules/laydate.js"></script>
	
<script type="text/javascript">
	/* layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
		//执行一个laydate实例
		laydate.render({
			elem : '#test1' //指定元素
		});
	}); */
	//查询type中parentId为0，即疾病检查类型的集合（检查类型分类）
		$(function() {
		$.ajax({
			url : 'type/findTypeByParentId',
			data : {
				'parentId' : '0'
			},
			success : function(data) {
				data = JSON.parse(data);
				console.log(data);
				$(data).each(
						function() {
							$("#paramentTypeId").append(
									'<option value="'+this.id+'">' + this.name
											+ '</option>');
							layui.use('form', function() {
								var form = layui.form();
							});
						});
			}
		});
	});
</script>
</head>

<body>
	<form class="layui-form" action="shopActivities/AddShopActivities" id="form1">
		<div class="layui-form-item">
			<label class="layui-form-label">序号</label>
			<div class="layui-input-inline">
				<input type="text" name="id" required lay-verify="required"
					placeholder="序号" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		
		<div class="layui-form-item" style="height: 119px; ">
			<label class="layui-form-label">活动类型</label>
			<div class="layui-input-block">
				<select name="typeId" lay-filter="aihao">
					<option value="戏曲">戏曲</option>
					<option value="音乐">音乐</option>
					<option value="美术">美术</option>
					<option value="体育">体育</option>
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
				<input class="layui-input" name="startTime" placeholder="开始时间"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>
    
        <div class="layui-form-item">
			<label class="layui-form-label">结束时间：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" name="endTime" placeholder="结束时间"
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
			
		
		
	</form>
</body>
</html>
