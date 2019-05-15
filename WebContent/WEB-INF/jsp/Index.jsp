<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="">
    <title>Xxx管理页面</title>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath}/resources/js/es6-promise-auto-min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/sweetalert2.js"></script>
	<link rel="${pageContext.request.contextPath}/resources/css/sweetalert2.min.css">
	<link rel="${pageContext.request.contextPath}/resources/css/animate.css">
	<style type="text/css">
		#gradient{
		    background: #000000;
		    background: -moz-linear-gradient(top,  #CCEEFF 40%, #000000 100%);
		    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#000000), color-stop(20%,#CCEEFF));
		    background: -webkit-linear-gradient(top,  #CCEEFF 40%,#000000 100%);
		    background: -o-linear-gradient(top,  #CCEEFF 40%,#000000 100%);
		    background: -ms-linear-gradient(top,  #CCEEFF 40%,#000000 100%);
		    background: linear-gradient(to bottom,  #CCEEFF 40%,#000000 100%);
		    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#CCEEFF', endColorstr='#000000',GradientType=0 );
		}:root .gradient{filter:none;}
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
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">${loguser.uname}<strong class="caret"></strong></a>
							<ul class="dropdown-menu" style="min-width:50px;">
								<li>
									 <a href="#" style="opacity: 0.9">账户管理</a>
								</li>
								<li>
									 <a href="#" style="opacity: 0.8">相关设置</a>
								</li>
								<li>
									 <a href="${pageContext.request.contextPath}/exit" style="opacity: 0.7">账户注销</a>
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
		</div>
	</div>
</div>
  	<center>
  		<b>${loguser.uname}</b>
  		<b>${loguser.pwd}</b>
  		<b>${loguser.email}</b>
  		<b>${loguser.profile}</b>
  		<b>${loguser.sex}</b>
	</center>
  </body>
</html>
