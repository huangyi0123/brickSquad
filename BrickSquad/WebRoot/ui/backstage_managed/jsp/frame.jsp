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

<title>My JSP 'frame.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>H+ li主题UI框架 - 主页</title>
<link rel="shortcut icon" href="favicon.ico">
<link href="ui/backstage_managed/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet" />
<link href="ui/backstage_managed/plugins/fonts/font-awesome.min.css"
	rel="stylesheet" />
<link href="ui/backstage_managed/css/animate.min.css" rel="stylesheet">
<link href="ui/backstage_managed/css/style.min.css?v=4.0.0"
	rel="stylesheet">
<script src="ui/backstage_managed/plugins/jquery/jquery.min.js"></script>
<script src="ui/backstage_managed/plugins/bootstrap/bootstrap.min.js"></script>
<script src="ui/backstage_managed/plugins/jquery/jquery.metisMenu.js"></script>
<script
	src="ui/backstage_managed/plugins/jquery/jquery.slimscroll.min.js"></script>
<script src="ui/backstage_managed/plugins/layer/layer.min.js"></script>
<script src="ui/backstage_managed/js/hplus.min.js?v=4.0.0"></script>
<script type="text/javascript"
	src="ui/backstage_managed/js/contabs.min.js"></script>
</head>

<body class="fixed-sidebar full-height-layout gray-bg"
	style="overflow:hidden">
	<div id="wrapper">
		<!--左侧导航开始-->
		<nav class="navbar-default navbar-static-side" role="navigation">
		<div class="nav-close">
			<i class="fa fa-times-circle"></i>
		</div>
		<div class="sidebar-collapse">
			<ul style="margin-top: 10px;" class="nav" id="side-menu">
				<span><img style="margin-bottom: 10px;" alt="image" class="img-circle"
					src="ui/backstage_managed/image/logo.png" /></span>
				<li><a class="J_menuItem"><i class="fa fa-table"></i>基本表单<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem" href="region/toRegionList">区域列表</a>
						</li>
						<li><a class="J_menuItem" href="address/toAddressList">地址列表</a>
						</li>
						<li><a class="J_menuItem" href="type/toType">商品类型列表</a></li>
					</ul></li>
				<li><a class="J_menuItem"><i class="fa fa-table"></i>老人信息管理<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem" href="relatives/toRelativesList">老人亲属关系列表</a>
						</li>


						<li><a class="J_menuItem" href="user/toUserList">用户信息列表</a></li>
							<li><a href="personalInformation/toPersonalInformation">老人信息列表</a></li>
							
					</ul></li>

				<li><a class="J_menuItem"><i class="fa fa-table"></i>老人客户关系管理<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem" href="rapport/toRapportList">老人客户沟通列表</a>
					</ul></li>


				<li><a class="J_menuItem"><i class="fa fa-table"></i>老人健康管理<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem"
							href="healthRecords/toHealthRecordsList">老人健康档案列表</a></li>
						<li><a class="J_menuItem" href="medical/toMedicalList">病历列表</a>
						</li>
						<li><a class="J_menuItem" href="guidance/toGuidanceList">老人健康指导列表</a></li>
					</ul></li>
				<li><a class="J_menuItem"><i class="fa fa-table"></i>电子商务<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem"
							href="shopActivities/toShopActivitiesList">商品活动</a>
						<li><a class="J_menuItem" href="article/toArticleList">商品列表</a></li>
						<li><a class="J_menuItem" href="collection/toCollection">收藏商品信息列表</a></li>
						<li><a class="J_menuItem" href="orders/toOrdersList">订单列表</a>
						</li>
						<li><a class="J_menuItem"
							href="shoppingCar/toShoppingCarList">购物车列表</a></li>
						<li><a class="J_menuItem"
							href="orderDetails/toOrderDetailsList">订单项列表</a> <a
							class="J_menuItem" href="rated/toRatedList">订单评论列表</a></li>
						<li><a class="J_menuItem" href="reply/toReplyList">订单评论回复列表</a></li>
						<li><a class="J_menuItem" href="business/toBusiness">商家信息管理列表</a></li>

						<li><a class="J_menuItem" href="buyers/toBuyersList">买家信息列表</a></li>
					</ul></li>
				<li><a class="J_menuItem"><i class="fa fa-table"></i>老年教育<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem"
							href="activityRegistration/toActivityRegistration">活动登记信息管理列表</a></li>
						<li><a class="J_menuItem" href="activities/toActivitiesList">活动列表</a>
						</li>
					</ul></li>
				<li><a class="J_menuItem"><i class="fa fa-table"></i>信息发布<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem" href="news/toNewsList">新闻列表</a></li>
					</ul></li>
				<li><a class="J_menuItem"><i class="fa fa-table"></i>数据统计<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level"></ul></li>
				<li><a class="J_menuItem"><i class="fa fa-table"></i>分店管理<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem"
							href="memberShipApplication/toMemberShipApplicationList">会员申请列表</a>
						</li>
					</ul></li>
				<li><a class="J_menuItem"><i class="fa fa-table"></i>权限管理<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a class="J_menuItem" href="limits/toLimitsList">权限</a> <a
							class="J_menuItem" href="role/toRoleList">角色名称</a></li>
					</ul></li>
			</ul>
		</div>
		</nav>
		<!--左侧导航结束-->
		<!--右侧部分开始-->
		<div id="page-wrapper" class="gray-bg dashbard-1">
			<div class="row border-bottom">
				<nav style="height:10px; margin-bottom: 0"
					class="navbar navbar-static-top" role="navigation"> 
					 </nav>
			</div>
			<div class="row content-tabs">
				<button class="roll-nav roll-left J_tabLeft">
					<i class="fa fa-backward"></i>
				</button>
				<nav class="page-tabs J_menuTabs">
				<div class="page-tabs-content">
					<a href="javascript:;" class="active J_menuTab"
						data-id="index_v1.html">首页</a>
				</div>
				</nav>
				<button style="margin-right: 100px;"
					class="roll-nav roll-right J_tabRight">
					<i class="fa fa-forward"></i>
				</button>
				<div style="margin-right: 100px;"
					class="btn-group roll-nav roll-right">
					<button class="dropdown J_tabClose" data-toggle="dropdown">
						关闭操作<span class="caret"></span>
					</button>
					<ul role="menu" class="dropdown-menu dropdown-menu-right">
						<li class="J_tabShowActive"><a>定位当前选项卡</a></li>
						<li class="divider"></li>
						<li class="J_tabCloseAll"><a>关闭全部选项卡</a></li>
						<li class="J_tabCloseOther"><a>关闭其他选项卡</a></li>
					</ul>
				</div>
				<div
					style="height:30px;width:160px; text-align:center;  float:right; margin-right: 10px;margin-top: -54px;"
					class="dropdown profile-element">
					<a style="text-align: center;" data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <span class="clear">
							<span class="block m-t-xs"><strong class="font-bold">Beaut-zihan</strong></span>
							<span style="margin-top: -20px;text-align:center;"
							class="text-muted text-xs block">超级管理员<b class="caret"></b></span>
					</span>
					</a>
					<ul style="margin-top: 25px; "
						class="dropdown-menu animated fadeInRight m-t-xs">
						<li><a style="text-align: center;" class="J_menuItem"
							href="form_avatar.html">修改头像</a></li>
						<li><a style="text-align: center;" class="J_menuItem"
							href="profile.html">个人资料</a></li>
						<li><a style="text-align: center;" class="J_menuItem"
							href="contacts.html">联系我们</a></li>
						<li><a style="text-align: center;" class="J_menuItem"
							href="mailbox.html">信箱</a></li>
						<li class="dropdown"><a style="text-align: center;"
							class="dropdown-toggle count-info" data-toggle="dropdown"
							href="#"> 信息 <span style="margin-top: -5px;"
								class="label label-primary">8</span>
						</a>
							<ul class="dropdown-menu dropdown-alerts">
								<li><a href="mailbox.html">
										<div>
											<i class="fa fa-envelope fa-fw"></i> 您有16条未读消息 <span
												class="pull-right text-muted small">4分钟前</span>
										</div>
								</a></li>
								<li class="divider"></li>
								<li><a href="profile.html">
										<div>
											<i class="fa fa-qq fa-fw"></i> 3条新回复 <span
												class="pull-right text-muted small">12分钟钱</span>
										</div>
								</a></li>
								<li class="divider"></li>
								<li>
									<div class="text-center link-block">
										<a class="J_menuItem" href="notifications.html"> <strong>查看所有
										</strong> <i class="fa fa-angle-right"></i>
										</a>
									</div>
								</li>
							</ul></li>
						<li class="divider"></li>
						<li><a style="text-align: center;" href="login.html">安全退出</a></li>
					</ul>
				</div>
			</div>
			<div class="row J_mainContent" id="content-main">
				<iframe class="J_iframe" name="iframe0" width="100%" height="98%"
					src="business/toBusiness" frameborder="0" data-id="index_v1.html"
					seamless></iframe>
			</div>
			<div class="footer">
				<div class="pull-right">
					&copy; 2014-2015 <a href="http://www.zi-han.net/" target="_blank">zihan's
						blog</a>
				</div>
			</div>
		</div>
		<!--右侧部分结束-->
	</div>

</body>
</html>
