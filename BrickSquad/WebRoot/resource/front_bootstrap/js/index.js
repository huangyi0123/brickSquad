function getType() {
	var input = $(".typeId");
	input
			.each(function() {
				var typeId = $(this).val();
				var a = $(this).attr('val');
				a = '#type' + a;
				$
						.ajax({
							url : 'shopIndex/getArticleType',
							data : {
								'id' : typeId
							},
							success : function(result) {
								result = JSON.parse(result);
								var n = result.length;

								console.log(a);
								if (n != 0) {
									$(a)
											.after(
													'<ul class="dropdown-menu nav-level1 column-3 s'+result[0]+">123</ul>');
								}
							}
						});
			});
}