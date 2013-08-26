
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta id="viewport" name="viewport" content="width=320; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
    <title>Response</title>
    <link rel="stylesheet" href="resources/stylesheets/iphone.css" />
    <link rel="apple-touch-icon" href="resources/images/apple-touch-icon.png" />
    <script type="text/javascript" charset="utf-8">
        window.onload = function() {
            setTimeout(function(){window.scrollTo(0, 1);}, 100);
        }
    </script>
</head>

<body>

<div id="header">
    <h1>Response</h1>
    <a href="app-type-select" id="backButton">Home</a>
</div>

<h1>Application Response</h1>

<ul class="data">
    <li><p><c:out value="${message}"/> </p> </li>
    <li><p><c:out value="${code}"/> </p> </li>

</ul>





</body>
</html>