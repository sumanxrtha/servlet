<%--
  Created by IntelliJ IDEA.
  User: kedar
  Date: 4/6/2021
  Time: 3:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C" %>
</head>
<body>
<div id="wrapper">
        <%@include file="../includes/sidebar.jsp" %>
    <!-- Sidebar -->

    <div class="container">
        <h1>Welcome <%= session.getAttribute("full_name")%></h1>
    </div>
</div>

</body>
</html>
