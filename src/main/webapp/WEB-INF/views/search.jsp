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
<label></label><input type="text" name="label">
<label></label><input type="text" name="dietLabels">
<label></label><input type="text" name="healthLabels">
<label></label><input type="number" name="from">
<label></label><input type="number" name="to">
</body>
</html>