<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>Student_iframe</title>
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
		
    </style>
</head>
	<script type="text/javascript">
		var a = 1;
		init();
		function init(a){
			if(a > 0){
				location.replace(location.href);
				a-= 1;
			}
		}
	</script>
<body>
<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-md-12">
            <ul class="breadcrumb" style="background-color:rgb(244,244,244);margin-right: -15px;">
              <li><a href="#">主页</a></li>
              <li><a href="#">学生管理</a></li>
              <li>学生列表</li>
            </ul>
        </div>
    </div>
    <div class="col-md-12">
        <form id="staff_info" class="well">
            <fieldset>
                <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="col-md-3">
                            <div class="btn-group btn-group-lg" role="group" aria-label="web">
                                <button class="btn btn-danger" type="button"><span class="glyphicon glyphicon-trash"></span> 批量删除</button>
                                <button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-floppy-saved"></span> 全选</button>
                                <button class="btn btn-success" type="button"><em class="glyphicon glyphicon-plus"></em> 添加</button>
                                <!-- <button class="btn btn-warning" type="button"><span class="glyphicon glyphicon-wrench"></span> 编辑</button> -->
                            </div>
                        </div>
                        <div class="col-md-3 pull-right">
                            <div class="input-group">
                                <span class="input-group-btn">
                                    <button class="btn btn-default btn-lg" type="button">&emsp;<span class="glyphicon glyphicon-refresh"></span>&emsp;</button>
                                </span>
                                <input type="text" class="form-control input-lg" placeholder="搜索...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default btn-lg" type="button"><span class="glyphicon glyphicon-search"></span> 查找</button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
        </form>
        <table class="table table-hover table-condensed table-bordered text-left">
            <thead style="background: rgb(244, 244, 244)">
                <tr>
                    <th>
                         <div class="checkbox checkbox-success" style="margin-bottom: 8px;text-align: center;vertical-align: middle">
                            <input id="checkbox0" class="styled" type="checkbox">
                            <label for="checkbox0"></label>
                        </div>
                    </th>
                    <th>
                        ID
                    </th>
                    <th>
                       	姓名
                    </th>
                    <th>
                       	班级
                    </th>
                    <th>
                       	学号
                    </th>
                    <th>
                       	专业
                    </th>
                    <th>
                       	操作
                    </th>
                </tr>
            </thead>
            <tbody>
	            <c:forEach var="Student" items="${Students}">
	                <tr>
	                    <td>
	                        <div class="checkbox checkbox-success" style="margin-top: 10px;text-align: center;vertical-align: middle;">
	                            <input id="checkbox1" class="styled" type="checkbox">
	                            <label for="checkbox1"></label>
	                        </div>
	                    </td>
	                    <td>
	                        ${Student.sid}
	                    </td>
	                    <td>
	                       	${Student.sname}
	                    </td>
	                    <td>
	                        ${Student.clas.cname}
	                    </td>
	                    <td>
	                        ${Student.snum}
	                    </td>
	                    <td>
	                       	${Student.subject}
	                    </td>
	                    <td>
	                        <div class="btn-group" role="group" aria-label="web">
	                            <button class="btn btn-warning btn-lg" type="button"><em class="glyphicon glyphicon-edit"></em> </button>
	                            <button class="btn btn-primary btn-lg" type="button"><em class="glyphicon glyphicon-floppy-saved"></em> </button>
	                            <button class="btn btn-danger btn-lg" type="button"><em class="glyphicon glyphicon-trash"></em> </button>
	                        </div>
	                    </td>
	                </tr>
	            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="col-md-offset-5 col-lg-offset-5 col-xl-offset-5">
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>
</body>
</html>