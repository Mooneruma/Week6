<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
	<style>
* {
	margin: auto;
}

header {
	padding-top: 1em;
	background-color: black;
	color: white;
}

body {
	background-image: url("fractal-1224853_1280.jpg");
	text-align: center;
}

#sidebar {
	margin-top: 0.2em;
	padding-top: 2.5em;
	text-align: center;
	background-color: white;
	float: left;
	width: 280px;
}

#sidebarOpen {
	margin-top: 0.5em;
	padding-top: 0.5em;
	text-align: left;
	float: left;
	width: 280px;
}

#main {
	text-align: left;
	width: 75%;
	float: right;
	padding-top: 2em;
	background-color: white;
}

#wrapper {
	background-color: white;
	width: 800px;
	padding-bottom: 1300px;
}

footer {
	width: 1200px;
	background-color: black;
	color: white;
	padding-top: 25px;
	text-align: left;
	text-indent: 50px;
}

#clearfloat {
	clear: both;
}

Big {
	font-size: 2em;
}
</style>
<head>
<meta charset="utf-8">
<title>home</title>
</head>

<body>
	<div id="wrapper">
		<header>
			<h1>Java II</h1>
		</header>

		<content id="sidebar"> <!--<Big><b>Available links</b></Big>-->


		</content>

		<content id="main">
<form method = "post" action = "navigationServlet">
<table>
<c:forEach items="${requestScope.allItems}" var="currentitem">
<tr>
   <td><input type="radio" name="id" value="${currentitem.id}"></td>
   <td>${currentitem.store}</td>
   <td>${currentitem.item}</td>
   </tr>
</c:forEach>
</table>
<input type = "submit" value = "edit" name="doThisToItem">
<input type = "submit" value = "delete" name="doThisToItem">
<input type="submit" value = "add" name = "doThisToItem">
</form>

		
		</content>


		<content id="sidebarOpen"> </content>

		<div class="clearfloat"></div>

	</div>

	<footer>
		Designed and Coded By Kyle Moon <br>
		<p>
			<b>Thank you for viewing!</b>
		</p>
	</footer>
</body>





</html>
