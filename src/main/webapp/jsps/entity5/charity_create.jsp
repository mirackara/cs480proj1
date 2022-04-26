<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    
    <title>Create Charity</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style type="text/css">
		*{
			background-color:#122D32;
			font-size:10pt;
		}
		body{
		
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
	<tr style="background: #68d415; height: 120px; ">
		<td colspan="2" align="center">
			
			<iframe frameborder="0" src="<c:url value='/jsps/top.jsp'/>" name="top"></iframe>
			
		</td>
	</tr>	<tr>
		<td>
		<center>
			<form action="<c:url value='/Entity1ServletCreate'/>" method="post">
				Charity_ID (Primary Key):<input type="text" name="Charity_ID" value="${form.Charity_ID }"/>
				<span style="color: red; font-weight: 900">${errors.Charity_ID }</span>
				<br/>
				<br/>
				Charity_Name：<input type="text" name="Charity_Name" value="${form.Charity_Name }"/>
				<span style="color: red; font-weight: 900">${errors.Charity_Name }</span>
				<br/>
				<br/>
				Charity_Location	：<input type="text" name="Charity_Location" value="${form.Charity_Location }"/>
				<span style="color: red; font-weight: 900">${errors.Charity_Location }</span>
				<br/>
				<input type="submit" value="Create Charity"/>
			</form>
			</center>
		</td>
	</tr>
</table>
  </body>
</html>
