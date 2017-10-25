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

<title>My JSP 'Personal.jsp' starting page</title>

<link href="ui/backstage_managed/plugins/layui/css/layui.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css"
	href="ui/frontEnd_manage/css/Personal.css">

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript"
	src="ui/backstage_managed/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/layui.js"></script>

</head>

<body>
	<div class="Person_body">
		<div class="Person_left">
			<div class="Person_left_src"">
				<img
					style="width: 100px;height: 100px;margin-top: 30px;margin-left: 180px;"
					alt="" src="ui/frontEnd_manage/images/2.png"> <span
					style="width:200px;height:20px;background-color:green;text-align:center; float:left; margin-top: 10px;margin-left: 130px;">我的用户名</span>
			</div>
		</div>
		<div class="Person_right">
			<div class="layui-tab layui-tab-card"
				style="height:100%; margin-top: 40px;margin-left: 10px;">
				<ul class="layui-tab-title">
					<li class="layui-this">个人资料</li>
					<li>安全设置</li>
					<li>健康管理</li>
					<li>活动管理</li>
					<li>订单管理</li>
				</ul>
				<div class="layui-tab-content" style="height: 100%;">
					<div class="layui-tab-item layui-show">
						<label>亲爱的**************，填写真实的资料，有助于你的好友找到你哦！</label> <label>当前头像：</label>
						<img
							style="width: 100px;height: 100px;margin-left: 150px;margin-top: -20px;"
							alt="" src="ui/frontEnd_manage/images/2.png"> <label>昵称：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 350px;margin-left: 150px;margin-top: -35px;"
							autocomplete="off" placeholder="请输入昵称" class="layui-input">
						<label>* 真实姓名：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 350px;margin-left: 150px;margin-top: -35px;"
							autocomplete="off" placeholder="请输入真实姓名" class="layui-input">
						<label>* 性别：</label>
						<form class="layui-form" action=""
							style="margin-left: 40px;margin-top: -35px;">
							<div class="layui-form-item">
								<div class="layui-input-block">
									<input type="radio" name="sex" value="男" title="男" checked>
									<input type="radio" name="sex" value="女" title="女">
								</div>
							</div>
						</form>
						<label>* 身份证号：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 350px;margin-left: 150px;margin-top: -35px;"
							autocomplete="off" placeholder="请输入身份证号" class="layui-input">
						<label>出生年月：</label> <label>* 现居住地：</label>
						<form class="layui-form" action="">
						<div class="layui-form-item">
						<div class="layui-input-inline">
							<select name="quiz1">
								<option value="">请选择省</option>
								<option value="浙江" selected="">浙江省</option>
								<option value="你的工号">江西省</option>
								<option value="你最喜欢的老师">福建省</option>
							</select>
						</div>
						<div class="layui-input-inline">
							<select name="quiz2">
								<option value="">请选择市</option>
								<option value="杭州">杭州</option>
								<option value="宁波" disabled="">宁波</option>
								<option value="温州">温州</option>
								<option value="温州">台州</option>
								<option value="温州">绍兴</option>
							</select>
						</div>
						<div class="layui-input-inline">
							<select name="quiz3">
								<option value="">请选择县/区</option>
								<option value="西湖区">西湖区</option>
								<option value="余杭区">余杭区</option>
								<option value="拱墅区">临安市</option>
							</select>
						</div>
						</div>
						</form>
						<label>故乡所在地：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 350px;margin-left: 150px;margin-top: -35px;"
							autocomplete="off" placeholder="请输入故乡所在地" class="layui-input">
					</div>
					<div class="layui-tab-item">2</div>
					<div class="layui-tab-item">3</div>
					<div class="layui-tab-item">4</div>
					<div class="layui-tab-item">5</div>
					<div class="layui-tab-item">6</div>
				</div>
			</div>
			<script>
				layui.use('form', function() {
					var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功

					//……

					//但是，如果你的HTML是动态生成的，自动渲染就会失效
					//因此你需要在相应的地方，执行下述方法来手动渲染，跟这类似的还有 element.init();
					form.render("select");
				});
			</script>
			<script>
				form.on('radio(filter)', function(data) {
					console.log(data.elem); //得到radio原始DOM对象
					console.log(data.value); //被点击的radio的value值
				});
			</script>
		</div>
	</div>
</body>
</html>
