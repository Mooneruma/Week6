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
<body>
<form method = "post" action = "listNavigationServlet">
<table>
<c:forEach items="${requestScope.allLists}" var="currentlist">
<tr>
   <td><input type="radio" name="id" value="${currentlist.id}"></td>
   <td><h2>${currentlist.listName}</h2></td></tr>
   <tr><td colspan="3">Trip Date: ${currentlist.tripDate}</td></tr>
   <tr><td colspan="3">Traveler: ${currentlist.shopper.shopperName}</td></tr>
   <c:forEach var = "listVal" items = "${currentlist.listOfItems}">
            <tr><td></td><td colspan="3">
                ${listVal.store}, ${listVal.item}
                </td>
            </tr>
  </c:forEach>
</c:forEach>
</table>
<input type = "submit" value = "edit" name="doThisToItem">
<input type = "submit" value = "delete" name="doThisToItem">
<input type="submit" value = "add" name = "doThisToItem">
</form>
<a href="addItemsForListServlet">Create a New Trip Plan</a>
<a href="index.html">Insert a new destination</a>

		
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
