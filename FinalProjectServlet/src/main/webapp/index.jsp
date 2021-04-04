<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>

<body>

<div class="container">
    <div class="form-box">
<%--        <div class="button-box">--%>
<%--            <div id="btn"></div>--%>
<%--            <button type="button" class="toggle-btn" onclick="login()">Log IN</button>--%>
<%--            <button type="button" class="toggle-btn" onclick="register()">Register</button>--%>
<%--        </div>--%>
        <div class="social-icons">
            <img src="resources/icon/fb.png" alt="">
            <img src="resources/icon/tw.png" alt="">
            <img src="resources/icon/gp.png" alt="">
        </div>
        <input type="hidden" name="page" value="login">
        <form id="login" class="input-group" action="user" method="post">
            <input type="text" class="input-field" placeholder="User Name" required>
            <input type="password" class="input-field" placeholder="Enter Password" required>
            <input type="checkbox" class="chech-box">
            <span>Remember Password</span>
            <button type="submit" class="submit-btn">Log in</button>
            <a href="user?page=newUser">register</a>
<%--            user is from action--%>
        </form>

<%--        --%>
<%--        <form id="register" class="input-group" action="register" method="post">--%>
<%--            <input type="text" class="input-field" placeholder="Full Name" name="full_name" required>--%>
<%--            <input type="text" class="input-field" placeholder="User Name" name="username" required>--%>
<%--            <input type="text" class="input-field" placeholder="Role" name="role" required>--%>
<%--            <input type="password" class="input-field" placeholder="Enter Password" name="password" required>--%>
<%--            <input type="password" class="input-field" placeholder="Confirm Password" name="cpass" required>--%>
<%--            <input type="checkbox" class="chech-box">--%>
<%--            <span>I agree terms and conditions</span>--%>
<%--            <button type="submit" class="submit-btn">Register</button>--%>
<%--        </form>--%>
    </div>
</div>
<%--<script>--%>
<%--    var x = document.getElementById("login");--%>
<%--    var y = document.getElementById("register");--%>
<%--    var z = document.getElementById("btn");--%>

<%--    function register() {--%>
<%--        x.style.left = "-400px";--%>
<%--        y.style.left = "50px";--%>
<%--        z.style.left = "110px";--%>
<%--    }--%>

<%--    function login() {--%>
<%--        x.style.left = "50px";--%>
<%--        y.style.left = "450px";--%>
<%--        z.style.left = "0";--%>
<%--    }--%>
<%--</script>--%>
</body>

</html>