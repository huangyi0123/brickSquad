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
<script type="text/javascript"
	src="ui/backstage_managed/jsp/personal_Information/personal_Information_list.js"></script>
<script type="text/javascript">
	$(function() {
	
		$.ajax({
			//查询type中parentId为mz，即所有民族集合
			url : 'type/findTypeByParentId',
			data : {
				'parentId' : 'mz'
			},
			success : function(data) {
				data = JSON.parse(data);
				console.log(data);
				$(data).each(
						function() {
							$("#paramentNationId").append(
									'<option value="'+this.id+'">' + this.name
											+ '</option>');
							
						});
			}

		});

		//查询region中level为1，即所有省份集合
		$.ajax({
			url : 'region/findRegionByLevel',
			data : {
				'level' : 1
			},
			success : function(data) {
				data = JSON.parse(data);
				console.log(data);
				$(data).each(
						function() {
							$("#prId").append(
									'<option value="'+this.id+'">' + this.name
											+ '</option>');
							layui.use('form', function() {
								var form = layui.form();
								form.on('select(prIdSelect)', function(data) {
									$("#cityId").empty();									
									 findRegionByParentId(data.value, '#cityId');
									//更新 lay-filter="test2" 所在容器内的全部 select 状态
									form.render('select', 'cityIdSelect');
								});

							});
						});
			}

		});
		var birthdayId = $("#birthdayId").attr('val');
		birthdayId = Format(new Date(birthdayId), "yyyy-MM-dd");
		$("#birthdayId").val(birthdayId);
		var retirementDateId = $("#retirementDateId").attr('val');
		retirementDateId = Format(new Date(retirementDateId), "yyyy-MM-dd");
		$("#retirementDateId").val(retirementDateId);

	
	});
	
</script>
</head>
<body>
	<br>
	<div style="padding-left: 120px;font-size:16;font-style: oblique;">${msg}老人详细信息</div>
	<br>
	<form class="layui-form" action="personalInformation/${url }"
		id="form1" method="post">
		<div class="layui-form-item">
			<label class="layui-form-label">老人姓名</label>
			<div class="layui-input-inline">
				<input type="text" name="name" required lay-verify="required"
					placeholder="老人姓名" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">身份证号</label>
			<div class="layui-input-inline">
				<input type="text" lay-verify="identity" name="idCard" required
					lay-verify="required" placeholder="身份证号" autocomplete="off"
					class="layui-input">
			</div>
			<label class="layui-form-label">出生日期 </label>
			<div class="layui-input-inline">
				<!--  -->
				<input type="date" id="birthdayId"
					val="${personalInformation.birthday }" name="birthday" required
					lay-verify="required" placeholder="出生日期" class="layui-input">
			</div>
			<label class="layui-form-label">性别</label>
			<div class="layui-input-inline">
				<select name="gender" value="${personalInformation.gender }">
					<option value="男">男</option>
					<option value="女">女</option>
				</select>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">体重</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.weight }"
					name="weight" required lay-verify="required" placeholder="体重"
					autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">身高</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.height }"
					name="height" required lay-verify="required" placeholder="身高"
					autocomplete="off" class="layui-input">
			</div>

			<label class="layui-form-label">民族</label>
			<div class="layui-input-inline">
				<select name="nationId" value="${personalInformation.nationId }"
					id="paramentNationId" lay-search="">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>

			<label class="layui-form-label">婚姻情况</label>

			<div class="layui-input-inline">
				<select value="${personalInformation.marriageId }" name="marriageId">
					<option value="未婚">未婚</option>
					<option value="已婚">已婚</option>
					<option value="离异">离异</option>
					<option value="丧偶">丧偶</option>
					<option value="其他">其他</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">

			<label class="layui-form-label">家族遗传病史</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.familyHistory }"
					name="familyHistory" required lay-verify="required"
					placeholder="家族遗传病史" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">收入</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.income }"
					name="income" required lay-verify="required" placeholder="收入"
					autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">邮编</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.zip }" name="zip"
					required lay-verify="required" placeholder="邮编" autocomplete="off"
					class="layui-input">
			</div>
			<label class="layui-form-label">文化程度</label>
			<div class="layui-input-inline">
				<select value="${personalInformation.cultureId }" name="cultureId">
					<option value="小学">小学</option>
					<option value="初中">初中</option>
					<option value="高中">高中</option>
					<option value="本科">本科</option>
					<option value="专科">专科</option>
					<option value="硕士研究生">硕士研究生</option>
					<option value="博士">博士</option>
					<option value="其他">其他</option>
				</select>
			</div>

		</div>
		<div class="layui-form-item">

			<label class="layui-form-label">是否具有购买能力</label>
			<div class="layui-input-inline">
				<select value="${personalInformation.isPurchasing }"
					name="isPurchasing">
					<option value="是">是</option>
					<option value="否">否</option>
				</select>
			</div>
			<label class="layui-form-label">是否具有决策能力</label>
			<div class="layui-input-inline">
				<select value="${personalInformation.isSupremacy }"
					name="isSupremacy">
					<option value="是">是</option>
					<option value="否">否</option>
				</select>

			</div>
			<label class="layui-form-label">是否有购买需求</label>
			<div class="layui-input-inline">
				<select value="${personalInformation.isPureq }" name="isPureq">
					<option value="是">是</option>
					<option value="否">否</option>
				</select>

			</div>
			<label class="layui-form-label">购买意愿分类</label>
			<div class="layui-input-inline">
				<select value="${personalInformation.pureqTypeId }"
					name="pureqTypeId">
					<option value="是">是</option>
					<option value="否">否</option>
				</select>

			</div>

		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">地址</label>
			<div class="layui-input-inline">
				<select name="provinceId" id="prId" lay-filter="prIdSelect"
					lay-search="">
					<option value="">选择省份</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select name="cityId" id="cityId" lay-filter="cityIdSelect"
					lay-search="">
					<option value="">选择城市</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select name="countyId" id="countyId" lay-filter="countyIdSelect"
					lay-search="">
					<option value="">选择县市</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select name="countryId" id="countryId" lay-filter="countryIdSelect"
					lay-search="">
					<option value="">选择乡镇</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<input type="text" name="detailed" required lay-verify="required"
					placeholder="具体地址" autocomplete="off" class="layui-input">
			</div>

		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">从事行业</label>
			<div class="layui-input-inline">
				<input value="${personalInformation.engagedIndustry }" type="text"
					name="engagedIndustry" required lay-verify="required"
					placeholder="从事行业" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">退休单位</label>
			<div class="layui-input-inline">
				<input value="${personalInformation.retirementUnit }" type="text"
					name="retirementUnit" required lay-verify="required"
					placeholder="退休单位" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">退休日期 </label>
			<div class="layui-input-inline">
				<input id="retirementDateId"
					val="${personalInformation.retirementDate }" type="date"
					name="retirementDate" required lay-verify="required"
					placeholder="退休日期" class="layui-input">
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
