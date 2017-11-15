function addNumber(o) {
	var num = $(o).val();
	var price = $(o).attr('val');
	num = parseFloat(num);
	price = parseFloat(price);
	id = $(o).attr('vai');
	$(o).parent().parent().parent().find(".product-subtotal").find(
			".allPriceId").val(num * price);
	$.ajax({
		url : 'shoppingCar/updateShoppingNumber',
		type : "post",
		data : {
			"id" : id,
			"number" : num
		},
		success : function(data) {
			$(".mapall").html(data);
		}
	});
}
function checkedCar(o) {
	var price=$(o).parent().parent().parent().parent().find(".product-price").find(".pricle").html();
	var number=$(o).parent().parent().parent().parent().find(".product-quantity").find(".input-text").val();
	price=parseFloat(price);
	number=parseInt(number);
	//计算已经选择或取消选择商品的总价
	var money=price*number;
	//获取小计
	var a=$("#checkeds").html();
	a=parseInt(a);
	console.log(a);
	
	if ($(o).is(':checked')) {
		alert("选中后不能修改商品数量");
		$("#checkeds").html(a+money);
		$(o).parent().parent().parent().parent().find(".product-quantity").find(".input-text").attr('disabled',"disabled");
		$(o).parent().parent().parent().parent().find(".product-quantity").find("input[type='button']").attr('disabled',"disabled");
	}else {
		$("#checkeds").html(a-money);
		$(o).parent().parent().parent().parent().find(".product-quantity").find(".input-text").removeAttr('disabled');
		$(o).parent().parent().parent().parent().find(".product-quantity").find("input[type='button']").removeAttr('disabled');
	}
}
function submitCar() {
	var ids=""
	$(".inputNumber").each(function () {
		var a=$(this).parent().parent().parent().find(".checkedas").find(".checksa");
		if ($(a).is(':checked')) {
			ids=ids+$(this).attr('vai')+",";
		}
	});
	console.log(ids);
}