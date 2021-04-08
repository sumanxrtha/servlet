<%--
  Created by IntelliJ IDEA.
  User: kedar
  Date: 4/6/2021
  Time: 3:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update User</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C" %>
</head>
<body>
<div id="wrapper">

    <%@include file="../includes/sidebar.jsp" %>
    <div class="container">

        <form action="user?page=editUser" method="post">
            <input type="hidden" name="id" value="${user.id}">

            <div>
                <input type="text" name="full_name" value="${user.full_name}" placeholder="Enter full name">
                <input type="text" name="role" value="${user.role}" placeholder="Enter role">
            </div>

            <div>
                <input type="text" name="username" value="${user.username}" placeholder="Enter a username">
                <input type="password" name="password" value="${user.password}" placeholder="Enter a password">
            </div>
            <input type="submit" value="Update User" name="submit">
            <input type="reset" value="Reset" name="reset">
        </form>
    </div>
</div>

</body>
</html>
