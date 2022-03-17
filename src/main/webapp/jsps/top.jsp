<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    
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
	body {
		background: #4682B4; 
	}
	a {
		text-transform:none;
		text-decoration:none;
	} 
	a:hover {
		text-decoration:underline;
	}
</style>
  </head>
  
  <body>
<h1 style="text-align: center;">HI CLASS OF CS 480</h1>
<div style="font-size: 10pt;">
	<c:choose>
		<c:when test="${empty sessionScope.session_user }">
			<a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">Login</a> |&nbsp; 
			<a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">Register</a> |&nbsp; 
			<a href="<c:url value='/jsps/user/initialize.jsp'/>" target="_parent">Initialize Database</a> |&nbsp; 
	
		</c:when>
		<c:otherwise>
			Hello：${sessionScope.session_user.username };
			<a href="<c:url value='/jsps/item.jsp'/>" target="body">Query Result</a> |&nbsp;&nbsp;
			<a href="<c:url value='/UserServletLogout'/>" target="_parent">Logout</a> |&nbsp; 
			<br>
			<a href="<c:url value='/jsps/entity1/entity1create.jsp'/>" target="_parent">Create Person</a> |&nbsp; 
			<a href="<c:url value='/jsps/entity1/entity1read.jsp'/>" target="_parent">Read Person</a> |&nbsp;
			<a href="<c:url value='/jsps/entity1/entity1update.jsp'/>" target="_parent">Update Person</a> |&nbsp;	 
			<a href="<c:url value='/jsps/entity1/entity1delete.jsp'/>" target="_parent">Delete Person</a>	
			</br>
			<a href="<c:url value='/jsps/entity2/restaurantcreate.jsp'/>" target="_parent">Create Restaurant </a> |&nbsp; 
			<a href="<c:url value='/jsps/entity2/restaurantread.jsp'/>" target="_parent">Read Restaurant</a> |&nbsp;
			<a href="<c:url value='/jsps/entity2/restaurantupdate.jsp'/>" target="_parent">Update Restaurant</a> |&nbsp;	 
			<a href="<c:url value='/jsps/entity2/restaurantdelete.jsp'/>" target="_parent">Delete Restaurant</a>	
		</c:otherwise>
	</c:choose>

</div>
  </body>
</html>

