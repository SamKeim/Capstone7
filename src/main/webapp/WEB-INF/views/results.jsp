<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
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
<%@ include file="partials/header.jsp"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">Displaying results
		${searchResults.from} to ${searchResults.from + 10} of
		${searchResults.count}</div>
	<c:forEach items="${list}" var="item">
		<div class="card border-info mb-3" style="max-width: 20rem;">
		<p>${item.recipe.uri}</p>
			<div class="card-header">${item.recipe.lbl}</div>
			<div class="card-body">
				<img src="${item.recipe.img}">
				<p class="card-text">${item.recipe.dietLbl}and ${item.recipe.healthLbl}</p>
				<a href="/display?r=${item.recipe.uri}&app_id=1aba9e71&app_key=d55c2a63a55637683ce6dc1e71f0a369">Recipe</a>
			</div>
		</div>

	</c:forEach>
	<div>
		<ul class="pagination pagination-lg">
			<c:if test="${searchResults.from != 0}">
				<li class="page-item active">
					<form method="post" action="/search">
						<input type="hidden" name="lbl" value="${searchResults.q}">
						<input type="hidden" name="from"
							value="${searchResults.from - 10 }">
						<button class="page-link">Previous
							[${searchResults.from-10}-${searchResults.from}]</button>
					</form>
				</li>
			</c:if>
			<c:if test="${searchResults.more}">
				<li class="page-item active">
					<form method="post" action="/search">
						<input type="hidden" name="lbl" value="${searchResults.q}">
						<input type="hidden" name="from"
							value="${searchResults.from + 10}">
						<button class="page-link">Next
							[${searchResults.from}-${searchResults.from + 10}]</button>
					</form>
				</li>
			</c:if>
		</ul>

	</div>
</body>
</html>