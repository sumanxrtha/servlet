<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kedar
  Date: 4/6/2021
  Time: 3:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"  %>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div id="wrapper">

    <!-- Sidebar -->
    <%@include file="../includes/sidebar.jsp" %>
    <div class="container">
        <div class="table-responsive">
            <table class="table">
                <tr>
                    <th>id</th>
                    <th>Full Name</th>
                    <th>Username</th>
                    <th>password</th>
                    <th>Role</th>
                </tr>

                <C:forEach items="${userList}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.full_name}</td>
                        <td>${user.username}</td>
                        <td>${user.password}</td>
                        <td>${user.role}</td>
                        <td><a href="user?page=userDetails&id=${user.id}">View Details</a></td>
                    </tr>
                </C:forEach>

            </table>
        </div>
        <a href="user?page=newUsers"><h4>Add New User</h4></a>
    </div>

</div>

</body>
</html>
