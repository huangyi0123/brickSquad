$(function() {
//选择图片后预览图片
	$("#inputImg").bind('change input', function(e) {
		$("#showImg").html("");
		var _URL = window.URL || window.webkitURL;
		var file;
		var img1;
		if (this.files.length>5) {
			$("#inputImg").val("");
			layui.use('layer', function() {
				var layer = layui.layer;
				var msg = '图片不能超过5张';
				layer.msg(msg);
			});
		}
		//循环
		for (var int = 0; int < this.files.length; int++) {			
				if ((file = this.files[int])) {
					img1 = new Image();				
					img1.onload = function() {
						console.log("515");
						console.log(this.src);
						$("#showImg").append('<img style="width:80px;" src="'+this.src+'">');
					};
					img1.src = _URL.createObjectURL(file);
				}
		}
	});
});