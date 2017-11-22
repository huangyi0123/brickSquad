function init(keyword) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table
			.GM({
				ajax_url : 'onlineParticipationInfo/getOnlineParticipationInfoList',
				ajax_type : 'POST',
				query : {
					pluginId : 1,
					'keyword' : keyword
				},
				supportAjaxPage : true,
				supportCheckbox : false,
				columnData : [
						{
							key : 'userName',
							text : '姓名'
						},
						{
							key : 'phone',
							text : '联系方式'
						},
						{
							key : 'email',
							text : '邮箱'
						},
						{
							key : 'sex',
							text : '性别'
						},
						{
							key : 'age',
							text : '年龄'
						},
						{
							key : 'isLiveAlone',
							text : '是否独自居住'
						},
						{
							key : 'pensionService',
							text : '需要的服务'
						},
						{
							key : 'activities',
							text : '想参与的活动'
						},
						{
							key : 'submitTime',
							text : '提交时间'
						} ]
			});
}
function RefreshGridManagerList(keyword) {
	$(".table-div").remove();
	$(".page-toolbar").remove();
	$(".cls").append('<table grid-manager="demo-ajaxPageCode"></table>');
	init(keyword);
}
