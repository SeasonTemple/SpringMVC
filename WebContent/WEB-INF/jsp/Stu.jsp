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
		function refresh(){
            location.replace(location.href);
        }
		
		function add(title){
			$('#h3').html(title);
            $('#submit').html('添加');
            $('#studentEditDialog').modal('show');
        }

        function edit(selectId,title){
            var sid = selectId.replace('edit','');
            $('#h3').html(title);
            $('#submit').html('更新');
            $.ajax();
            $('#studentEditDialog').modal('show');
        }
		
		function deleteOne(selectId){
            var sid = selectId.replace('delete','');
            Swal.fire({
                type: 'warning',
                title: '删除学生?',
                text: '',
                confirmButtonColor: '#3085d6',
                confirmButtonText: '删除',
                showCancelButton: true,
                cancelButtonColor: '#d33',
                cancelButtonText: "取消",
                focusCancel: true,
                reverseButtons: true
            }).then((isConfirm) => {
                if(isConfirm.value){
                    Swal.fire({
                        type: 'question',
                        title: '删除中',
                        timer: 1500,
                        showLoaderOnConfirm: true,
                        onBeforeOpen:()=>{
                           Swal.showLoading()
                        },
                        allowOutsideClick: () => !Swal.isLoading()
                    }).then(() =>{
                        $.ajax({
                            type: 'post',
                            url: "www.baidu.com?sid",
                            data: JSON.stringify({sid: sid}),
                            dataType: 'Json',
                            contentType:"application/json"
                        }).done(function(data){
                            if(data=="ok"){
                                Swal.fire('删除成功','','success');
                            }
                        }).error(function(){
                            Swal.fire('删除失败','data','error');
                        });
                    });
                }
            });
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
									<button class="btn btn-danger" type="button">
										<span class="glyphicon glyphicon-trash"></span> 批量删除
									</button>
									<button class="btn btn-success" type="button" onclick="add('添加学生信息')">
										<em class="glyphicon glyphicon-plus"></em> 添加
									</button>
                            </div>
                        </div>
                        <div class="col-md-3 pull-right">
                            <div class="input-group">
                                <span class="input-group-btn">
                                    <button class="btn btn-default btn-lg" type="button" onclick="refresh()">&emsp;<span class="glyphicon glyphicon-refresh"></span>&emsp;</button>
                                </span>
                                <input type="text" class="form-control input-lg" placeholder="使用学号等关键信息查询...">
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
                    <th style="width: 20%">
                       	操作
                    </th>
                </tr>
            </thead>
            <tbody>
	            <c:forEach var="Student" items="${Students}">
	                <tr>
	                    <td>
	                        <div class="checkbox checkbox-success" style="margin-top: 10px;text-align: center;vertical-align: middle;">
	                            <input id="${Student.sid}" class="styled" type="checkbox">
	                            <label for="checkbox${Student.sid}"></label>
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
	                            <button class="btn btn-primary btn-lg" type="button" id="edit${Student.sid}" onclick="edit(this.id,'编辑学生信息')">
	                            	<em class="glyphicon glyphicon-edit"></em> 
                            	</button>
	                            <button class="btn btn-danger btn-lg" type="button" id="delete${Student.sid}" onclick="deleteOne(this.id)">
	                            	<em class="glyphicon glyphicon-trash"></em> 
	                            </button>
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
	<div class="modal fade" id="studentEditDialog" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" >
	        <div class="modal-content" style="background-color:rgba(255, 255, 255, .4);border-color:rgba(255, 255, 255, .6);">
	            <div class="modal-header">
	                <button data-dismiss="modal" class="close" type="button" ><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
	                <h3 class="modal-title" style="text-align: center"><span id="h2">学生信息</span></h3>
	            </div>
	            <div class="modal-body" style="width: 80%; margin: 0 auto;">
	                <form class="bs-example bs-example-form" role="form" modelAttribute="student">
	                    <label style="font-size:18px;">姓名</label>
	                    <div class="form-group" id="icon_sname">
	                        <input type="text" class="form-control" name="sname" data-toggle="dtname" data-placement="top" data-html="true" />
	                        <span id="span1"></span>
	                        <span id="helpBlock1" class="help-block" style="font-size: 12px;color:rgba(255, 0, 0, .9);"></span>
	                    </div>
	                    <label style="font-size:18px;">年级</label>
	                    <div class="form-group" id="icon_grade">
	                        <input class="form-control" type="text" name="grade" data-toggle="dtgrade" data-placement="top" data-html="true" />
	                        <span id="span2"></span>
	                        <span id="helpBlock2" class="help-block" style="color:rgba(255, 0, 0, .9);"></span>
	                    </div>
	
	                    <label style="font-size:18px;">班级</label>
	                    <div class="form-group">
	                        <div class="col-md-5 fluid pull-left" style="margin-left: -14px;">
	                            <select class="form-control" id="edit_class"
	                                name="class">
	                                <option value="">--请选择班级--</option>
	                                <%-- <c:forEach items="${classes}" var="clas">
	                                    <option value="${clas.cid}"
	                                        <c:if test="${clas.cid == class}"> selected</c:if>>${clas.cname}</option>
	                                </c:forEach> --%>
	                            </select>
	                        </div>
	                        <span class="col-md-12"></span>
	                    </div>
	                    
	                    <label style="font-size:18px;">专业</label>
	                    <div class="form-group" id="icon_subject">
	                        <input class="form-control" type="text" name="subject" data-toggle="dtsubject" data-placement="top" data-html="true" />
	                        <span id="span4"></span>
	                        <span id="helpBlock4" class="help-block" style="color:rgba(255, 0, 0, .9);"></span>
	                    </div>
	                    <label style="font-size:18px;">学号</label>
	                    <div class="form-group" id="icon_snum">
	                        <input class="form-control" type="text" name="snum" data-toggle="dtsnum" data-placement="top"  data-html="true" />
	                        <span id="span5"></span>
	                        <span id="helpBlock5" class="help-block" style="color:rgba(255, 0, 0, .9);"></span>
	                    </div>
	                    <label style="font-size:18px;">联系电话</label>
	                    <div class="form-group" id="icon_tel">
	                        <input class="form-control" type="text" name="tel" data-toggle="dttel" data-placement="top" data-html="true" />
	                        <span id="span6"></span>
	                        <span id="helpBlock6" class="help-block" style="color:rgba(255, 0, 0, .9);"></span>
	                    </div>
	                </form>
	            </div>
	            <div class="modal-footer">
	                <center>
	                    <button data-dismiss="modal" class="btn btn-default btn-lg" type="button" id="close">取消</button>
	                    &emsp;&emsp;
	                    <button class="btn btn-primary btn-lg" id="submit" >提交</button>
	                </center>
	            </div>
	        </div>
	    </div>
     </div>
</div>
</body>
</html>