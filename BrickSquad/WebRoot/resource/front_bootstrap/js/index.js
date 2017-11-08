function getType() {
	var input=$(".typeId");
	console.log(input.length);
	input.each(function() {
		var typeId=$(this).val();
		$.ajax({
			url:'shopIndex/getArticleType',
			data:{'id':typeId},
			success:function(result){
				result=JSON.parse(result);
				if (result.length>0) {
					
				}
			}
		});
	});
}