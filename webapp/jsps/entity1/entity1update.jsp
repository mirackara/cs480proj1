
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<style type="text/css">
		*{
			background-color:#122D32;
			font-size:10pt;
		}
		body{
			background-color:#122D32;
			text-align:center;
		}
		.table{
			width:1024px;
			height:100%;
			border:1px solid gray;
		    border-collapse: collapse;
		}
		.table td{
			border:1px solid gray;
		}
		iframe {
			width: 100%;
			height: 100%;
		}
		h1 { 
			color:white;
		}
	</style>
  </head>
  <body>
<table class="table" align="center">
	<tr style="background: #264A27; height: 120px; ">
		<td colspan="2" align="center">
			<iframe frameborder="0" src="<c:url value='/jsps/top.jsp'/>" name="top"></iframe>
		</td>
		</tr>
	<tr>
		<td>
		<center>
		<form action="<c:url value='/Entity1ServletRead'/>" method="post">
			<input type="hidden" name="method" value="regist"/>
			<h1>Inventory ID    :</h1><input type="text" class="form-control" style="width:200px;" name="username" value="${form.username }"/>
			<span style="color: red; font-weight: 900">${errors.username }</span>
			<br/>
		<%-- 	Password：<input type="password" name="password" value="${form.password }"/>
			<span style="color: red; font-weight: 900">${errors.password }</span>
			<br/>
			Email	：<input type="text" name="email" value="${form.email }"/>
			<span style="color: red; font-weight: 900">${errors.email }</span>
			<br/> --%>
			<input type="submit"  class="btn btn-outline-primary" value="Update Inventory"/>
		</form>
			</center>
		</td>
	</tr>
</table>
  </body>
</html>