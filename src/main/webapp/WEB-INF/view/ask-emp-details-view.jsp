<%--
  Created by IntelliJ IDEA.
  User: sabba
  Date: 17.12.2020
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ask Form</title>
</head>
<body>
<h2>Dear Employee, Please enter your details</h2>
<form action="/showDetails" method="get">
    <input type="text" name="employeeName" placeholder="Write your name">
    <button type="submit" >Submit</button>
</form>

</body>
</html>
