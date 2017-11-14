function addNumber(o) {
	var num=$(o).val();
	var price=$(o).attr('val');
	num=parseFloat(num);
	price=parseFloat(price);
	id=$(o).attr('vai');
	$(o).parent().parent().parent().find(".product-subtotal").find(".allPriceId").val(num*price);
	$.ajax({
		url:'shoppingCar/updateShoppingNumber',
		type:"post",
		data:{"id":id,"number":num},
		success:function(data){
			$(".mapall").html(data);
		}
	});
}