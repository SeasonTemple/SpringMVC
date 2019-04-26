<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SpirngMvc-Login</title>
<script src="${pageContext.request.contextPath}/resources/js/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sweetalert.css"/>
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

	.github-corner:hover .octo-arm{animation:octocat-wave 560ms
	ease-in-out}@keyframes
	octocat-wave{0%,100%{transform:rotate(0)}20%,60%{transform:rotate(-25deg)}40%,80%{transform:rotate(10deg)}}@media
	(max-width:500px){.github-corner:hover
	.octo-arm{animation:none}.github-corner
	.octo-arm{animation:octocat-wave 560ms ease-in-out}}

</style>
</head>
<body bgcolor="#615650">
		<a href="https://github.com/SeasonTemple/SpringMVC"
		class="github-corner" tabindex="-1"><svg width="80" height="80"
			viewBox="0 0 250 250"
			style="fill: #151513; color: #fff; position: absolute; top: 0; border: 0; right: 0;">
			<path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></path>
			<path
				d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2"
				fill="currentColor" style="transform-origin: 130px 106px;"
				class="octo-arm"></path>
			<path
				d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z"
				fill="currentColor" class="octo-body"></path></svg></a>
	<div id="test">
	<div id="Layer1" style="position: absolute; width: 100%; height: 100%; z-index: -1">
		<img id="myimage" src="resources/image/timg.jpeg" height="100%" width="100%" />
	</div>
	<form id="staff_info" action="" method="post" >
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
						<input type="submit" value="submit" id="1">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" value="reset">
					</th>
				</tr>
			</table>
		</fieldset>
	</form>
</div>
</body>
<script type="text/javascript">
	$("#1").click(function() {
		swal({ 
			  title: "Error!", 
			  text: "Here's my error message!",
			  type: "error", 
			  confirmButtonText: "Cool" 
			});
	}
	function refreshCode(){
		document.getElementById("code").src = "validateCode?" + Math.random();
    }
</script>
</html>