<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>title</title>
<style>
	#flex { display: inline-flex; flex-wrap: wrap; width: 210px; }
	#flex > div { border: 1px solid black; width: 100px; height: 100px; text-align: center;}
</style>
</head>
<body>
<h3>DIsplay Flex examples</h3>
<%
	List<String> list = new ArrayList<>();
	
	list.add("A");
	list.add("B");
	list.add("C");
	list.add("D");
	
	pageContext.setAttribute("list", list);
%>

	<div id="flex">
		<c:forEach var="c" items="${list}">
			<div class="item">${c}</div>
		</c:forEach>
	</div>
</body>
</html>