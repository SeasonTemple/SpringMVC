<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="">
    <title>主页面</title>
  </head>
  <body>
  	<center>
  		<b>${loguser.uname}</b>
  		<b>${loguser.pwd}</b>
  		<b>${loguser.email}</b>
  		<b>${loguser.profile}</b>
  		<b>${loguser.sex}</b>
	</center>
  </body>
</html>
