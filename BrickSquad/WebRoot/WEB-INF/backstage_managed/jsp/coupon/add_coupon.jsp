<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'add_article.jsp' starting page</title>

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
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript">
	$(function() {
		var data = "";
		$(".error").each(function() {
			data = data + "<br>" + $(this).val();
		});
		if (data != "") {
			layui.use('layer', function() {
				var layer = layui.layer;
				var msg = data;
				layer.msg(msg);
			});
		}
	});
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
		//获取老人信息表
		var dataBusness = '${dataBusness}';
		dataBusness = JSON.parse(dataBusness);
		findAll(dataBusness, "#busnessid");
		form.render('select', 'busnessid');
		//获取type中的
		var dataType = '${dataType}';
		dataType = JSON.parse(dataType);
		findAll(dataType, "#typeid");
		form.render('select', 'typeid');
		
		var url="${url}"   //根据用户点击页面判断是否需要回显
			if(url=='toAddCoupon'){}
			else{
			var da = $("#startTime").attr('val');//回显时间
			dat = Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
			$("#startTime").val(dat);
			
			var da = $("#endTime").attr('val');
			dat = Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
			$("#endTime").val(dat);
			}
	});
		
</script>
</head>

<body>
	<br>
	<div style="padding-left: 120px;font-size:16;">${msg}优惠券信息</div>
	<br>
	<form class="layui-form" action="coupon/${url}" id="form1"
		method="post">

		<input type="hidden" name="id"
			value="${coupon.id}"> 
			<c:if test="${url eq 'updateCouponById'}">
			<input type="hidden" name="buyersId"
			value="${newid}"> 
			</c:if>
		<div class="layui-form-item">
			<label class="layui-form-label">卖家商铺名：</label>
			<div class="layui-input-inline">
			<c:if test="${url ne 'insertCoupon'}">
				<input value="${busName}" lay-verify="required" autocomplete="off" class="layui-input"
					readonly="readonly" background: #F3F3F4;">
				</c:if>
				<c:if test="${url eq 'insertCoupon'}">
				<select lay-filter="busnessid" name="buyersId" id="busnessid"">
					<option value="">选择买家姓名</option>
				</select>
				</c:if>
			</div>
		</div>
			<div class="layui-form-item">
			<label class="layui-form-label">优惠券类型：</label>
			<div class="layui-input-inline">
				<select lay-filter="typeid" name="typeId"
					id="typeid"
					val="${coupon.typeId}">
					<option value="">选择优惠券类型</option>
				</select>
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">开始时间：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" id="startTime" name="startTime" placeholder="开始时间" val="${coupon.startTime }"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>
        <div class="layui-form-item">
			<label class="layui-form-label">结束时间：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" id="endTime" name="endTime" placeholder="结束时间" val="${coupon.endTime }"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">拥有总数：</label>
			<div class="layui-input-inline">
				<input type="number" name="total" required
					lay-verify="required" min="1" max="20"
					value="${coupon.total}" placeholder="拥有总数"
					autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">剩余量：</label>
			<div class="layui-input-inline">
				<input type="number" name="surplus" required
					lay-verify="required" min="1" max="20"
					value="${coupon.surplus}" placeholder="拥有总数"
					autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">满足价格：</label>
			<div class="layui-input-inline">
				<input type="number" name="fullMoney" required
					lay-verify="required" min="1" max="3000"
					value="${coupon.fullMoney}" placeholder="满足价格"
					autocomplete="off" class="layui-input">
			</div>
		</div>
		
	<div class="layui-form-item">
			<label class="layui-form-label">优惠价格：</label>
			<div class="layui-input-inline">
				<input type="number" name="money" required
					lay-verify="required" min="1" max="2000"
					value="${coupon.money}" placeholder="优惠价格"
					autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
	<c:forEach items="${errors }" var="error">
		<input class="error" value="${error.defaultMessage }" type="hidden">
	</c:forEach>
</body>
</html>
