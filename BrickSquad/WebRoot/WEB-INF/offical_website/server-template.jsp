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

<title>关于我们</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href='https://fonts.googleapis.com/css?family=Varela+Round'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link href="resource/plugins/bootstrap/bootstrap.css" rel="stylesheet">
<link href="resource/plugins/laysui/css/layui.css" rel="stylesheet">
<link href="resource/css/website-template.css" rel="stylesheet">
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
<script type="text/javascript">
	$(function() {
		var type = '${type}';
		$("#centent").children().hide();
		$("." + type).show();
		if (type == "parti-online") {
			layui.use('form', function() {
				var form = layui.form, layer = layui.layer;
				form.render();
			});
		}
		$("#menu").find('li').each(function() {
			var val = $(this).attr('val');
			if (val == type) {
				$(this).attr('class', 'layui-nav-item layui-this');
			} else {
				$(".parti-online").show();
			}
		});
		$("#menu").find('li').click(function() {
			var cls = "." + $(this).attr('val');
			$("#centent").children().hide();
			$(cls).show();

		});
	});
	function openOnlineParticipation() {
		$("#centent").children().hide();
		$("#menu").find('li').each(function() {
			$(this).attr('class', 'layui-nav-item');
		});
		$(".parti-online").show();
		layui.use('form', function() {
			var form = layui.form, layer = layui.layer;
			form.render();
		});
	}

	function toSubmitForm() {
		layui
				.use(
						'layer',
						function() {
							var layer = layui.layer;
							var userName = $("#userName").val();
							var phone = $("#phone").val();
							var age = $("#age").val();
							var email = $("#email").val();
							if (userName == "") {
								layer.msg("姓名不能为空！");
							} else if (!userName.match(/^[\u4e00-\u9fa5]+$/)) {
								layer.msg("名字必须为汉字!");
							} else if (phone == "") {
								layer.msg("手机号码不能为空!");
							} else if ((age != "")
									&& (!(age > 1) || !(age < 255) || (!(age
											.match(/^[0-9]+.?[0-9]*$/))))) {
								layer.msg("年龄格式不符合要求!");
							} else if (age == "") {
								layer.msg("年龄不能为空!");
							} else if (!(phone == "")
									&& (!(phone.match(/^1[34578]\d{9}$/)))) {
								layer.msg("手机号码格式不符合!");
							} else if ((!(email == "") && !(email
									.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)))) {
								layer.msg("邮箱格式不符合!");
							} else {
								var index = layer.load(2, {
									time : 10 * 1000
								}); //又换了种风格，并且设定最长等待10秒
								$
										.ajax({
											url : 'onlineParticipationInfo/userInsertOnlineParticipationInfo',
											type : 'POST',
											data : $("#onlineParticipationInfo")
													.serialize(),
											success : function(result) {
												//关闭
												layer.close(index);
												if (result == "fail") {
													layer.msg("请填写正确的数据格式！");
												} else if (result == "success") {
													layer.msg("提交成功！");
													$("#centent").children()
															.hide();
													$(".aboutus-intro").show();
												} else {
													layer.msg("接口异常，稍后重试！");
												}
											},
											error : function(e) {
												layer.msg("接口异常，稍后重试！");
											}
										});
							}
						});
	}
</script>
</head>

<body>
	<div class="template_body">
		<jsp:include page="official-header.jsp"></jsp:include>
		<div class="template_main">
			<div class="tem_main_left">
				<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo"
					style="margin-right: 10px;" id="menu">
					<li class="layui-nav-item" val="aboutus-intro"><a
						href="javascript:;">体检预约</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
					<li class="layui-nav-item" val="aboutus-use"><a
						href="javascript:;">生活助手</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
					<li class="layui-nav-item" val="aboutus-join"><a
						href="javascript:;">独立生活</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
					<li class="layui-nav-item" val="aboutus-cont"><a
						href="javascript:;">康复协助</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
				</ul>

				<label
					style="width: 90%;height: 50px;letter-spacing:8px; font-size:1.4em;text-align:center;line-height:50px;border-radius:5px; margin: 80px 15px;background-color: #43C1B4;"><a
					href="javascript:;" onclick="openOnlineParticipation()"
					style="color:white;font-stretch: normal;">在线参与</a></label>
			</div>
			<!-- <div class="clearfix"></div> -->
			<div class="tem_main_right" id="centent">

				<div class="aboutus-intro">
				<center><h4>体检预约信息品台</h4></center>
				<ul style="margin-left:6%;margin-top:5%">
					<li ><span style="font-size:1.2em;"><a href="" id="yuyuea">【通州湾老人体检区】</a></span>
					<ul style="margin-top:2%;width:100%">
						<li ><span style="width:100%"><a href="">通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等。
						<span style="width:100%;float:right;"><a href="" id="xiangqing" style="color:#7C9A60">查看详情>></a></span></a></span></li>
					</ul>
				</li>
				<hr>
					<li><span style="font-size:1.2em;"><a href="">【通州湾老人体检区】</a></span>
					<ul  style="margin-top:2%">
						<li><span style="width:100%"><a href="">通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等。
						<span style="width:100%;float:right;"><a href=""  style="color:#7C9A60">查看详情>></a></span></a></span></li>
					</ul>
				</li>
				<hr>
				<li><span style="font-size:1.2em;"><a href="">【通州湾老人体检区】</a></span>
					<ul  style="margin-top:2%">
						<li><span style="width:100%"><a href="">通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等。
						<span style="width:100%;float:right;"><a href=""  style="color:#7C9A60">查看详情>></a></span></a></span></li>
					</ul>
				</li>
				<hr>
				<c:if test="${findActivitesName=='findActivitesName' }">
					<c:if test="${pageBean.totalCount==0}">
					<center>
					<span><a href="javascript:;" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:16px;border:none;width:40px;height:18px;background: #EBEBEC
					;margin-left:20px;margin-right:20px;margin-top:20px;" readonly="readonly">
					<span><a href="javascript:;" >下一页 ></a></span>
					</center>
					</c:if>
				<%-- 	<c:if test="${pageBean.totalCount!=0}">
					<c:if test="${pageBean.page==1}">
					<center>
					<span><a href="javascript:;" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?search=${pageBean.search }&page=${pageBean.page+1}" >下一页 ></a></span>
					</center>
					</c:if>
					<c:if test="${pageBean.totalPage!=pageBean.page && pageBean.page!=1}">
					<center>
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?search=${pageBean.search }&page=${pageBean.page-1}" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?search=${pageBean.search }&page=${pageBean.page+1}" >下一页  ></a></span>
					</center>
					</c:if>
					<c:if test="${pageBean.totalPage==pageBean.page&& pageBean.totalPage!=1}">
					<center>
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?search=${pageBean.search }&page=${pageBean.page-1}" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<span><a href="javascript:;" >下一页  ></a></span>
					</center>
					</c:if>
					</c:if> --%>
					</c:if>
				</ul>
				
				
				
				
				</div>
				<div class="aboutus-use"></div>
				<div class="aboutus-join">
					<p>星堡（上海）投资咨询有限公司是由复星集团与美国峰堡投资集团共同建立的一家专业开发与运营养老社区的合资公司。星堡不仅持有与运营养老机构，还涉及其他养老相关业务。
					</p>
					<p>星堡在上海的首个养老社区位于宝山中环，是一个提供从自理、护理到临终关怀一站式服务的养老社区。</p>
					<h4>Join Us！—— 与星堡一起改善中国老年生活方式</h4>
					<img alt="" src="resource/image/aboutus_img.jpg">
					<h4>老年生活顾问</h4>
					<h5>任职要求：</h5>
					<p>- 学历背景：大专以上学历</p>
					<p>- 工作经验：具备一定的销售技巧及经验，市场营销经验及渠道拓展经验；</p>
					<p>- 性格特质：品行正直、思路清晰、具备原动力；</p>
					<p>- 相关技能：较强的沟通能力、执行能力；较强的抗压能力、良好的亲和力。</p>
					<h5>岗位描述：</h5>
					<p>- 为初次拜访的客户提供专业的养老服务咨询；</p>
					<p>- 以优质的服务标准接待客户，推广公司形象，传递公司信息；</p>
					<p>- 精准、及时地完成销售系统客户资料的录入，使用销售系统导出报表分析工作进展情况；</p>
					<p>- 定期进行客户电话跟进，上门拜访及客户追踪，完成个人销售指标；</p>
					<p>- 销售合同的签订，并将合同原件根据公司相关管理规定归档，妥善管理并录入合同信息；</p>
					<p>- 做好客户积累、维持良好的客户关系；</p>
					<p>- 客户入住初期，为客户提供良好的售后服务工作；</p>
					<p>- 协同团队完成年终销售指标；</p>
					<h4>活动协调员</h4>
					<h5>任职要求：</h5>
					<p>－本科以上学历，社工或市场策划等相关专业毕业</p>
					<p>－有1年以上相关工作经验</p>
					<p>－热爱养老事业</p>
					<p>－优秀的沟通能力、语言表达及团队协作能力</p>
					<p>－流利的普通话，可英语交流为佳。</p>
					<p>－优秀应届生也可考虑</p>
					<h5>岗位描述：</h5>
					<p>－协同住户，开发由老年人主导的俱乐部和活动</p>
					<p>－在新住户搬入时，记录新住户的兴趣爱好</p>
					<p>－帮助有类似兴趣的住户建立联系和沟通</p>
					<p>－创建并维护活动和兴趣小组的活动日程</p>
					<p>－组织上海范围内的参观、旅游等外出活动</p>
					<h5 style="margin-top: 50px;">立刻加入星堡的团队！</h5>
					<p>中国60岁以上的老年人已超过两亿 我们的成长与成功是由全情投入并关爱老年事业的团队帮助我们发展有意义的长期关系开始建立的
						。 我们的业务是通过以人为本的销售和服务来发展良好的关系并不断维护。我们最在乎的是为顾客提供合适的方案和创建顾客忠诚度。</p>
					<p>我们为员工提供全面的培训、积极地激励及辅导，不断培养我们的员工，实现您的个人价值。
						我们的团队致力于取得积极的工作成果，并通过健康、幸福、质量及诚信来衡量。
						通过您的帮助，老人们能在享受独立的生活同时还可追求更高的生活质量。 立刻加入我们的成为星堡大家庭的一员 --
						为您的职业生涯添彩，您的辛勤工作亦会得到嘉奖！</p>
					<h5 style="margin-top: 50px;">我们为您提供：</h5>
					<p>• 具有竞争力的薪酬</p>
					<p>• 每年带薪年假</p>
					<p>• 国家规定社保</p>
					<p>• 健康体检及额外的医疗保险</p>
					<p>• 丰富多彩的社会活动和公司内部活动</p>
					<h5 style="margin-top: 50px;">面试地址交通指南：</h5>
					<p>1. 地铁7号线大华三路2号口搭乘公交923至终点站</p>
					<p>2. 周一至周五可于地铁7号线行知路站1号口搭乘中环天地班车（需投币1元）班车时间：
						10:15/11:15/13:15/14:15/15:15/16:15 联系地址：上海宝山区环镇南路858弄中环天地4号楼1楼
						人力资源部</p>
					<p>邮箱地址：hr@starcastleliving.com</p>
					<p>联系电话：021-56508077/021-56508087</p>
				</div>

				<div class="aboutus-cont">
					<h4>养老社区</h4>
					<p>社区地址：</p>
					<p>星堡中环养老社区：上海宝山区环镇南路858弄5号楼 预约参观请拨打咨询热线 021-31001500 转 80108</p>
					<p>星堡浦江养老社区：上海市闵行区联航路1505弄5号楼 021-31001518 转 50107</p>
					<h4>养老投资咨询</h4>
					<p>公司地址：上海宝山区环镇南路858弄5号楼4楼</p>
					<p>联系人：王雪</p>
					<p>联系方式：021-56508226</p>
					<p>电子邮箱：ewang@starcastleliving.com</p>
					<h4>星堡居家</h4>
					<p>公司地址：上海浦东新区博山东路20弄28号</p>
					<p>电子邮箱：amysi@starcastleathome.com</p>

				</div>

				<div class="parti-online">
					<h4>欢迎来到乐堡大家庭！我们将给您发送社区相关信息和活动更新，包括宣传册、优惠券和健康小贴士等。</h4>
					<form class="layui-form" id="onlineParticipationInfo" method="post">
						<label>* 姓名：</label>
						<div class="layui-input-inline">
							<input id="userName" type="tel" name="userName"
								lay-verify="required" autocomplete="off" class="layui-input">
						</div>
						<label>* 联系方式：</label>
						<div class="layui-input-inline">
							<input id="phone" type="tel" name="phone"
								lay-verify="required|phone" autocomplete="off"
								class="layui-input">
						</div>
						<label>邮箱(选填)：</label>
						<div class="layui-input-inline">
							<input type="tel" id="email" name="email" autocomplete="off"
								class="layui-input">
						</div>
						<label>*年龄：</label>
						<div class="layui-input-inline">
							<input id="age" type="tel" name="age" lay-verify="required"
								autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item">
							<label>是否与家人一起住：</label>
							<div class="layui-form-item">
								<div class="layui-input-block"
									style="margin-left: 260px; width: 500px;margin-top: -25px;">
									<input type="radio" name="IsLiveAlone" value="与家人在一起"
										title="与家人在一起" checked="checked">
									<input type="radio" name="IsLiveAlone" value="与家人不在一起"
										title="与家人不在一起">
								</div>
							</div>
						</div>
						<div class="layui-form-item">
							<label>性别</label>
							<div class="layui-input-block"
								style="margin-left: 260px; width: 500px;margin-top: -25px;">
								<input type="radio" name="sex" value="男" title="男"
									checked="checked">
								<input type="radio" name="sex" value="女" title="女">
							</div>
						</div>
						<div class="layui-form-item">
							<label>需要参加什么活动：</label>
							<div class="layui-input-block"
								style="margin-left: 260px; width: 500px;margin-top: -25px;">
								<input type="checkbox" name="activities" lay-skin="primary"
									title="宣传册" checked="" value="宣传册">
								<input type="checkbox" name="activities" lay-skin="primary"
									title="养生常识" value="养生常识">
								<input type="checkbox" name="activities" lay-skin="primary"
									title="乐堡新闻" value="乐堡新闻">
								<input type="checkbox" name="activities" lay-skin="primary"
									title="宣传活动" value="宣传活动">
								<input type="checkbox" name="activities" lay-skin="primary"
									title="优惠活动" value="优惠活动">
							</div>
						</div>
						<div class="layui-form-item" style="margin-top: -600px;">
							<label>需要什么样的养老服务：</label>
							<div class="layui-input-block"
								style="margin-left: 260px; width: 500px;margin-top: -25px;">
								<input type="checkbox" name="pensionService" lay-skin="primary"
									value="体检预约" title="体检预约" checked="">
								<input type="checkbox" name="pensionService" lay-skin="primary"
									title="生活助手" value="生活助手">
								<input type="checkbox" name="pensionService" lay-skin="primary"
									title="独立生活" value="独立生活">
								<input type="checkbox" name="pensionService" lay-skin="primary"
									title="康复协助" value="康复协助">
								<input type="checkbox" name="pensionService" lay-skin="primary"
									title="其他" value="其他">
							</div>
						</div>
						<div class="layui-form-item"
							style="margin-top: -600px;text-align: center;">
							<div class="layui-input-block">
								<button type="button" class="layui-btn" onclick="toSubmitForm()">立即提交</button>
								<button type="reset" class="layui-btn">重置</button>
							</div>
						</div>
					</form>
				</div>

			</div>
			<div class="clearfix"></div>

			<jsp:include page="official-footer.jsp"></jsp:include>

		</div>
	</div>
	<script>
		$("span.menu").click(function() {
			$("ul.nav1").slideToggle(300, function() {
				// Animation complete.
			});
		});
	</script>
	<script src="resource/plugins/bootstrap/bootstrap.js"></script>
	<script>
		layui.use('element', function() {
			var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

			//监听导航点击
			element.on('nav(demo)', function(elem) {
				//console.log(elem)
			});
		});
	</script>
</body>
</html>
