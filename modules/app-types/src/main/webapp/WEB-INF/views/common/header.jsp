<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="com.smartsms.security.SecurityUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title></title>
</head>
<body>
<div id="header_container">
    <div class="grid_18">
        <div id="topnav">
            <div class="current">
                <ul>
                    <li><a href="logout">&nbsp;Logout</a></li>

                    <li><a href="MyProfile"><%= SecurityUtil.getUserLoggedInname()%>
                    </a></li>
                    <li><a href="Home">Home</a></li>
                    <li><a href="">&nbsp;</a></li>
                    <li><a href="">&nbsp;</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div id="header" class="grid_18">
</body>
</html>