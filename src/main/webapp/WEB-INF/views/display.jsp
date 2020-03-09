<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sketchy/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-2kOE+STGAkgemIkUbGtoZ8dJLqfvJ/xzRnimSkQN7viOfwRvWseF7lqcuNXmjwrL"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="partials/header.jsp"%>
	<div class="card border-info mb-3" style="max-width: 20rem;">
			<div class="card-header">${recipe.lbl}</div>
			<div class="card-body">
				<img src="${recipe.img}">
				<p class="card-text">${recipe.dietLbl}and${recipe.healthLbl}</p>
			</div>
	</div>
</body>
</html>