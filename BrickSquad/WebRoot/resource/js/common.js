/**
 * 将日期转换为字符串
 * 
 * @param now
 *            日期
 * @param mask
 *            日期格式（yyyy-MM-dd,yy-MM-dd-dd hh:mm:ss...）
 * @returns 字符串日期
 */
function Format(now, mask) {
	var d = now;
	var zeroize = function(value, length) {
		if (!length)
			length = 2;
		value = String(value);
		for (var i = 0, zeros = ''; i < (length - value.length); i++) {
			zeros += '0';
		}
		return zeros + value;
	};

	return mask
			.replace(
					/"[^"]*"|'[^']*'|\b(?:d{1,4}|m{1,4}|yy(?:yy)?|([hHMstT])\1?|[lLZ])\b/g,
					function($0) {
						switch ($0) {
						case 'd':
							return d.getDate();
						case 'dd':
							return zeroize(d.getDate());
						case 'ddd':
							return [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thr', 'Fri',
									'Sat' ][d.getDay()];
						case 'dddd':
							return [ 'Sunday', 'Monday', 'Tuesday',
									'Wednesday', 'Thursday', 'Friday',
									'Saturday' ][d.getDay()];
						case 'M':
							return d.getMonth() + 1;
						case 'MM':
							return zeroize(d.getMonth() + 1);
						case 'MMM':
							return [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
									'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ][d
									.getMonth()];
						case 'MMMM':
							return [ 'January', 'February', 'March', 'April',
									'May', 'June', 'July', 'August',
									'September', 'October', 'November',
									'December' ][d.getMonth()];
						case 'yy':
							return String(d.getFullYear()).substr(2);
						case 'yyyy':
							return d.getFullYear();
						case 'h':
							return d.getHours() % 12 || 12;
						case 'hh':
							return zeroize(d.getHours() % 12 || 12);
						case 'H':
							return d.getHours();
						case 'HH':
							return zeroize(d.getHours());
						case 'm':
							return d.getMinutes();
						case 'mm':
							return zeroize(d.getMinutes());
						case 's':
							return d.getSeconds();
						case 'ss':
							return zeroize(d.getSeconds());
						case 'l':
							return zeroize(d.getMilliseconds(), 3);
						case 'L':
							var m = d.getMilliseconds();
							if (m > 99)
								m = Math.round(m / 10);
							return zeroize(m);
						case 'tt':
							return d.getHours() < 12 ? 'am' : 'pm';
						case 'TT':
							return d.getHours() < 12 ? 'AM' : 'PM';
						case 'Z':
							return d.toUTCString().match(/[A-Z]+$/);
							// Return quoted strings with the surrounding quotes
							// removed
						default:
							return $0.substr(1, $0.length - 2);
						}
					});
}
/**
 * select数据回填
 * @param data 数据
 * @param id 选中项
 */
function findAll(data, id) {
	var pid = $(id).attr('val');
	
	$(data).each(
			function() {
				if (pid == this.id) {
					$(id).append(
							'<option value="' + this.id
									+ '" selected="selected">' + this.name
									+ '</option>');
				} else {
					$(id).append(
							'<option value="' + this.id + '">' + this.name
									+ '</option>');
				}
			});
}

function vlidata(){
	$(function() {
		var data="";
		$(".error").each(function() {
			data=data+"<br>"+$(this).val();
		});
		if (data!="") {
			layui.use('layer', function() {
				var layer = layui.layer;
				var msg = data;
				layer.msg(msg);
			});
		}
	});
}
