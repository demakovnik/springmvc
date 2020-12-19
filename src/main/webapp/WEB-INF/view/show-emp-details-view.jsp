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
    <title>Show Details</title>
</head>
<body>
<h2>Dear Employee, you are WELCOME!</h2>
<br>
<br>
<br>

<%--Your name: ${param.employeeName}--%>
Your name: ${employee.name}<br>
Your surname: ${employee.surname} <br>
Your salary: ${employee.salary}

</body>
</html>
