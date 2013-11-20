<%--
  Created by IntelliJ IDEA.
  User: shashi
  Date: 11/20/13
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta id="viewport" name="viewport" content="width=320; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
    <title>Alert app simulation</title>
    <link rel="stylesheet" href="resources/stylesheets/iphone.css" />
    <link rel="apple-touch-icon" href="resources/images/apple-touch-icon.png" />
    <script type="text/javascript">
        function clickclear(thisfield, defaulttext) {
            if (thisfield.value == defaulttext) {
                thisfield.value = "";
            }
        }
        function clickrecall(thisfield, defaulttext) {
            if (thisfield.value == "") {
                thisfield.value = defaulttext;
            }
        }

    </script>

    <script type="text/javascript" charset="utf-8">
        window.onload = function() {
            setTimeout(function(){window.scrollTo(0, 1);}, 100);
        }
    </script>
</head>

<body>

<div id="header">
    <h1>Service App Simulator</h1>
    <a href="home" id="backButton">Back</a>
</div>


<h1>Subscription Information</h1>

<form action="" method="post">
    <ul class="form">

        <li><input type="text" name="count" value="Number of mobile numbers to generate ? (Starting from 0777000001)" id="count" onclick="clickclear(this, 'Number of mobile numbers to generate ? (Starting from 0777000001)')" onblur="clickrecall(this,'Number of mobile numbers to generate ? (Starting from 0777000001)')"  /></li>
        <li><input type="text" name="message" value="Enter Message" id="message" onclick="clickclear(this, 'Enter Message')" onblur="clickrecall(this,'Enter Message')" /></li>
        <li><input type="text" name="shortCode" value="Enter Short Code" id="shortCode" onclick="clickclear(this, 'Enter Short Code')" onblur="clickrecall(this,'Enter Short Code')" /></li>

    </ul>

    <p><input type="submit" class="button white"  value="Subscribe"/>  </p>

</form>


</body>
</html>