<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="resources/js/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/resources/js/es6-promise-auto-min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/sweetalert.min.js"></script>
<link rel="resources/js/sweetalert.css">
<style type="text/css">
	#ulw{
			left:0px;
			margin: 0 auto;
			position:absolute;
	}
	#carousel-700475.carousel-inner>.item>img{
			display: block;
			width:100%;
			height:750px;
	}
	#myModal{
			top: 170px;
 			margin: 0 auto;
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
</style>
</head>
<body>
<span id="as"></span>
<div class="container-fluid">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
				<div class="navbar-header">
					<a class="navbar-brand" href="https://github.com/SeasonTemple/SpringMVC">
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
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">账户名<strong class="caret"></strong></a>
							<ul class="dropdown-menu" style="min-width:50px;">
								<li>
									 <a href="#">账户管理</a>
								</li>
								<li>
									 <a href="#">相关设置</a>
								</li>
								<li>
									 <a href="#">账户注销</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">赞助我们</a>
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
					&nbsp;&nbsp;&nbsp;&nbsp;本系统是基于Spring+SpringMVC+Mybatis+Redis构建的一个用于管理Xxx信息的系统网站，由于尚处测试阶段，功能还不够完善，十分抱歉。
				</p>
				<p>
					 <a class="btn btn-primary btn-large" href="https://github.com/SeasonTemple/SpringMVC">了解更多...</a>
				</p>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-2 column">
			<form role="form">
				<div class="form-group">
					 <label for="exampleInputEmail1" style="font-size: 18px;">用户名</label><input type="text" class="form-control" id="exampleInputEmail1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1" style="font-size: 18px;">密码</label><input type="password" class="form-control" id="exampleInputPassword1" />
				</div>
				<div class="form-group" style="text-align: center">
				<input type="submit" class="btn btn-primary" value="登录" data-toggle="tooltip" title="这是登录按钮" data-placement="bottom">&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" class="btn btn-default" value="注册" data-toggle="modal" data-target="#myModal" title="这是注册按钮" data-placement="bottom">
				</div>
			</form>
			<div class="modal fade" id="myModal"  data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog">
			        <div class="modal-content">
			          <div class="modal-header">
			            <button data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
			            <h2 class="modal-title" style="text-align: center"><span id="h2">注&nbsp;&nbsp;&nbsp;&nbsp;册</span></h2>
			          </div>
						<div class="modal-body" style="width: 80%; margin: 0 auto;">
							<h4>用户名</h4>
							<input class="form-control" type="text">
							<h4>密码</h4>
							<input class="form-control" type="password">
							<h4>确认密码</h4>
							<input class="form-control" type="password">
							<h4>个人描述</h4>
							<textarea class="form-control input-xxlarge"></textarea>
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
		<div class="col-md-12 column">
			<dl>
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
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul class="breadcrumb">
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
					 <a href="https://github.com/SeasonTemple/SpringMVC">了解更多</a>
				</li>
			</ul>
		</div>
	</div>
</div>
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
</script>
</body>
</html>