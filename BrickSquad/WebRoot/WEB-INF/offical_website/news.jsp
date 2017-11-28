<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>乐堡新闻</title>
	<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
<script type="text/javascript"
	src="resource/js/common.js"></script>
<script type="text/javascript">
	$(function() {
	var da=$(".newsData").html();
	da=Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
	$(".newsData").html(da);
	});
</script>
</head>
<body>
<div class="template_body">
	<jsp:include page="official-header.jsp"></jsp:include>
	<div style="background:#F8F8F8;">
	<div style="height: 100%;width: 60%;margin:0 auto;margin-bottom:50px;background: white;padding-left:30px;padding-right:30px;">
	<center style="margin-top:60px;font-size:1.6em;margin-left:;"><h6>${news.title }</h6><br></center>
	<div style="line-height: 28px;text-align:left;padding-bottom:10px;">
	${news.content }
	<span style="float:right;">编辑：${news.username } &nbsp;日期：<span class="newsData">${news.date }</span></span>
	</div>
	</div>
	</div>
	<jsp:include page="official-footer.jsp"></jsp:include>
	
</div>
</body>
</html>