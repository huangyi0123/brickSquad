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

<title>官网模板</title>

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


<link href="resource/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resource/plugins/laysui/css/layui.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="resource/css/website-template.css">
	<script type="application/x-javascript">
	

	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!-- //for-mobile-apps -->
<!--fonts-->

<!--//fonts-->
<!-- js -->

<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
<script>
	$(document).ready(function() {
		//Initialize tooltips
		$('.nav-tabs > li a[title]').tooltip();

		//Wizard
		$('a[data-toggle="tab"]').on('show.bs.tab', function(e) {

			var $target = $(e.target);

			if ($target.parent().hasClass('disabled')) {
				return false;
			}
		});

		$(".next-step").click(function(e) {

			var $active = $('.wizard .nav-tabs li.active');
			$active.next().removeClass('disabled');
			nextTab($active);

		});
		$(".prev-step").click(function(e) {

			var $active = $('.wizard .nav-tabs li.active');
			prevTab($active);

		});
	});

	function nextTab(elem) {
		$(elem).next().find('a[data-toggle="tab"]').click();
	}
	function prevTab(elem) {
		$(elem).prev().find('a[data-toggle="tab"]').click();
	}
</script>
<script type="text/javascript">
function findTelephoneView() {
	$.ajax({
		  url:"${pageContext.request.contextPath}/activityRegistration/findTelephoneView",
		  type:'post', 
		  success:function(data){
			  var telephone=document.getElementById("telephone");
			 var json = eval(data); 
			 telephone.value="json[0].telephone";
		  }
		  });	
}
</script>
</head>

<body>
	<div class="template_body">
		<jsp:include page="official-header.jsp"></jsp:include>
<div class="template_img">
<img alt="" src="resource/image/3_2.png">
</div>
		<jsp:include page="official-footer.jsp"></jsp:include>
	</div>
	<script>
		$("span.menu").click(function() {
			$("ul.nav1").slideToggle(300, function() {
				// Animation complete.
			});
		});
	</script>
	<!-- /script-for-menu -->
	<script src="resource/js/classie.js"></script>
	<script src="resource/js/uisearch.js"></script>
	<script>
		new UISearch(document.getElementById('sb-search'));
	</script>
	<!-- for bootstrap working -->
	<script src="resource/plugins/bootstrap/bootstrap.js"></script>
	<script>
		layui.use('element', function() {
			var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

			//监听导航点击
			element.on('nav(demo)', function(elem) {
				//console.log(elem)
				layer.msg(elem.text());
			});

		});
	</script>
</body>
</html>
