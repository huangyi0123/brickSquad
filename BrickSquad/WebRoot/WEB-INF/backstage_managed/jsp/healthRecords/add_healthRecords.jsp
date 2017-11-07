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
	href="resource/plugins/layui/css/layui.css">
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/layui.js"></script>
	<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
		$(function() {
		var da = '${typeData}';
		console.log(da);
		da=JSON.parse(da);
		findAll(da, "#JB");
		form.render('select', 'JB1');
	});
	});
	
	$(function() {
		/* 从conterller获取数据打印在控制台 */
		var allPersonalInformationdata = '${allPersonalInformationdata}';
		allPersonalInformationdata = JSON.parse(allPersonalInformationdata);
		/* 修改时显示身份证和名字但是不能修改 */
			/* 遍历allPersonalInformationdata数据 */
			var perId = $("#perId").val();
			for (var i = 0; i < allPersonalInformationdata.length; i++) {
				if (perId == allPersonalInformationdata[i].id) {
					$("#IdName").val(allPersonalInformationdata[i].name);
					$("#IdName").attr('disabled',true);
					$("#perIdCardId").val(allPersonalInformationdata[i].idCard);
					$("#perIdCardId").attr('disabled',true);
				}
			}
		/*$绑定从输入框身份证号码id的监听事件，change input设置监听事件的实现方式，鼠标点击输入就启动 */
		$("#perIdCardId").bind('change input',
		/*  */
		function() {
			/*定义一个变量d，让perIdCardId的输入值传进去  */
			var d = $("#perIdCardId").val();
			$("#IdName").val("");
			$("#perId").val("");
			/* 遍历allPersonalInformationdata数据 */
			for (var i = 0; i < allPersonalInformationdata.length; i++) {
				if (d == allPersonalInformationdata[i].idCard) {
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
	<div style="padding-left: 140px;font-size:16;">${msg}老人健康档案信息</div>
	<br>
	<form class="layui-form" style="margin-right: 30px"
		action="healthRecords/${url}" id="form1" method="post">
			<div class="layui-form-item">
			<label class="layui-form-label">身份证号：</label>
			<input type="hidden" name="id" value="${healthRecords.id}"> 
			<div class="layui-input-inline">
				<input type="text" id="perIdCardId" required lay-verify="required"  value="${healthRecords.idCard}"
					placeholder="身份证号" autocomplete="off" class="layui-input">
				
			</div>
			<label class="layui-form-label">老人姓名：</label>
			<div class="layui-input-inline">
				<input type="text" id="IdName"  required lay-verify="required" value="${healthRecords.perId}"
					placeholder="老人姓名" autocomplete="off" class="layui-input">
			</div>
			<input type="hidden" name="perId" value="${healthRecords.pid}"
					id="perId" required lay-verify="required" placeholder="ID存入"
					autocomplete="off" class="layui-input"> 
		</div>
			
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">记录人员：</label>
			<div class="layui-input-inline">
			<input type="hidden" name="userId" value="${healthRecords.userId}"> 
				<input type="text"  value="${user.username }"
					required lay-verify="required" placeholder="记录人员ID"
					autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">疾病类型：</label>
			<div class="layui-input-inline">
				<select name="diseaseId" id="JB" lay-search="" val="${healthRecords.diseaseId}"
					lay-filter="JB1">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">身体情况：</label>
			<div class="layui-input-inline">
				<input type="text" name="shape" required lay-verify="required"
					value="${healthRecords.shape }" placeholder="身体情况" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">饮食情况：</label>
			<div class="layui-input-inline">
				<input type="text" value="${healthRecords.dietSituation }"
					name="dietSituation" required lay-verify="required"
					placeholder="饮食情况" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">运动情况：</label>
			<div class="layui-input-inline">
				<input type="text" value="${healthRecords.sportsSituation }"
					name="sportsSituation" required lay-verify="required"
					placeholder="运动情况" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">情绪控制：</label>
			<div class="layui-input-inline">
				<input type="text" value="${healthRecords.emotionControl }"
					name="emotionControl" required lay-verify="required"
					placeholder="情绪控制" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">血栓：</label>
			<div class="layui-input-inline">
				<input type="text" name="thrombus" required lay-verify="required"
					value="${healthRecords.thrombus }" placeholder="血栓"
					autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">血压：</label>
			<div class="layui-input-inline">
				<input type="text" name="bloodPressure" required
					lay-verify="required" value="${healthRecords.bloodPressure }"
					placeholder="血压" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">健康评价：</label>
			<div class="layui-input-inline">
				<input type="text" name="healthAssessment" required
					lay-verify="required" value="${healthRecords.healthAssessment }"
					placeholder="健康评价" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">危险提示：</label>
			<div class="layui-input-inline">
				<input type="text" name="dangerousTips" required
					lay-verify="required" value="${healthRecords.dangerousTips }"
					placeholder="危险提示" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">结论/建议：</label>
			<div class="layui-input-inline">
				<input type="text" value="${healthRecords.conclusionSuggestion }"
					name="conclusionSuggestion" required lay-verify="required"
					placeholder="最终建议" autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">评估：</label>
			<div class="layui-input-inline">
				<input type="text" value="${healthRecords.evaluate }"
					name="evaluate" required lay-verify="required" placeholder="评估"
					autocomplete="off" class="layui-input">
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
