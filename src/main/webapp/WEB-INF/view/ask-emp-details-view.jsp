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
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/><br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/><br>
    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
</form:select><br><br>

    Which car do you want?
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/><br><br>
    Foreign languages:
    <form:checkboxes path="languages" items="${employee.langList}"/><br><br>
    Phone number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br>

    Email <form:input path="email"/>
    <form:errors path="email"/>
    <br>
    <input type="submit" value="OK">
</form:form>
</body>
</html>
