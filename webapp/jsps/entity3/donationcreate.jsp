<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Create Donation Items</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		    <!-- CSS only -->
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
	</tr>	<tr>
		<td>
		<center>
			<form action="<c:url value='/Entity1ServletCreate'/>" method="post">
				<h1>Donation Store (Primary Key):</h1><input type="text" name="donation_store" class="form-control" style="width:200px;" value="${form.donation_store }"/>
				<span style="color: red; font-weight: 900">${errors.donation_store }</span>
				<br/>
				<br/>
				<h1>Donation SKU：</h1><input type="text"  class="form-control" style="width:200px;" name="donation_SKU" value="${form.donation_SKU }"/>
				<span style="color: red; font-weight: 900">${errors.donation_SKU }</span>
				<br/>
				<br/>
				<h1>Donation Amount：</h1><input type="text" class="form-control" style="width:200px;"  name="donation_amount" value="${form.donation_amount }"/>
				<span style="color: red; font-weight: 900">${errors.donation_amount }</span>
				<br/>
				<br/>
					<h1>Donation Date：</h1><input type="text" class="form-control" style="width:200px;" name="donation_date" value="${form.donation_date }"/>
				<span style="color: red; font-weight: 900">${errors.donation_date }</span>
				<br/>
				<input type="submit" class="btn btn-outline-primary"  value="Create Donation"/>
			</form>
			</center>
		</td>
	</tr>
</table>
  </body>
</html>
