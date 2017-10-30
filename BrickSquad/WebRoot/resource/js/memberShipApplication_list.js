function init(keyword) {
	var table = document.querySelector('table[grid-manager="demo-ajaxPageCode"]');
    table.GM({
        ajax_url: 'memberShipApplication/getMemberShipApplicationList',
         ajax_type: 'POST',
        query: { pluginId: 1,'keyword':keyword },
        supportAjaxPage: true,
        supportCheckbox: false,
        columnData: [
                     {

                     
                         key: 'tname',
                         text: '会员级别'

                     },
            {

              

                key: 'username',
                text: '工作人员'

            },
            {

                key: 'pname',
                text: '申请人'

            },
            {
                key: 'deposit',
                text: '定金'
            },
            {
                key: "operation",
                text: "操作",
                template: function(noteData,rowData)  {
					return '<a href="memberShipApplication/toAddMemberShipApplication?id='
					+ rowData.id

					+ '"><i title="修改" class="fa fa-pencil-square-o" style="margin-left:85px;"></i></a> &nbsp;|&nbsp; <a onclick=deleteById("'

					+ rowData.id
					+ '")><i title="删除" class="fa fa-trash-o" style="margin-right:5px;"></i></a>&nbsp;|&nbsp; <a href="memberShipApplication/findMembershipApplicationById?id='
					
					+ rowData.id
					+ '"><i title="查看详情" class="fa fa-eye" style="margin-right:5px;"></i></a>';
		}  
            }
        ]
    });
}
function RefreshGridManagerList(keyword) {
	$(".table-div").remove();
	$(".page-toolbar").remove();
	$(".cls").append('<table grid-manager="demo-ajaxPageCode"></table>');
	init(keyword);
}

function serach() {
	$("#serach").click(function () {
		var keyword = $("#keyword").val();
		if (keyword.trim()=='') {
			RefreshGridManagerList('');
		}
		RefreshGridManagerList(keyword);
	});
	
}
function deleteById(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		layer.open({
			title : '警告',
			content : '是否删除？',
			btn:["确认","取消"],
			yes:function(index){
				$.ajax({
					url:'memberShipApplication/deleteMemberShipApplicationById?id='+id,
					success:function(data){
						RefreshGridManagerList("");
						layer.closeAll();
					}
				});
			}
		});
	});
}
