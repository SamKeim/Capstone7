<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<head>
<%@ include file="partials/header.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">Displaying results ${searchResults.from} to ${searchResults.from + 10} of ${searchResults.count}</div>
<c:forEach items="${list}" var="item">
<div class="card border-info mb-3" style="max-width: 20rem;">
  <div class="card-header"></div>
  <div class="card-body">
    <img src="${item.img}">
    <p class="card-text">${item.dietLbl} and ${item.healthLbl}</p>
    <a href="/display?uri=${item.uri}">Recipe</a>
    <a href="/fav/add/${item.uri}">Add to Favorites</a>
  </div>
</div>

</c:forEach>
<div>
  <ul class="pagination pagination-lg">
    <c:if test="${searchResults.from != 0}">
    <li class="page-item active">
    <form method="post" action="/search">
      <input type="hidden" name="lbl" value="${searchResults.q}">
      <input type="hidden" name="from" value="${searchResults.from - 10 }">
      <button class="page-link">Previous [${searchResults.from-10}-${searchResults.from}]</button>
     </form>
    </li>
    </c:if>
    <c:if test="${searchResults.more}">
   <li class="page-item active">
    <form method="post" action="/search">
      <input type="hidden" name="lbl" value="${searchResults.q}">
      <input type="hidden" name="from" value="${searchResults.from + 10}">
      <button class="page-link">Next [${searchResults.from}-${searchResults.from + 10}]</button>
     </form>
    </li>
    </c:if>
  </ul>
 
</div>
</body>
</html>