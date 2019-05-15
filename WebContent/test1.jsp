<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta charset="UTF-8">
    <title>Base_Page</title>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
    <link href="${pageContext.request.contextPath}/resources/css/demo.css">
    <link href="${pageContext.request.contextPath}/resources/css/jquery.mCustomScrollbar.min.css" />
    <link href="${pageContext.request.contextPath}/resources/css/custom.css">
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
        
        .sidebar-wrapper,
.sidebar-wrapper .sidebar-dropdown > a:after,
.sidebar-wrapper ul li a i,
.page-wrapper .page-content {
    -webkit-transition: all 0.3s;
    -moz-transition: all 0.3s;
    -o-transition: all 0.3s;
    -ms-transition: all 0.3s;
    transition: all 0.3s;
}

/*----------------page-wrapper----------------*/
.page-wrapper{
    height: 100vh;
}

/*----------------toggeled sidebar----------------*/
.page-wrapper.toggled .sidebar-wrapper{
    left:0px;
}
@media screen and (min-width: 768px) {
    .page-wrapper.toggled .page-content{
        padding-left: 300px;
    }
}
/*.page-wrapper.toggled */
.page-wrapper.toggled #toggle-sidebar{
    position: absolute;
    color: #cacaca;
}


/*----------------sidebar-wrapper----------------*/
.sidebar-wrapper{
    width: 300px;
    background: #1c232f;
    height: 100%;
    max-height: 100%;
    position: fixed;
    top: 0;
    left: -300px;
}



.sidebar-wrapper ul li:hover a i,
.sidebar-wrapper .sidebar-dropdown .sidebar-submenu li a:hover:before,
.sidebar-wrapper .sidebar-search input.search-menu:focus + span{
    color: #0086fd;
}

.sidebar-wrapper ul{
    list-style-type: none;
    padding: 0;
    margin: 0;
}
.sidebar-wrapper a{
    text-decoration: none;
} 
/*----------------sidebar-content----------------*/
.sidebar-content{
    max-height: calc(100% - 30px);
    height: calc(100% - 30px);
    overflow-y: scroll;
    position: relative;
    
}
.sidebar-content.desktop{
    overflow-y: hidden;
}
/*--------------------sidebar-brand----------------------*/
.sidebar-wrapper .sidebar-brand {
        padding: 15px 20px;
        text-align: center;
        border-bottom: 1px solid #10151d;
}

.sidebar-wrapper .sidebar-brand > a{
    color: #fff;
    text-transform: uppercase;
    font-weight: bold;
}

/*--------------------sidebar-header----------------------*/
.sidebar-wrapper .sidebar-header{
    padding: 20px;
    overflow: hidden;
    border-top: 1px solid #202a3c;
    border-bottom: 1px solid #10151d;
}
.sidebar-wrapper .sidebar-header .user-pic{
        float: left;
        width: 60px;
        padding: 2px;
        border: 1px solid #585858;
        border-radius: 8px;
        margin-right:15px;
}
.sidebar-wrapper .sidebar-header .user-info{
        float: left;
        color: #ccc;
}
.sidebar-wrapper .sidebar-header .user-info span{
        display: block;
}
.sidebar-wrapper .sidebar-header .user-info .user-role{
        font-size: 12px;
        color: #929292;
}
.sidebar-wrapper .sidebar-header .user-info .user-status{
        display: inline-block;
}

/*-----------------------sidebar-search------------------------*/

.sidebar-wrapper .sidebar-search{
    border-top: 1px solid #222b35;
    border-bottom: 1px solid #10151d;
    
}
.sidebar-wrapper .sidebar-search > div{
          padding: 10px 20px;
}
 .sidebar-wrapper .sidebar-search input.search-menu,
 .sidebar-wrapper .sidebar-search .input-group-addon{
    background: #0c1119;  
    box-shadow: none;
    color: #9c9c9c;   
    border-color: #3c485d;
    transition: color .5s
}
/*----------------------sidebar-menu-------------------------*/
.sidebar-wrapper .sidebar-menu{
    border-top: 1px solid #222b35;   
    padding-bottom: 10px;
}

.sidebar-wrapper .sidebar-menu .header-menu span{
    font-size: 14px;
    text-transform: uppercase;
    font-weight: bold;
    color: #b9b9b9;
    padding: 10px 20px;
    display: inline-block;
}

.sidebar-wrapper .sidebar-menu ul li a{
    display: inline-block;
    width: 100%;
    color: #9c9c9c;
    text-decoration: none;
    transition:color .3s;
    position: relative;
    padding: 5px 30px 5px 20px;
}

.sidebar-wrapper .sidebar-menu ul li:hover > a{
    color: #ccc;
}

.sidebar-wrapper .sidebar-menu  ul li a i{
    margin-right: 10px;
    font-size: 14px;
    background: #0c1119;
    width: 30px;
    height: 30px;
    line-height: 30px;
    text-align: center;
    border-radius: 4px;
}



.sidebar-wrapper .sidebar-menu .sidebar-dropdown div {
    background: #0c1119;
    border-bottom: 1px solid #222b35;
}
.sidebar-wrapper .sidebar-menu .sidebar-dropdown > a:after {
        content: "\f105";
        font-family: FontAwesome;
        font-weight: 400;
        font-style: normal;
        display: inline-block;
        text-align: center;
        text-decoration: none;
        background: 0 0;
        speak: none;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        position: absolute;
        right: 15px;
        top: 10px;

}
.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu ul {
        padding: 5px 0;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li {
        padding-left: 25px;
        font-size: 13px;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a:before {
        content: "\f10c";
        font-family: FontAwesome;
        font-weight: 400;
        font-style: normal;
        display: inline-block;
        text-align: center;
        text-decoration: none;
        speak: none;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        margin-right:10px;
        font-size: 10px;


}

.sidebar-wrapper .sidebar-menu ul li a span.label,
.sidebar-wrapper .sidebar-menu ul li a span.badge{
    float: right;
    margin-top: 7px;
    margin-left:5px;
}

.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a .badge,
.sidebar-wrapper .sidebar-menu .sidebar-dropdown .sidebar-submenu li a .label{
    float: right;    
     margin-top: 0px;
}

.sidebar-wrapper .sidebar-menu .badge{
    background: #384558;
}
.sidebar-wrapper .sidebar-menu .sidebar-submenu{
    display: none;
}
.sidebar-wrapper .sidebar-menu .sidebar-dropdown.active > a:after{
    transform:rotate(90deg);
    right: 17px;
}
/*--------------------------side-footer------------------------------*/

.sidebar-footer{
    position: absolute;
    width: 100%;
    bottom: 0;
    display: flex;
    background: #1c232f;  
    box-shadow: 0px -1px 5px #0c1119;
    border-top: 1px solid #222b35;
}
.sidebar-footer > a {
    flex-grow: 1;
    text-align: center;
    border-left: 1px solid #222b35;
    border-right: 1px solid #10151d;
    height: 30px;
    line-height: 30px;
    color:#9c9c9c;
    position: relative;
}
.sidebar-footer > a:first-child {
    border-left: none;
}
.sidebar-footer > a:last-child {
    border-right: none;
}
.sidebar-footer > a:hover{
    color: #ccc;
}
.sidebar-footer > a .notification {
    position: absolute;
    top: 0;
}

/*--------------------------page-content-----------------------------*/
.page-wrapper .page-content{
    display: inline-block;
    width: 100%;
    padding-left: 0px;
}
.page-wrapper .page-content > div {
    padding: 20px 40px;
}
.page-wrapper .page-content {
    overflow-x: hidden;
}
/*---------------------toggle-sidebar button-------------------------*/
#toggle-sidebar{
    position: fixed;
    top: 13px;
    left: 25px;
    /* color: #0f151f; */
    color: #D5D6E2;
    font-size: 18px;
}

/*----------------  Scroll bar style   --------------- */

.mCSB_scrollTools{
    width: 6px;
}
.mCSB_inside>.mCSB_container{
    margin-right: 0px; 
}
.mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar,
.mCSB_scrollTools .mCSB_dragger.mCSB_dragger_onDrag .mCSB_dragger_bar,
.mCSB_scrollTools .mCSB_dragger:hover .mCSB_dragger_bar
{
    background: #657692;
}
        
    </style>
</head>
    <script type="text/javascript">
        $(function(){
            $('#t2close').mouseover(function(){
                var c = $(this).css('color');
                if(c == 'rgb(85, 85, 85)'){
                    $(this).attr('style', 'color:rgba(255, 0, 0, 3)');
                }
            }),
            $('#t2close').mouseleave(function(){
                $(this).attr('style', 'color:rgba(85, 85, 85, 9)');
            });
        });
        window.onload = function() {
    		sessionStorage.removeItem("errorList");
    		if('${loguser.uname}'!=''){
    			$('#drop').html("${loguser.uname}");
    		}
    	}

        $(function(){
            $('#sidebar').mouseleave(function(){
                $(".page-wrapper").removeClass("toggled");
            });
        });

        function openStudentTable(){
            $('#tab2').tab('show');
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
                            <span class="user-role">${loguser.flag}</span>
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
                                        <li><a href="#">账 户 详 情<span class="label label-success">1</span></a></li>
                                        <li><a href="openStudentTable();">权 限 一 览</a></li>
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
                                        <li><a href="#">学 生 列 表</a></li>
                                        <li><a href="#">班 级 列 表</a></li>
                                    </ul>
                                </div>
                            </li>
                            <hr style="height:1px;background-color:black;border:none;">
                            <li class="sidebar-dropdown">
                                <a href="#"><i class="glyphicon glyphicon-lock"></i><span>权限管理</span></a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <li><a href="#">成 员 列 表</a></li>
                                        <li><a href="#">操 作 记 录</a></li>
                                        <li><a href="#">公 告 管 理</a></li>
                                    </ul>
                                </div>
                            </li>
                            <hr style="height:1px;background-color:black;border:none;">
                            <li class="sidebar-dropdown">
                                <a href="#"><i class="glyphicon glyphicon-folder-open"></i><span>文件相关</span></a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <li><a href="#">文件上传</a></li>
                                        <li><a href="#">文件下载</a></li>
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
                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>
</body>
</html>