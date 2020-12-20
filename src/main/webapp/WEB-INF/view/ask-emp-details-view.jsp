<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ask Form</title>
</head>
<body>
<h2>Dear Employee, Please enter your details</h2>
<%--@elvariable id="employee" type="ru.inofttech.springmvc.Employee"--%>
<form:form action="showDetails" modelAttribute="employee">
    Name <form:input path="name"/><br>
    Surname <form:input path="surname"/><br>
    Salary <form:input path="salary"/><br>
    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
</form:select><br><br>

    Which car do you want?
    BMW <form:radiobutton path="carBrand" value="BMW"/>
    Audi <form:radiobutton path="carBrand" value="Audi"/>
    MB<form:radiobutton path="carBrand" value="Mercedes-Benz"/>
    <input type="submit" value="OK">
</form:form>
</body>
</html>
