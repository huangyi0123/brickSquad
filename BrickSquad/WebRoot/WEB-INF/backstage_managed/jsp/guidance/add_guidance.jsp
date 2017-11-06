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
	href="resource/plugins/layui/css/layui.css">
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
		//执行一个laydate实例
		laydate.render({
			elem : '#test1' //指定元素
		});
		
	}); 
	//查询type中parentId为0，即疾病检查类型的集合（检查类型分类）
		
	$(function() {
		//日期格式回填
		var guidanceDateId = $("#guidanceDateId").attr('val');
		 guidanceDate = Format(new Date(guidanceDateId),
				"yyyy-MM-dd hh:mm:ss");
		$("#guidanceDateId").val(guidanceDate);
		
		/* 从conterller获取数据打印在控制台 */
		var allPersonalInformationdata='${allPersonalInformationdata}';
		allPersonalInformationdata=JSON.parse(allPersonalInformationdata);
		var guidance =$("#suggest").attr('val');
		$("#suggest").val(guidance);
		var guidance = $("#assessment").attr('val');
		$("#assessment").val(guidance);
		var guidance = $("#disease").attr('val');
		$("#disease").val(guidance);
		/*$绑定从输入框身份证号码id的监听事件，change input设置监听事件的实现方式，鼠标点击输入就启动 */
		$("#perIdCardId").bind('change input',
				/*  */
				function(){
			/*定义一个变量d，让perIdCardId的输入值传进去  */
					var d=$("#perIdCardId").val();
					$("#IdName").val("");
					$("#perId").val("");
					/* 遍历allPersonalInformationdata数据 */
					for(var i=0;i<allPersonalInformationdata.length;i++){
						if(d==allPersonalInformationdata[i].idCard){
							$("#IdName").val(allPersonalInformationdata[i].name);
							$("#perId").val(allPersonalInformationdata[i].id);
						}
						
					}
				});
	});
</script>
</head>
  
  <body>
  <br>
	<div style="padding-left: 120px;font-size:16;">${msg}老人健康指导信息</div>
	<br>
  <form action="guidance/${url }" method="post" id="form">
   <div class="layui-form-item">
			<label class="layui-form-label">指导日期：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" val="${selectGuidanceId.guidanceDate}" 
				name="guidanceDate" id="guidanceDateId" placeholder="活动日期"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>
  
  
 	<div class="layui-form-item layui-form-text">
    <label class="layui-form-label">主要疾病</label>
    <div class="layui-input-block">
      <textarea  name="disease" placeholder="请输入所患疾病" class="layui-textarea" val="${selectGuidanceId.disease}" id="disease"></textarea>
    </div>
  </div>
  	<div class="layui-form-item layui-form-text">
    <label class="layui-form-label">评估意见</label>
    <div class="layui-input-block">
      <textarea  name="assessment" placeholder="请输入评估意见" class="layui-textarea" val="${selectGuidanceId.assessment}" id="assessment"></textarea>
    </div>
  </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">专家建议</label>
    <div class="layui-input-block">
      <textarea  name="suggest" placeholder="请输入专家建议" class="layui-textarea" val="${selectGuidanceId.suggest}" id="suggest"></textarea>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">客户身份证号码：</label>
    <div class="layui-input-inline">
      <input type="text" value="${selectGuidanceId.perIdCard}" name="perIdCard" id="perIdCardId"  lay-filter="perIdCardLay" required  lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input">
    </div>
  </div>
  <input type="hidden" name="perId" id="perId">
   <div class="layui-form-item">
    <label class="layui-form-label">客户姓名：</label>
    <div class="layui-input-inline">
      <input type="text" value="${selectGuidanceId.perIdName}" name="perIdName" id="IdName" required  lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input">
    </div>
  </div>
    <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
  <div style="clear: both;"></div>
	<div class="cls"></div>
	<table grid-manager="demo-ajaxPageCode"></table>
  </form>
  </body>
</html>
