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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/resources/js/es6-promise-auto-min.js"></script>
<link rel="${pageContext.request.contextPath}/resources/js/sweetalert2.min.css">
<script src="${pageContext.request.contextPath}/resources/js/sweetalert2.all.min.js"></script>
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
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">登录<strong class="caret"></strong></a>
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
			<div class="page-header">
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
						<input type="text" name="code" style="width:40%;"/> 
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
			        <div class="modal-content" style="background-color:rgba(255, 255, 255, .3);border-color:rgba(255, 255, 255, .6);">
			          <div class="modal-header">
			            <button data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			            <h2 class="modal-title" style="text-align: center"><span id="h2">注&nbsp;&nbsp;&nbsp;&nbsp;册</span></h2>
			          </div>
						<div class="modal-body" style="width: 80%; margin: 0 auto;">
							<form:form class="bs-example bs-example-form" role="form" >
								<h4>用户名</h4>
								<input class="form-control" type="text">
								<h4>密码</h4>
								<input class="form-control" type="password">
<!-- 								<h4>确认密码</h4>
								<input class="form-control" type="password"> -->
								<h4>邮箱</h4>
								<div class="input-group ">
									<input class="form-control" type="text">
									<span class="input-group-addon">@163.com</span>
								</div>
								<h4>个人描述</h4>
								<textarea class="form-control input-xxlarge"></textarea>
							</form:form>
						</div>
					  <div class="modal-footer">
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
					您的账户或密码有误, 请重新输入. <a href="#" class="alert-link">alert link</a>
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