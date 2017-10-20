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
  <form action="guidance/insertGuidance" method="post" id="form">
  
   <div class="layui-form-item">
			<label class="layui-form-label">指导日期：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" name="guidanceDate" placeholder="活动日期"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>
  
<!--   <div class="layui-inline">
      <label class="layui-form-label">沟通日期</label>
      <div class="layui-input-inline">
        <input type="date" class="layui-input" name="guidanceDate" placeholder="yyyy-MM-dd">
      </div>
    </div> 
     -->
<!-- <div class="layui-form-item">
			<label class="layui-form-label">日期</label>
			<div class="layui-input-inline">
				<input type="date" name="guidanceDate" required lay-verify="required"
					placeholder="" autocomplete="off" class="layui-input">
			</div>
		</div> -->
  
 	<div class="layui-form-item layui-form-text">
    <label class="layui-form-label">主要疾病</label>
    <div class="layui-input-block">
      <textarea name="disease" placeholder="请输入详细地址" class="layui-textarea"></textarea>
    </div>
  </div>
  	<div class="layui-form-item layui-form-text">
    <label class="layui-form-label">评估意见</label>
    <div class="layui-input-block">
      <textarea name="assessment" placeholder="请输入详细地址" class="layui-textarea"></textarea>
    </div>
  </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">专家建议</label>
    <div class="layui-input-block">
      <textarea name="suggest" placeholder="请输入详细地址" class="layui-textarea"></textarea>
    </div>
  </div>
   <div class="layui-form-item">
    <label class="layui-form-label">老人ID：</label>
    <div class="layui-input-inline">
      <input type="text" name="perId" required  lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input">
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
