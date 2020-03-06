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
  <div class="card-header">${item.lbl}</div>
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
      <input type="hidden" name="lbl" value="${list.lbl}">
      <input type="hidden" name="dietLbl" value="${list.dietLbl}">
      <input type="hidden" name="healthLbl" value="${list.healthLbl}">
      <input type="hidden" name="from" value=0>
      <input type="hidden" name="to" value=9>
      <button class="page-link">1</button>
     </form>
    </li>
   <li class="page-item active">
    <form method="post" action="/search">
      <input type="hidden" name="lbl" value="${list.lbl}">
      <input type="hidden" name="dietLbl" value="${list.dietLbl}">
      <input type="hidden" name="healthLbl" value="${list.healthLbl}">
      <input type="hidden" name="from" value=10>
      <input type="hidden" name="to" value=19>
      <button class="page-link">2</button>
     </form>
    </li>
    <li class="page-item active">
    <form method="post" action="/search">
      <input type="hidden" name="lbl" value="${list.lbl}">
      <input type="hidden" name="dietLbl" value="${list.dietLbl}">
      <input type="hidden" name="healthLbl" value="${list.healthLbl}">
      <input type="hidden" name="from" value=20>
      <input type="hidden" name="to" value=29>
      <button class="page-link">3</button>
     </form>
    </li>
    <li class="page-item active">
    <form method="post" action="/search">
      <input type="hidden" name="lbl" value="${list.lbl}">
      <input type="hidden" name="dietLbl" value="${list.dietLbl}">
      <input type="hidden" name="healthLbl" value="${list.healthLbl}">
      <input type="hidden" name="from" value=30>
      <input type="hidden" name="to" value=39>
      <button class="page-link">4</button>
     </form>
    </li>
    <li class="page-item active">
    <form method="post" action="/search">
      <input type="hidden" name="lbl" value="${list.lbl}">
      <input type="hidden" name="dietLbl" value="${list.dietLbl}">
      <input type="hidden" name="healthLbl" value="${list.healthLbl}">
      <input type="hidden" name="from" value=40>
      <input type="hidden" name="to" value=49>
      <button class="page-link">5</button>
     </form>
    </li>
    <li class="page-item active">
    <form method="post" action="/search">
      <input type="hidden" name="lbl" value="${list.lbl}">
      <input type="hidden" name="dietLbl" value="${list.dietLbl}">
      <input type="hidden" name="healthLbl" value="${list.healthLbl}">
      <input type="hidden" name="from" value=50>
      <input type="hidden" name="to" value=59>
      <button class="page-link">6</button>
     </form>
    </li>
    <li class="page-item active">
    <form method="post" action="/search">
      <input type="hidden" name="lbl" value="${list.lbl}">
      <input type="hidden" name="dietLbl" value="${list.dietLbl}">
      <input type="hidden" name="healthLbl" value="${list.healthLbl}">
      <input type="hidden" name="from" value=60>
      <input type="hidden" name="to" value=69>
      <button class="page-link">7</button>
     </form>
    </li>
    <li class="page-item active">
    <form method="post" action="/search">
      <input type="hidden" name="lbl" value="${list.lbl}">
      <input type="hidden" name="dietLbl" value="${list.dietLbl}">
      <input type="hidden" name="healthLbl" value="${list.healthLbl}">
      <input type="hidden" name="from" value=70>
      <input type="hidden" name="to" value=79>
      <button class="page-link">8</button>
     </form>
    </li>
    <li class="page-item active">
    <form method="post" action="/search">
      <input type="hidden" name="lbl" value="${list.lbl}">
      <input type="hidden" name="dietLbl" value="${list.dietLabel}">
      <input type="hidden" name="healthLbl" value="${list.healthLabel}">
      <input type="hidden" name="from" value=80>
      <input type="hidden" name="to" value=89>
      <button class="page-link">9</button>
     </form>
    </li>
    <li class="page-item active">
    <form method="post" action="/search">
      <input type="hidden" name="lbl" value="${list.lbl}">
      <input type="hidden" name="dietLbl" value="${list.dietLbl}">
      <input type="hidden" name="healthLbl" value="${list.healthLbl}">
      <input type="hidden" name="from" value=90>
      <input type="hidden" name="to" value=99>
      <button class="page-link">10</button>
     </form>
    </li>
  </ul>
</div>

</body>
</html>