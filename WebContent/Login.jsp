<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SpirngMvc-Login</title>
<script src="/lib/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="/lib/sweetalert.css"/>
<style type="text/css">
#test{
	top: -270px;
	left: -120px;
	margin: 0 auto;
}

#staff_info fieldset {
	background: rgba(255, 255, 255, .3);
	border-color: rgba(255, 255, 255, .6);
	border-style: solid;
	border-width: 2px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-khtml-border-radius: 5px;
	border-radius: 5px;
	line-height: 30px;
	list-style: none;
	padding: 5px 10px;
	margin-bottom: 2px;
 	margin: 0 auto;
    float: none;
}

#staff_info fieldset legend {
	color: #302A2A;
	font: bold 15px/2 Verdana, Geneva, sans-serif;
	font-weight: bold;
	text-align: left;
	text-shadow: 2px 2px 2px rgb(88, 126, 156);
}

tr {
	text-align: left
}

th {
	color: #302A2A;
	font: bold 15px/2 Verdana, Geneva, sans-serif;
	font-weight: bold;
	text-align: left;
	text-shadow: 1px 1px 1px rgb(88, 126, 156);
}

table {
	margin: 0 auto;
	border-radius: 10px;
	padding-radius: 10px;
	border-style: solid;
    border-width: 3px;
}

input[type=submit] { /* 按钮美化 */
	width: 68px; /* 宽度 */
	height: 30px; /* 高度 */
	border-width: 0px; /* 边框宽度 */
	border-radius: 3px; /* 边框半径 */
	background: #615650; /* 背景颜色 */
	cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
	outline: none; /* 不显示轮廓线 */
	font-family: Microsoft YaHei; /* 设置字体 */
	color: white; /* 字体颜色 */
	font-size: 17px; /* 字体大小 */
	
}

input[type=submit]:hover { /* 鼠标移入按钮范围时改变颜色 */
	background: rgba(255, 255, 255, .3);
}

input[type=reset] {
 	width: 68px; /* 宽度 */
	height: 30px; /* 高度 */
	border-width: 0px; /* 边框宽度 */
	border-radius: 3px; /* 边框半径 */
	background: #615650; /* 背景颜色 */
	cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
	outline: none; /* 不显示轮廓线 */
	font-family: Microsoft YaHei; /* 设置字体 */
	color: white; /* 字体颜色 */
	font-size: 17px; /* 字体大小 */
	
}

input[type=reset]:hover { /* 鼠标移入按钮范围时改变颜色 */
	background: rgba(255, 255, 255, .3);
}

</style>
</head>
<body bgcolor="#615650">
<div id="test">
	<div id="Layer1" style="position: absolute; width: 100%; height: 100%; z-index: -1">
		<img id="myimage" src="image/timg.jpeg" height="100%" width="100%" />
	</div>
	<form id="staff_info" action="${pageContext.request.contextPath}/log" method="post">
		<fieldset style="text-align: center">
			<legend style="text-align: center">Personalia</legend>
			<table>
				<tr>
					<th>Name:</th>
					<th><input type="text" placeholder="......your_name" required="required"></th>
				</tr>
				<tr>
					<th>Email:</th>
					<th><input type="text" placeholder="......your_email" required="required"></th>
				</tr>
				<tr>
					<th>Birth:</th>
					<th><input type="text" placeholder="......your_birth" required="required"></th>
				</tr>
				<tr>
					<th colspan="2" style="text-align: center;">
						<input type="submit" value="submit">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" value="reset">
					</th>
				</tr>
			</table>
		</fieldset>
	</form>
</div>
</body>
<script type="text/javascript">
	function check() {
		swal({ 
			  title: "Error!", 
			  text: "Here's my error message!",
			  type: "error", 
			  confirmButtonText: "Cool" 
			});
	}

</script>
</html>