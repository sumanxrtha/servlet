<%--
  Created by IntelliJ IDEA.
  User: SuMaN
  Date: 4/2/2021
  Time: 7:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
    <link rel="stylesheet" href="../CSS/style.css">
</head>
<body>
<div class="container">
    <div class="form-box">
        <!-- <div class="button-box"> -->
        <!-- <div id="btn"></div> -->
        <a href="index.html"><input type="submit" value="Log In"></a>
        <a href="register.html"><input type="submit" value="Register"></a>
        <!-- <button type="button" class="toggle-btn" onclick="login()">Log IN</button>
            <button type="button" class="toggle-btn" onclick="register()">Register</button> -->
        <!-- </div> -->
        <div class="social-icons">
            <img src="fb.png" alt="">
            <img src="tw.png" alt="">
            <img src="gp.png" alt="">
        </div>

        <form id="register" action="user?page=register" method="post">
            <input type="text" class="input-field" placeholder="Full Name" name="full_name" required>
            <input type="text" class="input-field" placeholder="User Name" name="username" required>
            <input type="text" class="input-field" placeholder="Role" name="role" required>
            <input type="password" class="input-field" placeholder="Enter Password" name="password" required>
            <input type="password" class="input-field" placeholder="Confirm Password" required>
<%--            <input type="checkbox" class="regcheck"><span>I agree terms and conditions</span>--%>
            <button type="submit" class="submit-btn">Register</button>
            <a href="user?page=index">already have a account</a>
        </form>
    </div>
</div>

</body>
</html>
