<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
<head>
    <title>SmartSMS - Login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name='robots' content='noindex,nofollow'/>
    <link rel="shortcut icon" href="resources/images/fav.ico"/>
    <link rel='stylesheet' href='resources/css/body.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='resources/css/login.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='resources/css/custom.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='resources/css/tables.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='resources/css/grid.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='resources/css/manage.css' type='text/css' media='all'/>
    <link rel="stylesheet" href="resources/css/facebox/facebox.css" media="screen" type="text/css"/>
    <link rel="stylesheet" href="resources/css/image-stripping.css" media="screen" type="text/css"/>
    <link rel="stylesheet" href="resources/css/ui/custom.css" media="screen" type="text/css"/>
    <link rel="stylesheet" href="resources/css/dialog/jquery.alerts.css" media="screen" type="text/css"/>
    <link rel="stylesheet" href="resources/css/ui-hint.css" media="screen" type="text/css"/>
    <script type="text/javascript" src="resources/javascripts/facebox/jquery.js"></script>
    <script type="text/javascript" src="resources/javascripts/facebox/facebox.js"></script>
    <script type="text/javascript" src="resources/javascripts/application.js"></script>
    <script type="text/javascript" src="resources/javascripts/addHTMLControls.js"></script>
    <script type="text/javascript" src="resources/javascripts/orca_js.js"></script>
    <script type="text/javascript" src="resources/javascripts/validate.js"></script>
    <!-- <script type="text/javascript">
                jQuery(document).ready(function($) {
                    $('a[rel*=facebox]').facebox();
                });
            </script> -->

    <script language="JavaScript" type="text/javascript" src="resources/javascripts/jquery.bgiframe.js"></script>
    <script language="JavaScript" type="text/javascript" src="resources/javascripts/dialog/jquery.alerts.js"></script>


    <script src="styleswitch.js" type="text/javascript">

    </script>
</head>
<body>
<div id="container" class="container_18">
    <script type="text/javascript">
        function logoutConfirm(url) {
            var logOutTxt = 'Do you really want to logout??';
            jConfirm(logOutTxt, 'Confirmation Dialog', function (r) {
                if (r == true) {
                    window.location = url;
                }
            });
        }
    </script>

    <div id="topnav">
        <div class="current">
            <ul>
                <li><a href="?locale=en">&nbsp;</a></li>
            </ul>
        </div>
    </div>
    <![if !IE]>
    <div id="header" class="grid_18">
        <![endif]>

        <div id="header" class="grid_18">


            <script type="text/javascript">

                function submitForm() {
                    document.forms[1].submit();

                }
            </script>
            <script type="text/javascript" src="javascripts/passwordFieldValidator.js"></script>
            <div id="popup-terms" style="display:none;">
                <div id="body" style="width:auto;height:auto;">
                    <div class="wrap">
                        <div id="dashboard-widgets-wrap">
                            <div id='dashboard-widgets' class='metabox-holder' style="width:420px">
                                <div id="dashboard_quick_press" class="postbox ">
                                    <h3 class='hndle'><span>Forgot Password</span></h3>

                                    <div class="inside" style="margin:5px; max-height:430px;overflow:auto;">
                                        <div class="clear">&nbsp;</div>
                                        <div style="text-align:center;">
                                            <form id="signin" action="home.html" method="post" onsubmit="isEmptyForm()">
                                                <div class="input_row3">
                                                    <label for="UserName">Username</label>
                                                </div>
                                                <div class="input_row">
                                                    <div class="error-req" id="errorUsername"></div>
                                                    <div class="input-text-wrap">
                                                        <input id="UserName" name="username" type="text" value=""/>
                                                    </div>
                                                </div>
                                                <div class="input_row3">
                                                    <label for="Email">E-mail</label>
                                                </div>
                                                <div class="input_row">
                                                    <div class="error-req" id="errorEmail"></div>
                                                    <div class="input-text-wrap">
                                                        <input id="Email" name="email" type="text" value=""/>
                                                    </div>
                                                </div>
                                                <div class="input_row5">
                                                    <div id="emailhint" style="font-size:10px;float:left;">Reset
                                                        Password will be sent to your account
                                                    </div>
                                                </div>
                                                <div class="input_row4">
                                                    <input name="ok" style="width:50px" type="submit" class="button"
                                                           value="Submit" id="ok"/>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clear">&nbsp;</div>
                        </div>
                    </div>
                    <!-- wrap -->
                    <div class="clear"></div>
                </div>
            </div>
            <script type="text/javascript">
                //var count=0;


                function formreset() {
                    document.getElementById("UserName").value = "";
                    document.getElementById("Email").value = "";
                    document.getElementById("errorUsername").style.display = "none";
                    document.getElementById("errorEmail").style.display = "none";
                    showPopup();
                }


                function showPopup() {
                    document.getElementById("popup-terms").style.display = "block";
                    jQuery.facebox(jQuery("#popup-terms"));
                }
            </script>
            <div id="header_login">
                <p id="tagline"><br/>
                    <br/>
                </p>

                <div class="clear">&nbsp;</div>
                <div class="header_login_content">
                    <div class="clear">&nbsp;</div>
                    <div class="grid_1 alpha">&nbsp;</div>
                    <div class="grid_8" id="welcome"></div>
                    <div class="grid_8"><a href='Register'>
                        <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Create New Account</div>
                    </a>
                    </div>
                    <div class="grid_1 omega" id="createAcc">&nbsp;</div>
                    <div class="clear">&nbsp;</div>
                    <div class="grid_1 alpha">&nbsp;</div>
                    <div class="grid_4 alpha">&nbsp;</div>
                    <script type="text/javascript">
                        function hideErrorMsg() {
                            $("#login_error").hide("slow");
                        }
                    </script>
                    <div class="grid_8">
                        <div id="right_pane">
                            <div id="login">
                                <form action="Home" id="loginform" name="login">
                                    <p>
                                        <label>Username<br/>
                                            <input onclick="hideErrorMsg()" name="j_username" tabindex="1" type="text"
                                                   class="input" id="j_username"/>
                                        </label>
                                    </p>

                                    <p>
                                        <label>Password<br/>
                                            <input type="password" onfocus="hideErrorMsg()" name="j_password"
                                                   id="j_password"
                                                   class="input" size="20"
                                                   tabindex="2"/>
                                        </label>
                                    </p>

                                    <p>
                                        <input type='checkbox'/>
                                        <label for="rememberMe">Remember me</label>
                                    </p>
                                    </br>
                                    <p>
                                        <label>Login with&nbsp;</label>
                                        <a href="<c:out value="${facebookUrl}"/>">
                                            <img src="resources/images/facebook.png"/>&nbsp;</a>

                                        <a href="<c:out value="${twitterUrl}"/>">
                                            <img src="resources/images/twitter.png"/>&nbsp;</a>

                                        <a href="Home">
                                            <img src="resources/images/linkedin.png"/>&nbsp;</a>
                                    </p>

                                    <p class="submit">
                                        <input class="submit_button" type="submit" name="login" id="submit" tabindex="4"
                                               value="Log In"/>
                                    </p>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="grid_1 omega">&nbsp;</div>
                    <div class="clear">&nbsp;</div>
                </div>
                <div class="clear">&nbsp;</div>
            </div>
            <script type="text/javascript">

                try {
                    document.getElementById('j_username').focus();
                } catch (e) {
                }


            </script>
        </div>
        <script type="text/javascript" src="resources/javascripts/footer.js" language="javascript"></script>
    </div>
</body>
</html>