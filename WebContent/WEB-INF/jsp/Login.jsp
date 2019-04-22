<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"	%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xxx管理系统</title>
<!-- <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
 <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/resources/js/es6-promise-auto-min.js"></script>
<link rel="${pageContext.request.contextPath}/resources/css/sweetalert.min.css">
<script src="${pageContext.request.contextPath}/resources/js/sweetalert.min.js"></script>
<link rel="${pageContext.request.contextPath}/resources/css/animate.css">
<style type="text/css">
	#ulw{
			left: -30px;
			margin: 0 auto;
			position:relative;
	}
	#carousel-700475.carousel-inner>.item>img{
			display: block;
			width:100%;
			height:750px;
	}
	#myModal{
			top: 170px;
 			margin: 0 auto;
 			color: #111111;
	}
	#h2{
			font-size: 30px;
			font-style: 宋体;
			text-align: center;
			text-shadow: 2px 2px 2px rgb(88, 126, 156);
	}
	h4{
			font-weight: bold;
	}
	#gradient{
    background: #000000;
    background: -moz-linear-gradient(top,  #CCEEFF 40%, #000000 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#000000), color-stop(20%,#CCEEFF));
    background: -webkit-linear-gradient(top,  #CCEEFF 40%,#000000 100%);
    background: -o-linear-gradient(top,  #CCEEFF 40%,#000000 100%);
    background: -ms-linear-gradient(top,  #CCEEFF 40%,#000000 100%);
    background: linear-gradient(to bottom,  #CCEEFF 40%,#000000 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#CCEEFF', endColorstr='#000000',GradientType=0 );
	}
	:root .gradient{filter:none;}
	#ulr{
		background: rgba(255, 255, 255, .4);
	}a{
		color:rgba(255, 255, 255, .8);
	}
	
	.github-corner:hover .octo-arm{animation:octocat-wave 560ms
	ease-in-out}@keyframes
	octocat-wave{0%,100%{transform:rotate(0)}20%,60%{transform:rotate(-25deg)}40%,80%{transform:rotate(10deg)}}@media
	(max-width:500px){.github-corner:hover
	.octo-arm{animation:none}.github-corner
	.octo-arm{animation:octocat-wave 560ms ease-in-out}}
	
</style>
</head>
<body id="gradient">
<span id="as"></span>
<div class="container-fluid">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
				<div class="navbar-header">
					<a class="navbar-brand" href="https://github.com/SeasonTemple/SpringMVC" target="_blank">
						<img alt="Brand" style="max-width:100px;margin-top:-15px;margin-right:-10px" src="${pageContext.request.contextPath}/resources/image/github_black_48px.png">
					</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">功能(测试)<strong class="caret"></strong></a>
							<ul class="dropdown-menu" style="min-width:100%">
								<li>
									 <a href="#">学生管理</a>
								</li>
								<li>
									 <a href="#">课表管理</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">操作记录</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#" class="btn disabled" style="text-align:left">尚未开放</a>
								</li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search" >
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> <button type="submit" class="btn btn-default">搜索</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">未登录<strong class="caret"></strong></a>
							<ul class="dropdown-menu" style="min-width:50px;">
								<li>
									 <a href="#" style="opacity: 0.9">账户管理</a>
								</li>
								<li>
									 <a href="#" style="opacity: 0.8">相关设置</a>
								</li>
								<li>
									 <a href="#" style="opacity: 0.7">账户注销</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="https://github.com/SeasonTemple" target="_blank" style="opacity: 0.5">关注我们</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#"></a>
						</li>
					</ul>
				</div>
			</nav>
			<div class="page-header" >
			</div>
			<div class="jumbotron">
				<h1>
					&nbsp;欢迎使用<small>Xxx管理系统测试版</small>
				</h1>
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;本系统是基于SSM框架构建的一个用于管理Xxx信息的系统网站，由于尚处测试阶段，功能还不够完善，十分抱歉。
				</p>
				<p>
					 <a class="btn btn-primary btn-large" href="https://github.com/SeasonTemple" target="_blank">了解更多...</a>
				</p>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-2 column">
			<form:form role="form" action="${pageContext.request.contextPath}/log" method="post" modelAttribute="user">
				<div class="form-group">
					 <label for="example" style="font-size: 18px;">用户名</label><input path="uname" type="text" class="form-control" name="uname" />
				</div>
				<div class="form-group">
					 <label for="example" style="font-size: 18px;">密码</label><input path="pwd" type="password" class="form-control" name="pwd" />
				</div>
				<div class="form-group">
					<label for="example" style="font-size: 18px;">验证码</label>
					<div class="form-horizontal">
						<input type="text" name="code" style="width:45%;"/> 
						<img id="code" src="validateCode" onclick="refreshCode();"/>
					</div>
				</div>&nbsp;
				<div class="form-group" style="text-align: center">
					<input type="button" class="btn btn-default" value="注册" data-toggle="modal" data-target="#myModal" title="这是注册按钮" data-placement="bottom" id="register">&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" class="btn btn-primary" value="登录" data-toggle="tooltip" title="这是登录按钮" data-placement="bottom" id="login">
				</div>
			</form:form>
			<div class="modal fade" id="myModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" >
			        <div class="modal-content" style="background-color:rgba(255, 255, 255, .4);border-color:rgba(255, 255, 255, .6);">
			          <div class="modal-header">
			            <button data-dismiss="modal" class="close" type="button" ><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			            <h2 class="modal-title" style="text-align: center"><span id="h2">注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;册</span></h2>
			          </div>
						<div class="modal-body" style="width: 80%; margin: 0 auto;">
							<form:form class="bs-example bs-example-form" role="form" modelAttribute="nuser">
								<h4>用户名</h4>
								<input class="form-control" type="text" value="${nuser.uname}">
								<h4>密码</h4>
								<input class="form-control" type="password" value="${nuser.uname}">
<!-- 								<h4>确认密码</h4> -->
<!-- 								<input class="form-control" type="password"> -->
								<h4>邮箱</h4>
								<div class="input-group ">
									<input class="form-control" type="text" value="${nuser.email}">
									<span class="input-group-addon">@163.com</span>
								</div>
								<h4>职业描述</h4>
								<input class="form-control" type="text" value="${nuser.profile}">
							</form:form>
						</div>
					  <div class="modal-footer" style="align: center;">
			            <button data-dismiss="modal" class="btn btn-default" type="button" id = "close">关闭</button>
			            <button class="btn btn-primary" type="button" id = "sublimt">提交</button>
			          </div>
			        </div><!-- /.modal-content -->
			      </div><!-- /.modal-dialog -->
			</div>
			<div class="alert alert-danger alert-dismissable">
			 	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<h4>
					<strong>警告!</strong>
				</h4> 
					您的账户或密码有误, 请重新输入.
			</div>
			<ul id="ulw" >
				<li>
					Lorem ipsum dolor sit amet
				</li>
				<li>
					Consectetur adipiscing elit
				</li>
				<li>
					Integer molestie lorem at massa
				</li>
				<li>
					Facilisis in pretium nisl aliquet
				</li>
				<li>
					Nulla volutpat aliquam velit
				</li>
				<li>
					Faucibus porta lacus fringilla vel
				</li>
				<li>
					Aenean sit amet erat nunc
				</li>
				<li>
					Eget porttitor lorem
				</li>
			</ul>
		</div>
		<div class="col-md-10 column">
			<div class="carousel slide" id="carousel-700475">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-700475">
					</li>
					<li data-slide-to="1" data-target="#carousel-700475">
					</li>
					<li data-slide-to="2" data-target="#carousel-700475">
					</li>
				</ol>
				<div class="carousel-inner" >
					<div class="item active">
						<img alt="" src="${pageContext.request.contextPath}/resources/image/vs.jpg" />
						<div class="carousel-caption">
							<h4>
								First Picture.
							</h4>
<!-- 							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p> -->
						</div>
					</div>
					<div class="item">
						<img alt="" src="${pageContext.request.contextPath}/resources/image/jump.jpg" />
						<div class="carousel-caption">
							<h4>
								Second Picture.
							</h4>
<!-- 							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p> -->
						</div>
					</div>
					<div class="item">
						<img alt="" src="${pageContext.request.contextPath}/resources/image/girl.jpg" />
						<div class="carousel-caption">
							<h4>
								Third Picture.
							</h4>
<!-- 							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p> -->
						</div>
					</div>
				</div>
					<a class="left carousel-control" href="#carousel-700475" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left"></span>
					</a> 
					<a class="right carousel-control" href="#carousel-700475" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column" style="color: rgba(255, 255, 255, .8)">
			<dl class="dl-horizontal">
				<dt>
					Description lists
				</dt>
				<dd>
					A description list is perfect for defining terms.
				</dd>
				<dt>
					Euismod
				</dt>
				<dd>
					Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.
				</dd>
				<dd>
					Donec id elit non mi porta gravida at eget metus.
				</dd>
				<dt>
					Malesuada porta
				</dt>
				<dd>
					Etiam porta sem malesuada magna mollis euismod.
				</dd>
				<dt>
					Felis euismod semper eget lacinia
				</dt>
				<dd>
					Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
				</dd>
			</dl>
		</div>
	</div>

	<div class="row clearfix" >
		<div class="col-md-12 column">
			<ul class="breadcrumb" id="ulr">
				<li>
					 <a href="#">主页</a>
				</li>
				<li>
					 <a href="#">帮助</a>
				</li>
				<li>
					 <a href="#">简介</a>
				</li>
				<li>
					 <a href="https://github.com/SeasonTemple/SpringMVC" target="_blank">更多</a>
				</li>
			</ul>
		</div>
	</div>
</div>
	<a href="https://github.com/SeasonTemple/SpringMVC"
		class="github-corner" tabindex="-1"><svg width="80" height="80"
			viewBox="0 0 250 250"
			style="fill: #CCEEEE; color: #000; position: absolute; top: 50px; border: 0; right: 0;">
	<path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></path>
	<path
		d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2"
		fill="currentColor" style="transform-origin: 130px 106px;"
	class="octo-arm"></path>
			<path
				d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z"
				fill="currentColor" class="octo-body"></path></svg>
	</a>
</body>
<script type="text/javascript">
	window.onload = function() {
		$('#carousel-700475').carousel('cycle');
	}
	
	$(function() {
		$("[data-toggle='tooltip']").tooltip();
	});
	
  	$(function() {
		$("[data-toggle='modal']").tooltip();
	});
  
	$("#sublimt").click(function() {
		swal("信息已经提交", '', 'success');
		$("#myModal").modal('hide');
	});
	
	$("#close").click(function() {
		$("#myModal").modal('hide');
	});
	
	$("#code").click(function() {
		document.getElementById("code").src = "validateCode?" + Math.random();
    });
</script>
</html>