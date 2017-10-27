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

<title>My JSP 'newsDetail.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<body >
	<div class="content-bottom" style="margin: 40px">
		<div class="page-header">
			<h1 align="center">这里放新闻标题</h1>
		</div>
		<div>
			<h5 align="right">来源：本站原创  发布时间：2017-12-11</h5>
		</div>
		<div class="row">
			<p>贵大新闻网讯（见习记者 梁昱坤 摄影
				陈恒）10月18日下午，校党委中心组在行政楼第一会议室召开2017年第14次理论学习（扩大）会议暨学习党的十九大报告精神专题会议。校领导出席学习会议，校党委委员、各基层党委书记、各职能部门主要负责人参加学习。校党委副书记骆长江主持学习会议。
				与会人员在上午收看党的十九大开幕会实况直播的基础上，继续学习了报告的主要精神，并进行了学习讨论。校领导、校党委委员分别作了发言。
				大家一致认为，习近平总书记在中国共产党第十九次全国代表大会上作的报告，回顾了过去五年的工作和历史性变革，提出了新时代中国共产党的历史使命、新时代中国特色社会主义思想和基本方略，指出我国已踏上决胜全面建成小康社会，开启全面建设社会主义现代化国家的新征程。报告提出了一系列新理念、新思想、新战略、新观点、新论断、新目标、新要求，内容丰富，博大精深，是马克思主义的光辉文献。
				大家表示，作为党员干部和教育工作者，要牢记“立德树人”的神圣使命，在今后的学习、工作和生活中，要按照中央和省委部署和要求，努力学习党的十九大精神，用新时代中国特色社会主义思想武装头脑、指导实践、推动工作，为全面建成小康社会，实现中华民族伟大复兴的中国梦作出新的更大的贡献。
			</p>
		</div>
		<div>
			<h5 align="right">【责任编辑：赵荣坤】</h5>
		</div>
	</div>
</body>
</html>
