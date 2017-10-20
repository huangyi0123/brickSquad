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
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修改成功 
	});
</script>
</head>
<body>
	<br>
	<form class="layui-form"
		action="personalInformation/addPersonalInformation" id="form1"
		method="post">
		<div class="layui-form-item">
			<label class="layui-form-label">老人姓名</label>
			<div class="layui-input-inline">
				<input type="text" name="name" required lay-verify="required"
					placeholder="老人姓名" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">身份证号</label>
			<div class="layui-input-inline">
				<input type="text" name="idCard" required lay-verify="required"
					placeholder="身份证号" autocomplete="off" class="layui-input">
			</div>
			<!-- <label class="layui-form-label">出生日期 </label>
			<div class="layui-input-inline">
				<input type="date" name="birthday" required lay-verify="required"
					placeholder="出生日期" autocomplete="off" class="layui-input">
			</div> -->
			<label class="layui-form-label">性别</label>
			<div class="layui-input-inline">
				<select name="gender">
					<option value="0">男</option>
					<option value="1">女</option>
				</select>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">体重</label>
			<div class="layui-input-inline">
				<input type="text" name="weight" required lay-verify="required"
					placeholder="体重" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">身高</label>
			<div class="layui-input-inline">
				<input type="text" name="height" required lay-verify="required"
					placeholder="身高" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">民族</label>
			<div class="layui-input-inline">
				<input type="text" name="nationId" required lay-verify="required"
					placeholder="民族" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">婚姻情况</label>
			<div class="layui-input-inline">
				<input type="text" name="marriageId" required lay-verify="required"
					placeholder="婚姻情况" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">

			<label class="layui-form-label">家族遗传病史</label>
			<div class="layui-input-inline">
				<input type="text" name="familyHistory" required
					lay-verify="required" placeholder="家族遗传病史" autocomplete="off"
					class="layui-input">
			</div>
			<label class="layui-form-label">收入</label>
			<div class="layui-input-inline">
				<input type="text" name="income" required lay-verify="required"
					placeholder="收入" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">邮编</label>
			<div class="layui-input-inline">
				<input type="text" name="zip" required lay-verify="required"
					placeholder="邮编" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">文化程度</label>
			<div class="layui-input-inline">
				<input type="text" name="cultureId" required lay-verify="required"
					placeholder="文化程度" autocomplete="off" class="layui-input">
			</div>

		</div>
		<div class="layui-form-item">

			<label class="layui-form-label">是否具有购买能力</label>
			<div class="layui-input-inline">
			<select name="isPurchasing">
					<option value="0">是</option>
					<option value="1">否</option>
				</select>
			</div>
			<label class="layui-form-label">是否具有决策能力</label>
			<div class="layui-input-inline">
			<select name="isSupremacy">
					<option value="0">是</option>
					<option value="1">否</option>
				</select>
				
			</div>
			<label class="layui-form-label">是否有购买需求</label>
			<div class="layui-input-inline">
			<select name="isPureq">
					<option value="0">是</option>
					<option value="1">否</option>
				</select>
				
			</div>
			<label class="layui-form-label">购买意愿分类</label>
			<div class="layui-input-inline">
			<select name="pureqTypeId">
					<option value="0">是</option>
					<option value="1">否</option>
				</select>
				
			</div>

		</div>

		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">地址ID</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="addressId"
						placeholder="地址ID">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">从事行业</label>
			<div class="layui-input-inline">
				<input type="text" name="engagedIndustry" required
					lay-verify="required" placeholder="从事行业" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">退休单位</label>
			<div class="layui-input-inline">
				<input type="text" name="retirementUnit" required
					lay-verify="required" placeholder="退休单位" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<!-- 	<div class="layui-form-item">
			<label class="layui-form-label">退休日期 </label>
			<div class="layui-input-inline">
				<input type="date" name="retirementDate" required
					lay-verify="required" placeholder="退休日期" autocomplete="off"
					class="layui-input">
			</div>
		</div> -->

		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>

	</form>
</body>
</html>
