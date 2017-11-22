function init(type) {
	
	$("#centent").children().hide();
	$("." + type).show();
	$("#menu").find('li').each(function() {
		var val = $(this).attr('val');
		if (val == type) {
			$(this).attr('class', 'layui-nav-item layui-this');
		}
	});
	$("#menu").find('li').click(function() {
		var cls = "." + $(this).attr('val');
		$("#centent").children().hide();
		$(cls).show();

	});
}