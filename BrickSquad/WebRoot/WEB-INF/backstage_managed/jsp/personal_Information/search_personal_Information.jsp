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

<!-- <script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
	});
</script>	 -->


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
	<div style="padding-left: 130px;font-size:22;">查看老人个人详细信息</div>
	<br>
	

		<div class="layui-form-item ">
			<label class="layui-form-label ">老人用户</label>
			<div class="layui-input-inline">
				<select name="personalInformation.id" value="${personalInformation.id }" id="perid" lay-filter="perid">
					<option value="">选择老人用户</option>
				</select>
			</div>
			<label class="layui-form-label">老人姓名</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.name }" name="personalInformation.name" required
					lay-verify="required" placeholder="老人姓名" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">身份证号</label>
			<div class="layui-input-inline">
				<input value="${personalInformation.idCard }" type="text" lay-verify="identity" name="personalInformation.idCard"
					required lay-verify="required" placeholder="身份证号" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">出生日期 </label>
			<div class="layui-input-inline">
				<!--  -->
				<input type="date" id="birthdayId" val="${personalInformation.birthday }" name="personalInformation.birthday"
					required lay-verify="required" placeholder="出生日期" class="layui-input">
			</div>

		</div>

		<div class="layui-form-item">
			<label class="layui-form-label ">性别</label>
			<div class="layui-input-inline">
				<select name="personalInformation.gender" value="${personalInformation.gender }">
					<option value="男">男</option>
					<option value="女">女</option>
				</select>
			</div>
			<label class="layui-form-label">体重</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.weight }" name="personalInformation.weight" required
					lay-verify="required" placeholder="体重" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">身高</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.height }" name="personalInformation.height" required
					lay-verify="required" placeholder="身高" autocomplete="off" class="layui-input">
			</div>

			<label class="layui-form-label">民族</label>
			<div class="layui-input-inline">
				<select required lay-verify="required" name="personalInformation.nationId" val="${personalInformation.nationId }"
					id="paramentNationId" lay-search="">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>


		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">婚姻情况</label>

			<div class="layui-input-inline">
				<select value="${personalInformation.marriageId }" name="personalInformation.marriageId">
					<option value="未婚">未婚</option>
					<option value="已婚">已婚</option>
					<option value="离异">离异</option>
					<option value="丧偶">丧偶</option>
					<option value="其他">其他</option>
				</select>
			</div>

			<label class="layui-form-label">收入</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.income }" name="personalInformation.income" required
					lay-verify="required" placeholder="收入" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">邮编</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.zip }" name="personalInformation.zip" required lay-verify="required"
					placeholder="邮编" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">文化程度</label>
			<div class="layui-input-inline">
				<select value="${personalInformation.cultureId }" name="personalInformation.cultureId">
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
				<select value="${personalInformation.isPurchasing }" name="personalInformation.isPurchasing">
					<option value="是">是</option>
					<option value="否">否</option>
				</select>
			</div>
			<label class="layui-form-label">是否具有决策能力</label>
			<div class="layui-input-inline">
				<select value="${personalInformation.isSupremacy }" name="personalInformation.isSupremacy">
					<option value="是">是</option>
					<option value="否">否</option>
				</select>

			</div>
			<label class="layui-form-label">是否有购买需求</label>
			<div class="layui-input-inline">
				<select value="${personalInformation.isPureq }" name="personalInformation.isPureq">
					<option value="是">是</option>
					<option value="否">否</option>
				</select>

			</div>
			<label class="layui-form-label">购买意愿分类</label>
			<div class="layui-input-inline">
				<select value="${personalInformation.pureqTypeId }" name="personalInformation.pureqTypeId">
					<option value="是">是</option>
					<option value="否">否</option>
				</select>

			</div>

		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">从事行业</label>
			<div class="layui-input-inline">
				<input value="${personalInformation.engagedIndustry }" type="text" name="personalInformation.engagedIndustry"
					placeholder="从事行业" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">退休单位</label>
			<div class="layui-input-inline">
				<input value="${personalInformation.retirementUnit }" type="text" name="personalInformation.retirementUnit"
					placeholder="退休单位" autocomplete="off" class="layui-input">
			</div>
			<label class="layui-form-label">退休日期 </label>
			<div class="layui-input-inline">
				<input id="retirementDateId" val="${personalInformation.retirementDate }" type="date"
					name="personalInformation.retirementDate" placeholder="退休日期" class="layui-input">
			</div>
			<label class="layui-form-label">家族遗传病史</label>
			<div class="layui-input-inline">
				<input type="text" value="${personalInformation.familyHistory }" name="personalInformation.familyHistory" required
					lay-verify="required" placeholder="家族遗传病史" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">地址</label>
			<div class="layui-input-inline">
				<select required lay-verify="required" val="${addressAndPersonaInformationExpand.address.provinceId}" name="address.provinceId" id="prId"
					lay-filter="prIdSelect" lay-search="">
					<option value="">选择省份</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required" val="${addressAndPersonaInformationExpand.address.cityId}" name="address.cityId" id="cityId"
					lay-filter="cityIdSelect" lay-search="">
					<option value="">选择城市</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required" val="${addressAndPersonaInformationExpand.address.countyId}" name="address.countyId" id="countyId"
					lay-filter="countyIdSelect" lay-search="">
					<option value="">选择县市</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required" val="${addressAndPersonaInformationExpand.address.countryId}" name="address.countryId"
					id="countryId" lay-filter="countryIdSelect" lay-search="">
					<option value="">选择乡镇</option>
				</select>
			</div>
			<div class="layui-input-inline ">
				<input value="${addressAndPersonaInformationExpand.address.detailed}" type="text" id="detailedId" name="address.detailed" required
					lay-verify="required" placeholder="具体地址，详细到街道门牌号" class="layui-input">
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
