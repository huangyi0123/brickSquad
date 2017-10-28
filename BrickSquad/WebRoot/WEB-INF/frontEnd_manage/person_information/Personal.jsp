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

<link href="resource/plugins/layui/css/layui.css" rel="stylesheet" type="text/css" media="all" />
<link href="resource/plugins/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" type="text/css" href="resource/css/Personal.css">

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript" src="resource/plugins/bootstrap/bootstrap.min.js"></script>
</head>

<body>
<jsp:include page="../util/head.jsp"></jsp:include>
	<div class="Person_body"> 
		<div class="Person_left">
			<div class="Person_left_src">
				<img style="width: 100px;height: 100px;margin-top: 30px;margin-left: 180px;" alt=""
					src="resource/image/2.png">
				<span
					style="width:200px;height:20px;border-color:green; text-align:center; float:left; margin-top: 10px;margin-left: 130px;">我的用户名</span>
			</div>
		</div>
		<div class="Person_right">
			<div class="layui-tab layui-tab-card" style="height:1100px; margin-top: 40px;margin-left: 10px;">
				<ul class="layui-tab-title">
					<li class="layui-this">个人资料</li>
					<li>安全设置</li>
					<li>健康管理</li>
					<li>活动管理</li>
					<li>订单管理</li>
				</ul>
				<div class="layui-tab-content" style="height: 900px;">
					<div class="layui-tab-item layui-show  layui-tab-item1">
						<label >亲爱的**************，填写真实的资料，有助于你的好友找到你哦！</label> <label>当前头像：</label>
						<img style="width: 100px;height: 100px;margin-left: 150px;margin-top: -20px;" alt=""
							src="resource/image/2.png">
						<label>昵称：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 350px;margin-left: 150px;margin-top: -35px;" autocomplete="off"
							placeholder="请输入昵称" class="layui-input">
						<label>* 真实姓名：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 350px;margin-left: 150px;margin-top: -35px;" autocomplete="off"
							placeholder="请输入真实姓名" class="layui-input">
						<label>* 性别：</label>
						<form class="layui-form" action="" style="margin-left: 40px;margin-top: -35px;">
							<div class="layui-form-item">
								<div class="layui-input-block">
									<input type="radio" name="sex" value="男" title="男" checked>
									<input type="radio" name="sex" value="女" title="女">
								</div>
							</div>
						</form>
						<label>* 身份证号：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 350px;margin-left: 150px;margin-top: -35px;" autocomplete="off"
							placeholder="请输入身份证号" class="layui-input">
						<label>出生年月：</label> <label>* 现居住地：</label>
						<form class="layui-form" action="">
							<div class="layui-form-item" style="margin-left: 150px;margin-top: -35px;">
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
							style="width: 350px;margin-left: 150px;margin-top: -35px;" autocomplete="off"
							placeholder="请输入故乡所在地" class="layui-input">
						<div style="width: 100%;height: 2px;background-color: #E2E2E2;margin-top: 10px;"></div>
						<label>* 亲属联系人1：</label> <label>* 联系人姓名：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 350px;margin-left: 150px;margin-top: -35px;" autocomplete="off"
							placeholder="请输入联系人姓名" class="layui-input">
						<label>* 联系人电话：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 350px;margin-left: 150px;margin-top: -35px;" autocomplete="off"
							placeholder="请输入联系人电话" class="layui-input">
						<label>* 亲属关系：</label>
						<form class="layui-form" action="">
							<div class="layui-inline" style="margin-left: 150px;margin-top: -35px;">
								<div class="layui-input-inline">
									<select name="modules" lay-verify="required" lay-search="">
										<option value="">直接选择或搜索选择</option>
										<option value="1">父女</option>
										<option value="2">母女</option>
										<option value="3">父子</option>
										<option value="4">母子</option>
										<option value="5">姐弟</option>
										<option value="6">姐妹</option>
										<option value="7">兄弟</option>
										<option value="8">兄妹</option>
									</select>
								</div>
							</div>
						</form>
						<label>亲属联系人2：</label> <label>* 联系人姓名：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 350px;margin-left: 150px;margin-top: -35px;" autocomplete="off"
							placeholder="请输入联系人姓名" class="layui-input">
						<label>* 联系人电话：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 350px;margin-left: 150px;margin-top: -35px;" autocomplete="off"
							placeholder="请输入联系人电话" class="layui-input">
						<label>* 亲属关系：</label>
						<form class="layui-form" action="">
							<div class="layui-inline" style="margin-left: 150px;margin-top: -35px;">
								<div class="layui-input-inline">
									<select name="modules" lay-verify="required" lay-search="">
										<option value="">直接选择或搜索选择</option>
										<option value="1">父女</option>
										<option value="2">母女</option>
										<option value="3">父子</option>
										<option value="4">母子</option>
										<option value="5">姐弟</option>
										<option value="6">姐妹</option>
										<option value="7">兄弟</option>
										<option value="8">兄妹</option>
									</select>
								</div>
							</div>
						</form>
					</div>
					<div class="layui-tab-item layui-tab-item2">
						<label style="font-weight:bold; margin-top:20px; margin-left:50px; display: block;">您的基础信息</label>
						<label>用户名：</label> <label>绑定手机：</label>
						<a href="#"
							style="margin-left:400px;margin-top:-25px; line-height:20px; text-decoration: none;display: block; ">修改</a>
						<div style="width: 100%;height: 2px;background-color: #E2E2E2;margin-top: 20px;"></div>
						<label style="font-weight:bold; margin-top:20px; margin-left:50px; display: block;">您的安全服务</label>
						<!-------------------------------- 身份验证 ---------------------------------->
						<i class="layui-icon"
							style="font-size: 30px;color: green;margin-left: 100px;margin-top: 20px;display: block;">&#xe618;</i>
						<label style="font-size: 5px;margin-left: 105px;margin-top: -8px;">已完成</label> <label
							style="margin-left: 200px;margin-top: -60px;">身份验证</label>
						<p style="width:350px; margin-left: 300px;margin-top: -25px;">用于提升账号的安全性和信任级别。认证后的有卖家记录的账号不能修改认证信息。</p>
						<a style="margin-left: 700px;margin-top: -35px;">查看</a>
						<div style="width: 100%;height: 1px;border-top: 1px dashed #E1E1E1;margin-top: 50px;"></div>
						<!-------------------------------- 登录密码 ---------------------------------->

						<i class="layui-icon"
							style="font-size: 30px;color: green;margin-left: 100px;margin-top: 20px;display: block;">&#xe618;</i>
						<label style="font-size: 5px;margin-left: 105px;margin-top: -8px;">已完成</label> <label
							style="margin-left: 200px;margin-top: -60px;">登录密码</label>
						<p style="width:350px; margin-left: 300px;margin-top: -25px;">安全性高的密码可以使账号更安全。建议您定期更换密码，且设置一个包含数字和字母，并长度超过6位以上的密码。</p>
						<a style="margin-left: 700px;margin-top: -35px;">查看</a>
						<div style="width: 100%;height: 1px;border-top: 1px dashed #E1E1E1;margin-top: 50px;"></div>

						<!-------------------------------- 绑定手机 ---------------------------------->
						<i class="layui-icon"
							style="font-size: 35px;color: red;margin-left: 100px;margin-top: 20px;display: block;">&#x1006;</i>
						<label style="font-size: 5px;margin-left: 105px;margin-top: -8px;">未设置</label> <label
							style="margin-left: 200px;margin-top: -60px;">绑定手机</label>
						<p style="width:350px; margin-left: 300px;margin-top: -25px;">绑定手机后，您即可享受淘宝丰富的手机服务，如手机找回密码等。</p>
						<a style="margin-left: 700px;margin-top: -35px;">设置</a>
					</div>
					<div class="layui-tab-item layui-tab-item3">
						<label style="display:block; font-weight: bold;margin-left: 50px;margin-top: 20px;">基础管理信息</label>
						<label>国籍：</label>
						<form class="layui-form" action="" style="width: 100px;margin-left: 100px;margin-top: -35px;">
							<select name="city" lay-verify="">
								<option value="">请选择一个城市</option>
								<option value="010">北京</option>
								<option value="021">上海</option>
								<option value="0571">杭州</option>
							</select>
						</form>
						<label style="margin-left: 400px;margin-top: -35px;">民族：</label>
						<form class="layui-form" action="" style="width: 100px;margin-left: 450px;margin-top: -35px;">
							<select name="city" lay-verify="">
								<option value="">请选择一个城市</option>
								<option value="010">北京</option>
								<option value="021">上海</option>
								<option value="0571">杭州</option>
							</select>
						</form>

						<label>文化程度：</label>
						<form class="layui-form" action="" style="width: 100px;margin-left: 130px;margin-top: -35px;">
							<select name="city" lay-verify="">
								<option value="">请选择一个城市</option>
								<option value="010">北京</option>
								<option value="021">上海</option>
								<option value="0571">杭州</option>
							</select>
						</form>
						<label style="margin-left: 400px;margin-top: -35px;">婚姻状况：</label>
						<form class="layui-form" action="" style="width: 100px;margin-left: 480px;margin-top: -35px;">
							<select name="city" lay-verify="">
								<option value="">请选择一个城市</option>
								<option value="010">北京</option>
								<option value="021">上海</option>
								<option value="0571">杭州</option>
							</select>
						</form>
						<label style="margin-top: 20px;">身高：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 100px;margin-left: 100px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							autocomplete="off" placeholder="请输入身高" class="layui-input">
						<label style="margin-left: 200px;margin-top: -25px;">（Kg/千克）</label> <label
							style="margin-left: 400px;margin-top: -35px;">体重：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 100px;margin-left: 450px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							autocomplete="off" placeholder="请输入体重" class="layui-input">
						<label style="margin-left: 550px;margin-top: -25px;">（Kg/千克）</label> <label
							style="margin-top: 20px;">血栓：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 100px;margin-left: 100px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							autocomplete="off" placeholder="请输入血栓" class="layui-input">
						<label style="margin-left: 400px;margin-top: -35px;">血压：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 100px;margin-left: 450px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							autocomplete="off" placeholder="请输入血压" class="layui-input">
						<label>饮食状况：</label>
						<form class="layui-form" action="" style="width: 100px;margin-left: 130px;margin-top: -35px;">
							<select name="city" lay-verify="">
								<option value="">请选择一个城市</option>
								<option value="010">北京</option>
								<option value="021">上海</option>
								<option value="0571">杭州</option>
							</select>
						</form>
						<label style="margin-left: 400px;margin-top: -35px;">运动状况：</label>
						<form class="layui-form" action="" style="width: 100px;margin-left: 480px;margin-top: -35px;">
							<select name="city" lay-verify="">
								<option value="">请选择一个城市</option>
								<option value="010">北京</option>
								<option value="021">上海</option>
								<option value="0571">杭州</option>
							</select>
						</form>
						<label>情绪控制：</label>
						<form class="layui-form" action="" style="width: 100px;margin-left: 130px;margin-top: -35px;">
							<select name="city" lay-verify="">
								<option value="">请选择一个城市</option>
								<option value="010">北京</option>
								<option value="021">上海</option>
								<option value="0571">杭州</option>
							</select>
						</form>
						<label style="margin-left: 400px;margin-top: -35px;">身体状况：</label>
						<form class="layui-form" action="" style="width: 100px;margin-left: 480px;margin-top: -35px;">
							<select name="city" lay-verify="">
								<option value="">请选择一个城市</option>
								<option value="010">北京</option>
								<option value="021">上海</option>
								<option value="0571">杭州</option>
							</select>
						</form>
						<div style="width: 100%;height: 2px;background-color: #E2E2E2;margin-top: 20px;"></div>
						<label style="display:block; font-weight: bold;margin-left: 50px;margin-top: 20px;">健康管理信息</label>
						<div class="layui-collapse" style="width: 90%;margin: 20px auto;">
							<div class="layui-colla-item">
								<h5 class="layui-colla-title" style="font-weight: bold;">家族史</h5>
								<div class="layui-colla-content layui-show">内容区域</div>
							</div>
							<div class="layui-colla-item">
								<h5 class="layui-colla-title" style="font-weight: bold;">过敏史</h5>
								<div class="layui-colla-content">内容区域</div>
							</div>
							<div class="layui-colla-item">
								<h5 class="layui-colla-title" style="font-weight: bold;">接种史</h5>
								<div class="layui-colla-content">内容区域</div>
							</div>
							<div class="layui-colla-item">
								<h5 class="layui-colla-title" style="font-weight: bold;">病史</h5>
								<div class="layui-colla-content">内容区域</div>
							</div>
						</div>

					</div>
					<div class="layui-tab-item">4</div>

					<div class="layui-tab-item layui-tab-item5">
						<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
							<ul class="layui-tab-title">
								<li class="layui-this">所有订单</li>
								<li>待付款</li>
								<li>待发货</li>
								<li>待收货</li>
								<li>待评价</li>
							</ul>
							<i class="glyphicon glyphicon-trash" style="margin-left: 850px;margin-top: -38px;"> </i>
							<a href="#" style="display:block; margin-left: 870px;margin-top: -40px;">订单回收站</a>
							<div class="layui-tab-content">
								<div class="layui-tab-item layui-show">
									<table class="layui-table">
										<colgroup>
											<col width="150">
											<col width="200">
											<col>
										</colgroup>
										<thead>
											<tr>
												<th>宝贝</th>
												<th>单价</th>
												<th>数量</th>
												<th>交易状态</th>
												<th>交易操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>贤心</td>
												<td>2016-11-29</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
											</tr>
											<tr>
												<td>许闲心</td>
												<td>2016-11-28</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="layui-tab-item">
									<table class="layui-table">
										<colgroup>
											<col width="150">
											<col width="200">
											<col>
										</colgroup>
										<thead>
											<tr>
												<th>宝贝</th>
												<th>单价</th>
												<th>数量</th>
												<th>交易状态</th>
												<th>交易操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>贤心</td>
												<td>2016-11-29</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
											</tr>
											<tr>
												<td>许闲心</td>
												<td>2016-11-28</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="layui-tab-item">
									<table class="layui-table">
										<colgroup>
											<col width="150">
											<col width="200">
											<col>
										</colgroup>
										<thead>
											<tr>
												<th>宝贝</th>
												<th>单价</th>
												<th>数量</th>
												<th>交易状态</th>
												<th>交易操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>贤心</td>
												<td>2016-11-29</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
											</tr>
											<tr>
												<td>许闲心</td>
												<td>2016-11-28</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="layui-tab-item">
									<table class="layui-table">
										<colgroup>
											<col width="150">
											<col width="200">
											<col>
										</colgroup>
										<thead>
											<tr>
												<th>宝贝</th>
												<th>单价</th>
												<th>数量</th>
												<th>交易状态</th>
												<th>交易操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>贤心</td>
												<td>2016-11-29</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
											</tr>
											<tr>
												<td>许闲心</td>
												<td>2016-11-28</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="layui-tab-item">
									<table class="layui-table">
										<colgroup>
											<col width="150">
											<col width="200">
											<col>
										</colgroup>
										<thead>
											<tr>
												<th>宝贝</th>
												<th>单价</th>
												<th>数量</th>
												<th>交易状态</th>
												<th>交易操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>贤心</td>
												<td>2016-11-29</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
											</tr>
											<tr>
												<td>许闲心</td>
												<td>2016-11-28</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="layui-tab-item">6</div>
							</div>
							<i class="fa fa-trash-o" style="display:block; margin-left: 900px;margin-top: -60px;"> </i>
						</div>

					</div>

					<div class="layui-tab-item">6</div>
				</div>
			</div>

			<script>
				layui.use('form', function() {
					var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功

					//……

					//但是，如果你的HTML是动态生成的，自动渲染就会失效
					//因此你需要在相应的地方，执行下述方法来手动渲染，跟这类似的还有 element.init();
					form.render();
				});
				layui.use('element', function() {
					var element = layui.element;
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
	<jsp:include page="../util/indexFooter.jsp"></jsp:include>
</body>
</html>
