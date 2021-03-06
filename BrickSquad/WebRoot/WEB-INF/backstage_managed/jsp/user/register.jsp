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
<meta charset="utf-8">
<title>养乐堡注册</title>
<link href="resource/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<link href="resource/plugins/fonts/font-awesome.min.css"
	rel="stylesheet">
<link href="resource/plugins/icheck/custom.css"
	rel="stylesheet">
<link href="resource/css/animate.min.css" rel="stylesheet">
<link href="resource/css/style.min.css" rel="stylesheet">
<script src="resource/plugins/jquery/jquery.min.js"></script>
<script src="resource/plugins/bootstrap/bootstrap.min.js"></script>
<script src="resource/plugins/icheck/icheck.min.js"></script>
<script type="text/javascript"  src="resource/js/registerCheck.js"></script>
<script type="text/javascript">

$(function() {
	 $.ajax({
		url:'type/findBranchId',
		success:function(data){
			data=JSON.parse(data);
			for(var i=0;i<data.length;i++){
				$(".branchId").append("<option value='"+data[i].id+"'>"+data[i].name+"</option>");
			}
		}
	}); 
})
</script>
</head>
<body class="gray-bg">

	<div class="middle-box text-center loginscreen   animated fadeInDown">
		<div>
			<div>
				<img class="logo-name" alt=""
					src="resource/image/logo.png">
			</div>
			<h3>欢迎注册 养乐堡</h3>
			<p>创建一个新账户</p>
			<form class="m-t" role="form" action="${pageContext.request.contextPath }/user/register" method="post">
				<div class="form-group">
					<input name="username" type="text" class="form-control" id="username" placeholder="请输入用户名" onblur="checkUsername()" required="">
					<span id="username2" style="font-size: 10px; color: red;float: right;"></span>
				</div>
				<div class="form-group">
					<input type="password" name="password" class="form-control" id="password"  placeholder="请输入密码"
						required="" onblur="checkPassword()">
					<span id="password2" style="font-size: 10px; color: red;float: right;"></span>
				</div>
				<div class="form-group">
					<input type="password"  class="form-control" placeholder="请再次输入密码" id="repassword" onblur="checkRepassword()"
						required="">
					<span id="repassword2" style="font-size: 10px; color: red;float: right;"></span>	
				</div>
				<div class="form-group">
					<input type="text"  name="telephone" class="form-control" placeholder="请输入电话号码" id="phone" onblur="checkPhone()"
						required="">
					<span id="phone2" style="font-size: 10px; color: red;float: right;"></span>	
				</div>
				
     	 <select name="branchId" lay-filter="aihao" style="width: 300px;height: 32px;border:none" class="branchId">
       		 <option value="">请选择区域</option>
    	  </select>
    
				<div class="form-group text-left">
					<div class="checkbox i-checks">
						<label class="no-padding">
						 <input type="checkbox"  name="xieyi" onclick="return checkedXieyi();"><i></i>
							<a href="user/userProtocol">我同意注册协议</a>
						</label>
						<span id="xieyi" style="font-size: 10px; color: red;float: right;"></span>	
					</div>
				</div>
				<button type="submit" class="btn btn-primary block full-width m-b" onclick="checkPost();return false;">注
					册</button>

				<p class="text-muted text-center">
					<small>已经有账户了？</small><a href="user/toLogin">点此登录</a>
				</p>

			</form>
		</div>
	</div>
</body>

</html>
