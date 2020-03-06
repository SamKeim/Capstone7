<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sketchy/bootstrap.min.css" rel="stylesheet" integrity="sha384-2kOE+STGAkgemIkUbGtoZ8dJLqfvJ/xzRnimSkQN7viOfwRvWseF7lqcuNXmjwrL" crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
<head>
<%@ include file="partials/header.jsp" %>
<meta charset="ISO-8859-1">
<title>Search</title>
</head>
<body>
<c:if test="${message ne null}">
<div class="alert alert-dismissible alert-danger">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>${message}</strong>
</div>
</c:if>
<form action="/search" method="post">
<div>
<label>Recipe Name</label><input type="text" name="lbl" required>
</div>
<div>
<label>Diet</label>
<select name="dietLbl">
	<option value=null>None</option>
	<option value="Low-Carb">Low Carb</option>
	<option value="Low-Fat">Low Fat</option>
	<option value="High-Protein">High Protein</option>
</select>
</div>
<div>
<label>Allergies</label>
<select name="healthLbl">
	<option value=null>None</option>
	<option value="Alcohol-Free">Alcohol Free</option>
	<option value="Tree-Nut-Free">Tree Nut Free</option>
	<option value="Peanut-Free">Peanut Free</option>
</select>
</div>
<input type="hidden" name="from" val="0">
<input type="hidden" name="to" val="9">
<button>Search!!</button>
</form>
</body>
</html>