<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Entity</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>Update Entity</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	ID    :<input type="text" name="charity_id1" value="${charity.charity_id }" disabled/>
	<br/>
	
	Name：<input type="text" name="charity_name1=" value="${charity.charity_name }" disabled />
	<br/>
	Location	：<input type="text" name="charity_location1" value="${charity.charity_location }" disabled/>
	<br/>
</form>
<h1>Update the values below</h1>
<form action="<c:url value='/CharityServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="charity_id" value="${charity.charity_id }"/>
	Name：<input type="charity_name" name="charity_name" value="${form.charity_name }"/>
	<span style="color: red; font-weight: 900">${errors.charity_name }</span>
	<br/>
	Location	：<input type="text" name="email" value="${form.charity_location }"/>
	<span style="color: red; font-weight: 900">${errors.charity_location }</span>
	<br/>
	<input type="submit" value="Update Charity"/>
</form>

</body>
</html>
