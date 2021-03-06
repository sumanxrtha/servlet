 <%--
  Created by IntelliJ IDEA.
  User: kedar
  Date: 4/6/2021
  Time: 3:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Details</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C" %>
</head>
<body>
<div id="wrapper">

    <%@include file="../includes/sidebar.jsp" %>

    <div class="container">
        <div class="table-responsive">
            <table class="table">

                <tr>
                    <th>id</th>
                    <td>${user.id}</td>
                </tr>
                <tr>
                    <th>Full Name</th>
                    <td>${user.full_name}</td>
                </tr>
                <tr>
                    <th>Username</th>
                    <td>${user.username}</td>
                </tr>
                <tr>
                    <th>Password</th>
                    <td>${user.password}</td>
                </tr>
                <tr>
                    <th>Role</th>
                    <td>${user.role}</td>
                </tr>
                <tr>
                    <td><a href="user?page=userEdit&id=${user.id}">Edit</a></td>
                    <td><a href="user?page=deleteUser&id=${user.id}">Delete</a></td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>
