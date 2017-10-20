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
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="ui/backstage_managed/plugins/layui/css/layui.css">
<script type="text/javascript"
	src="ui/backstage_managed/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/layui.js"></script>
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
	});
</script>
</head>

<body>
	<form class="layui-form" style="margin-right: 30px"
		action="healthRecords/insertHealthRecords" id="form1" method="post">
		<div class="layui-form-item" style="margin-top: 50px;">
			<label class="layui-form-label" style="width: 100px;">老人ID：</label>
			<div class="layui-input-inline">
				<input type="text" name="perId" required lay-verify="required"
					placeholder="老人ID" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">记录人员ID：</label>
			<div class="layui-input-inline">
				<input type="text" name="userId" required lay-verify="required"
					placeholder="记录人员ID" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">疾病ID：</label>
			<div class="layui-input-inline">
				<input type="text" name="diseaseId" required
					lay-verify="required" placeholder="疾病ID" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">症状：</label>
			<div class="layui-input-inline">
				<input type="text" name="shape" required
					lay-verify="required" placeholder="症状" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">饮食情况：</label>
			<div class="layui-input-inline">
				<input type="text" name="dietSituation" required
					lay-verify="required" placeholder="饮食情况" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">运动情况：</label>
			<div class="layui-input-inline">
				<input type="text" name="sportsSituation" required
					lay-verify="required" placeholder="运动情况" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">情绪控制：</label>
			<div class="layui-input-inline">
				<input type="text" name="emotionControl" required
					lay-verify="required" placeholder="情绪控制" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">运动情况：</label>
			<div class="layui-input-inline">
				<input type="text" name="thrombus" required
					lay-verify="required" placeholder="运动情况" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">血栓：</label>
			<div class="layui-input-inline">
				<input type="text" name="thrombus" required
					lay-verify="required" placeholder="血栓" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">血压：</label>
			<div class="layui-input-inline">
				<input type="text" name="bloodPressure" required
					lay-verify="required" placeholder="血压" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">健康评价：</label>
			<div class="layui-input-inline">
				<input type="text" name="healthAssessment" required
					lay-verify="required" placeholder="健康评价" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">危险提示：</label>
			<div class="layui-input-inline">
				<input type="text" name="dangerousTips" required
					lay-verify="required" placeholder="危险提示" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">结论/建议：</label>
			<div class="layui-input-inline">
				<input type="text" name="conclusionSuggestion" required
					lay-verify="required" placeholder="最终建议" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">评估：</label>
			<div class="layui-input-inline">
				<input type="text" name="evaluate" required
					lay-verify="required" placeholder="评估" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<button type="submit" style="margin-left: 120px;"
				class="layui-btn layui-btn-primary">提交</button>
			<button type="reset" style="margin-left: 30px;"
				class="layui-btn layui-btn-primary">重置</button>

		</div>
	</form>
</body>
</html>
