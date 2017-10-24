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
<script type="text/javascript" src="ui/backstage_managed/js/common.js"></script>
<script type="text/javascript">
layui.use('layer', function(){
	  var layer = layui.layer;
	  /* 打开遮罩层 */
	  var test =layer.load(1, {shade: [0.8, '#393D49']});
	  /*  */
	  //查询type中parentId为0，即疾病检查类型的集合（检查类型分类）
	$(function() {
		$.ajax({
			url : 'type/findTypeByParentId',
			data : {
				'parentId' : 'jibingleixin'
			},
			success : function(data) {
				data = JSON.parse(data);
				findAll(data, "#paramentTypeId");
				
				layui.use('form', function() {
					var form = layui.form();
				});

			}
		});
		var dat = $("#inspectionDateId").attr('val');
		dat = Format(new Date(dat), "yyyy-MM-dd");
		$("#inspectionDateId").val(dat);
		/* 从conterller获取数据打印在控制台 */
		var allPersonalInformationdata = '${allPersonalInformationData}';
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
	  
	  /* 关闭遮罩层 */
	  layer.close(test);
	});

	
</script>
</head>
<body>
	<br>
	<div style="padding-left: 140px;font-size:16;">${msg}类别信息</div>
	<br>
	<form class="layui-form" action="medical/${url }" id="form"
		method="post">
		<input type="hidden" name="id" value="${medical.id }">
		<div class="layui-form-item">
			<label class="layui-form-label">身份证号</label>

			<div class="layui-input-inline">
				<input type="text" id="perIdCardId" required lay-verify="required"
					placeholder="身份证号" autocomplete="off" class="layui-input">
				<input type="hidden" name="perId" value="${medical.perId }"
					id="perId" required lay-verify="required" placeholder="ID存入"
					autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">姓名</label>

			<div class="layui-input-inline">
				<input type="text" id="IdName" required lay-verify="required"
					placeholder="姓名" autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">日期</label>
			<div class="layui-input-inline">
				<input type="date" id="inspectionDateId" name="inspectionDate"
					val="${medical.inspectionDate }" required lay-verify="required"
					placeholder="yyyy-MM-dd" class="layui-input">
				
			</div>
		</div>




		<div class="layui-form-item">
			<label class="layui-form-label">检查医院</label>

			<div class="layui-input-inline">
				<input type="text" name="hospital" value="${medical.hospital }"
					required lay-verify="required" placeholder="检查医院"
					autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">检查类型</label>
			<div class="layui-input-inline">
				<select name="typeId" id="paramentTypeId" val="${medical.typeId }"
					lay-search="">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">病历详情</label>

			<div class="layui-input-inline">
				<input type="text" name="content" value="${medical.content }"
					required lay-verify="required" placeholder="病历详情"
					autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">主治医师</label>

			<div class="layui-input-inline">
				<input type="text" name="attendingSurgeon"
					value="${medical.attendingSurgeon }" required lay-verify="required"
					placeholder="主治医师" autocomplete="off" class="layui-input">
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
