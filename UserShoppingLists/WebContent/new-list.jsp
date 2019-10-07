<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<form action = "createNewListServlet" method="post">
Trip Name: <input type ="text" name = "listName"><br />
Trip date: <input type ="text" name = "month" placeholder="mm" size="4"> <input type ="text" name = "day" placeholder="dd" size="4">, <input type ="text" name = "year" placeholder="yyyy" size="4">
Travler Name: <input type = "text" name = "shopperName"><br />

Available Destinations:<br />

<select name="allItemsToAdd" multiple size="6">
<c:forEach items="${requestScope.allItems}" var="currentitem">
   <option value = "${currentitem.id}">${currentitem.store} | ${currentitem.item}</option>
</c:forEach>
</select>
<br />
<input type = "submit" value="Create List and Add Items">
</form>
<a href = "index.html">Go add new Destinations instead.</a>

		
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
