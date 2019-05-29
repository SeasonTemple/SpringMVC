<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <title>DownloadFile_iframe</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-2.1.1.min.js"></script>    
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/es6-promise-auto-min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/sweetalert2.js"></script>
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/demo.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.mCustomScrollbar.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/custom.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/sweetalert2.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/build.css">
	
	<style type="text/css">
        fieldset{
            padding:.10em .625em .10em;
            margin:0 1px;
            border:0px solid silver;
            width: auto;
        }
         
        legend{
            padding:.5em;border:0;
            width:auto;
            font-size:18px;
            margin-bottom: 0px;
        }
        
        html {
            height: 100%;
            width: 100%;
            overflow-x:hidden; 
            overflow-y:auto;
        }

        body {
            width: 100%;
            height: 100%;
        }

        table{
            font-size: 25px;
            width: 0 auto;
        }

		a:hover{
           	text-decoration:none;
       	 	color: green;
        }

        a{
            color: gray;
        }
        
		.Swal{
			width: 250em;
			margin: 0 auto;
			left: 0;
			right: 0;
    	}
		
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-md-12">
            <ul class="breadcrumb" style="background-color:rgb(244,244,244);margin-right: -15px;">
              <li><a href="#">主页</a></li>
              <li><a href="#">文件相关</a></li>
              <li>下载文件</li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>