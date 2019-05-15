<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <title>Home_iframe</title>
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
	<style type="text/css">
        fieldset{
            padding:.10em .625em .10em;
            margin:0 1px;
            border:1px solid silver;
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

        tr,th{
            height: 45px;
        }

        table{
            width: auto;
            color: gray;
            font-size: 15px;
            margin-right: 10px; 
            margin-left: 10px;
        }
        
        blockquote{
            margin-top: 15px;
            padding: 20px;
            margin-bottom: -15px;
        }

        #welcome{
            background-color: rgb(233,233,233);
            border-color: green;
        }

        a:hover{
            text-decoration:none;
            color: red;
        }

        a{
            color: green;
        }

        #st_info a{
            color: gray;
            text-decoration:none;
        }

        #st_info th{
            width: 20%;
            font-weight: normal;
        }

        #dev_team{
            color: gray;
        }

        #dev_team th{
            width: 25%;
            font-weight: normal;
        }

        #thanks a{
            text-decoration:none;
        }

        #thanks{
            background-color: rgb(250, 250, 250);
            border-color: black;
        }

        #thanks a{
            color: red;
            text-decoration:none;
        }

    </style>
</head>
<body>
<div class="container-fluid">
    <div class="col-md-12">
        <blockquote id="welcome">
          <p>欢迎用户：${loguser.uname}！现在是2019-5-10 17:50:22</span>
        </blockquote>
    </div>
    <div class="col-md-12" >
        <form id="st_notify">
            <fieldset>
                <legend><h3>系统通知</h3></legend>
                <table class="table table-bordered table-hover text-justify">
                    <tbody>
                        <tr>
                            <td>
                                <a href="">本站预计将在今年下半年进行全面升级(开玩笑)</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="">与我们联系：110</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </fieldset>
        </form>
        <form id="st_info">
            <fieldset>
                <legend><h3>系统信息</h3></legend>
                <table class="table table-bordered table-hover" >
                    <tbody>
                        <tr>
                            <th>
                               	当前版本
                            </th>
                            <td>
                                <a href="https://github.com/SeasonTemple/SpringMVC" target="_blank">v_1.065433691.beta</a>
                            </td>
                        </tr>
                        <tr>
                            <th>
                               	服务器地址
                            </th>
                            <td>
                                <a href="#">#</a>
                            </td>
                        </tr>
                        <tr>
                            <th>
                               	操作系统
                            </th>
                            <td>
                                <a href="https://www.microsoft.com" target="_blank">Windows 10</a>
                            </td>
                        </tr>
                        <tr>
                            <th>
                               	运行环境
                            </th>
                            <td>
                                <a href="http://tomcat.apache.org" target="_blank">Apache-Tomcat-9.0.13(Win64)</a>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                HTML版本
                            </th>
                            <td>
                                <a href="https://baike.baidu.com/item/html5/4234903?fr=aladdin" target="_blank">HTML 5</a>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                MySQL版本
                            </th>
                            <td>
                                <a href="https://www.mysql.com/" target="_blank">8.0.13</a>
                            </td>
                        </tr>
                        <tr>
                            <th>
                               	参考文献
                            </th>
                            <td>
                                Spring/SpringMvc/Mybatis/Bootstrap v3/jQuery/各大博文论坛
                            </td>
                        </tr>
                        <tr>
                            <th>
                               	技术使用
                            </th>
                            <td>
                                SSM/Bootstrap v3/Font Awesome/Glyphicons Halflings//jQuery/mCustomScrollbar
                            </td>
                        </tr>
                        <tr>
                            <th>
                               	发布时间
                            </th>
                            <td>
                                2019-?-?
                            </td>
                        </tr>
                    </tbody>
                </table>
            </fieldset>
        </form>
        <form id="dev_team">
            <fieldset>
                <legend><h3>开发团队</h3></legend>
                <table class="table table-bordered table-hover text-justify">
                    <tbody>
                        <tr>
                            <th>
                               	版权所有
                            </th>
                            <td>
                                <cite>SeasonTemple</cite>&emsp;<a href="https://github.com/SeasonTemple/SpringMVC" target="_blank">项目地址</a>
                            </td>
                        </tr>
                        <tr>
                            <th>
                               	开发者
                            </th>
                            <td>
                                <cite>SeasonTemple</cite>&emsp;<a href="http://seasontemple.top" target="_blank">博客</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </fieldset>
        </form>
    </div>
    <div class="col-md-12">
        <blockquote id="thanks" style="padding: 20px">
            <p>感谢：</p>
            <ul>
                <li>
                   	百度<small>搜索引擎我(一般)只用 <a href="https://www.baidu.com" target="_blank">百度</a>.jpg。</small>
                </li>
                <li>
                    Bootstrap3<small>没有它，真不知道该从哪里入手做前端.jpg。附上友情链接 <a href="https://v3.bootcss.com" target="_blank">Bootstrap3</a>。</small>
                </li>
                <li>
                    Glyphicons Halflings<small>该图标库一般是收费的，但他们的作者允许 Bootstrap 免费使用。为了表示感谢，我们在使用时应该为 <a href="https://glyphicons.com" target="_blank">Glyphicons</a> 添加一个友情链接。</small>
                </li>
                <li>
                    Font Awesome<small>你也是图标库。嗯，font awesome也很好用诶。友情链接<a href="http://fontawesome.dashgame.com" target="_blank">Font Awesome</a>。</small>
                </li>
                <li>
                    jQuery插件库<small>该插件库为我们提供了不少的思路。同样附上友情链接 <a href="http://www.jq22.com" target="_blank">jQuery插件库</a>。</small>
                </li>
            </ul>
            <p class="blockquote-reverse">提供的思路以及技术支持。</p>
        </blockquote>
    </div>
</div>
</body>
</html>