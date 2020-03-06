<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${list}" var="item">

<div class="card border-info mb-3" style="max-width: 20rem;">
  <div class="card-header"></div>
  <div class="card-body">
    <img src="${item.img}">
    <p class="card-text">${item.dietLbl} and ${item.healthLbl}</p>
    <a href="${item.url}">Recipe</a>
  </div>
</div>

</c:forEach>

<div>
  <ul class="pagination pagination-lg">
    <li class="page-item active">
    <form method="post" action="/search">
      <input type="text" name="lbl" value="${searchResults.q}">
      <input type="hidden" name="dietLbl" value="">
      <input type="hidden" name="healthLbl" value="">
      <input type="hidden" name="from" value=0>
      <button class="page-link">1</button>
     </form>
    </li>
   <li class="page-item active">
    <form method="post" action="/search">
      <input type="hidden" name="lbl" value="${searchResults.q}">
      <input type="hidden" name="dietLbl" value="">
      <input type="hidden" name="healthLbl" value="">
      <input type="hidden" name="from" value=10>
      <button class="page-link">2</button>
     </form>
    </li>
  </ul>
</div>

</body>
</html>