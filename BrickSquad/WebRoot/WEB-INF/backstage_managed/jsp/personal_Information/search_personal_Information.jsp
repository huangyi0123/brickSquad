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
	$(function() {
		layui.use('form', function() {
			var form = layui.form();
		});
		var da = $("#startId").attr('val');
		dat = Format(new Date(da), "yyyy-MM-dd HH:mm:ss");
		$("#startId").val(dat);
		var da = $("#endId").attr('val');
		dat = Format(new Date(da), "yyyy-MM-dd HH:mm:ss");
		$("#endId").val(dat);
	});
</script>
</head>

<body>

	 <br>
	<div style="padding-left: 130px;font-size:22;">查看老人健康档案详细信息</div>
	<br>
	 
		<div class="layui-form-item ">
			<label class="layui-form-label ">姓名</label>
			
			<div class="layui-input-inline">
			<input value="${personalInformation.name}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			
			<label class="layui-form-label ">性别</label>
			<div class="layui-input-inline">
				<input value="${personalInformation.gender}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			<label class="layui-form-label">身份证号</label>
			<div class="layui-input-inline">
			<input value="${personalInformation.idCard}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			<label class="layui-form-label">出生日期 </label>
			<div class="layui-input-inline">
				 
			<input value="${birthday}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
		</div>

		

		<div class="layui-form-item">
			
			<label class="layui-form-label">体重</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.weight }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			<label class="layui-form-label">身高</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.height }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>

			<label class="layui-form-label">民族</label>
			<div class="layui-input-inline">
				<div class="layui-input-inline">
				<input type="text" value="${personalInformation.nationId }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
				</div>
			</div>
			<label class="layui-form-label">婚姻情况</label>
			<div class="layui-input-inline">
				<div class="layui-input-inline">
				<input type="text" value="${personalInformation.marriageId }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
				</div>
			</div>

		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">收入</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.income }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			<label class="layui-form-label">邮编</label>
			
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.zip }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			
			<label class="layui-form-label">文化程度</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.cultureId }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			<label class="layui-form-label">家族遗传病史</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.familyHistory }"  lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
				 
			</div>
			

		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">是否具有购买能力</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.isPurchasing}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
		
			<label class="layui-form-label">是否具有决策能力</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.isSupremacy }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			
			<label class="layui-form-label">是否有购买需求</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.isPureq}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			
			
			<label class="layui-form-label">购买意愿分类</label>
			
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.pureqTypeId }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">从事行业</label>
			<div class="layui-input-inline">
			<input type="text" value="${personalInformation.engagedIndustry }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
				 
			</div>
			<label class="layui-form-label">退休单位</label>
			<div class="layui-input-inline">
			<input type="text" value="${personalInformation.retirementUnit  }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
				 
			</div>
			<label class="layui-form-label">退休日期 </label>
			<div class="layui-input-inline" >
			<input type="text" value="${retirementDate}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
				 
			</div>
			
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">地址</label>
			<div class="layui-input-inline" style="width: 500px">
				<input type="text" value="${address}"  lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			
		</div>
		
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="form Demo"
					onclick="javascript:history.back(-1);">返回</button>
			</div>
		</div>
		
		
</body>
</html>
