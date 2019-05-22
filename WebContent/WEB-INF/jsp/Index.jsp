<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <title>学生管理系统首页</title>
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
    <style>
        html {
            height: 100%;
            width: 100%;
            overflow: hidden;
            padding: 0;
            margin: 0;
        }

        body {
            width: 100%;
            height: 100%;
            padding: 0;
            margin: 0;
            overflow: hidden;
        }

        iframe {
            height: 750px;
            width: 100%;
            border: 0;
            margin: auto;
        }

        fieldset{
            padding:.35em .625em .75em;
            margin:0 2px;
            border:1px solid silver;
            width: auto;
        }
         
        legend{
            padding:.5em;border:0;
            width:auto;
            font-size:18px;
            margin-bottom: 0px;
        }

        #iframe-panel{
            background-color: rgba(255, 255, 255, 1);
        }
        
        #toggle-sidebar{
            position: absolute;
            border-radius: 10px;
            height: 40px;
            border: 0px solid rgb(218, 218, 218);
            top: 9px;
            left: 2px;
            overflow: auto;
            color: rgba(255, 255, 255, 3);
        }
        
    </style>
</head>
    <script type="text/javascript">
	    window.onload = function() {
	        sessionStorage.removeItem("errorList");
	        $("[data-toggle='slidebarl']").tooltip();
	        if('${loguser.uname}'!=''){
	            $('#drop').html("${loguser.uname}<strong class='caret'></strong>");
	        }
	        if(${loguser.flag}!=0){
	            $('#user_status').html("管理员");
	        }else{
	            $('#user_status').html("用户");
	        }
	    }
		
        function colorChange(id){
                var c = $(id).css('color');
                if(c == 'rgb(85, 85, 85)'){
                    $(id).attr('style', 'color:rgba(255, 0, 0, 3)');
                }
        };

        function leave(id){
            $(id).attr('style', 'color:rgba(85, 85, 85, 9)');
        }

        function openTab(id){
            $('#'+id).tab('show');
        }

        function closeTab(tabId){
            var li_id = $(tabId).parent().attr('id');
            var id = li_id.replace("li_tab","");
            if($('#'+li_id).attr('class') == "active"){
                var pre = $("#li_tabStu").prev().find("a").attr('id').replace('tab','');
            }
            $('#'+id).remove();
            $('#'+li_id).remove();
            $('#myTab a[href="#'+pre+'"]').tab('show');
           
        }

        $(function(){
            $('#sidebar').mouseleave(function(){
                $(".page-wrapper").removeClass("toggled");
            });
        });

        function addTabs(tabName,tagName){
            var count = $('#myTab li').length+1;
            var tabCloseId = 'tab'+ count;
            var id = 'tab'+tabName;
            if($('#'+id).length>0){
                openTab(id);
            }else{
                $('#myTab').append( '<li id="li_'+id+'">'+
                                        '<a href="#'+tabName+'" data-toggle="'+id+'" id="'+id+'" onclick="openTab(\''+id+'\');">'+
                                            ''+tagName+' <span class="fa fa-close" id="'+tabCloseId+'close" onmouseover="colorChange('+tabCloseId+'close);" onmouseleave="leave('+tabCloseId+'close)" onclick="closeTab('+id+')"></span>'+
                                        '</a>'+
                                    '</li>'
                                    );
                $('#myTabContent').append(  '<div class="tab-pane fade" id="'+tabName+'">'+
                                                '<div class="container-fluid" tabindex="-1" style="padding: 1px;margin: auto;">'+
                                                    '<div class="row">'+
                                                        '<iframe src="${pageContext.request.contextPath}/'+tabName+'"></iframe>'+
                                                    '</div>'+
                                                '</div>'+
                                            '</div>'
                                        );
                openTab(id);
            }
        }
        
    </script>
<body>
<div class="container-fluid">
    <div class="page-wrapper">
        <div class="container-fluid">
            <nav id="sidebar" class="sidebar-wrapper" style="z-index: 111;">
                <div class="sidebar-content">
                    <div class="sidebar-brand">
                        <a href="#">pro sidebar</a>
                    </div>
                    <div class="sidebar-header">
                        <div class="user-pic">
                            <img class="img-responsive img-rounded" src="${pageContext.request.contextPath}/resources/image/user.jpg" alt="">
                        </div>
                        <div class="user-info">
                            <span class="user-name">${loguser.uname}</strong></span>
                            <span class="user-role" id="user_status"></span>
                            <div class="user-status">                       
                                <span class="label label-success">Online</span>
                            </div>
                        </div>
                    </div><!-- sidebar-header  -->
                    <div class="sidebar-menu">
                        <ul>
                            <hr style="height:1px;background-color:black;border:none;">
                            <li class="sidebar-dropdown">
                                <a  href="#" ><i class="glyphicon glyphicon-user"></i><span>个人信息</span><span class="label label-danger">New</span></a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <li><a href="javascript:addTabs('detl','账户详情');">账 户 详 情<span class="label label-success">1</span></a></li>
                                        <li><a href="javascript:addTabs('Auth','权限一览');">权 限 一 览</a></li>
                                       <!--  <li><a href="#">权 限 一 览</a></li> -->
                                        <li><a href="#">系 统 公 告</a></li>
                                    </ul>
                                </div>
                            </li> 
                            <hr style="height:1px;background-color:black;border:none;">
                            <li class="sidebar-dropdown">
                                <a href="#"><i class="glyphicon glyphicon-list-alt"></i><span>学生管理</span><span class="badge">3</span></a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <li><a href="javascript:addTabs('Stu','学生列表');">学 生 列 表</a></li>
                                        <li><a href="javascript:addTabs('Cls','班级列表');">班 级 列 表</a></li>
                                    </ul>
                                </div>
                            </li>
                            <hr style="height:1px;background-color:black;border:none;">
                            <li class="sidebar-dropdown">
                                <a href="#"><i class="glyphicon glyphicon-lock"></i><span>权限管理</span></a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <li><a href="javascript:addTabs('Mem','成员列表');">成 员 列 表</a></li>
                                        <li><a href="javascript:addTabs('Opt,'操作记录');">操 作 记 录</a></li>
                                        <li><a href="javascript:addTabs('Not','公告管理');">公 告 管 理</a></li>
                                    </ul>
                                </div>
                            </li>
                            <hr style="height:1px;background-color:black;border:none;">
                            <li class="sidebar-dropdown">
                                <a href="#"><i class="glyphicon glyphicon-folder-open"></i><span>文件相关</span></a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <li><a href="javascript:addTabs('ulf','文件上传');">文件上传</a></li>
                                        <li><a href="javascript:addTabs('dlf','文件下载');">文件下载</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div><!-- sidebar-menu  -->            
                </div><!-- sidebar-content  -->
                <div class="sidebar-footer">
                    <a href="#"><i class="fa fa-bell"></i><span class="label label-warning notification">3</span></a>
                    <a href="#"><i class="fa fa-envelope"></i><span class="label label-success notification">7</span></a>
                    <a href="#"><i class="fa fa-gear"></i></a>
                    <a href="#"><i class="fa fa-power-off"></i></a>
                </div>
            </nav>
        </div>
        <div class="row clearfix">
            <div class="col-md-12" style="margin-bottom: -20px;">
                <nav class="navbar navbar-default">
                    <div class="navbar-fixed-top navbar-inverse">
                        <div class="navbar-header">
                            <a class="navbar-brand">
                                <div class="btn btn-default-lg" id="toggle-sidebar" data-placement="sbar" data-toggle="slidebar" title="侧边栏菜单"><em class="glyphicon glyphicon-th-large" style="color: rgba(155, 155, 155, 3)" id="navmenu"></em>
                            </div>
                            </a>
                        </div>
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li class="dropdown">
                                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">菜单</a>
                                </li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li class="dropdown">
                                     <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="drop">未登录<strong class="caret"></strong></a>
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
                    </div>
                </nav>
            </div>
            <div class="container-float" style="margin: 0 auto;">
                <ul id="myTab" class="nav nav-tabs" style="background-color:rgb(233,233,233);">
                    <li class="active" id="li_tabMain">
                        <a href="#Main" data-toggle="tabMain" id="tabMain" onclick="openTab('tabMain')">
                            <span class="glyphicon glyphicon-home"></span> 主页
                        </a>
                    </li>
                </ul>
            </div>
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade in active" id="Main">
                    <div class="container-fluid" style="padding: 1px;margin: auto;">
                        <div class="row">
                            <iframe src="${pageContext.request.contextPath}/Home"></iframe>
                        </div>                
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>