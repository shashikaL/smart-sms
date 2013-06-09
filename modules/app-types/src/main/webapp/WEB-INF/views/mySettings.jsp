<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 6/9/13
  Time: 6:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
<head>
    <title>SmartSMS - SMS Based Application Management Platform</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name='robots' content='noindex,nofollow'/>
    <link rel="shortcut icon" href="resources/images/fav.ico"/>
    <link rel='stylesheet' href='resources/css/body.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='resources/css/custom.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='resources/css/login.css' type='text/css' media='all'/>
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

    <script language="JavaScript" type="text/javascript" src="resources/javascripts/datetime.js"></script>
    <script language="JavaScript" type="text/javascript" src="resources/javascripts/jquery.bgiframe.js"></script>
    <script language="JavaScript" type="text/javascript" src="resources/javascripts/dialog/jquery.alerts.js"></script>

</head>
<body>
<div id="container" class="container_18">
    <script type="text/javascript">
        function logoutConfirm(url) {
            var logOutTxt = 'Do you really want to logout??';
            jConfirm(logOutTxt, 'Confirmation Dialog', function(r) {
                if(r == true) {
                    window.location = url;
                }
            });
        }
    </script>
    <script type="text/javascript" src="resources/javascripts/header.js" language="javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $('#body').fadeIn(0);
            var loadVerificationStatus = 'true';
            displaySettingsMenu(loadVerificationStatus);
            if (loadVerificationStatus == 'false') {
                setInterval(validateVerificationCodeForMenu, 5000);
            }
        });

        function validateVerificationCodeForMenu() {
            var name = '62811123456789';
            var url = '../ajaxLoaderValidateRegistration/' + name + '.html';
            jQuery.get(url, function(data) {
                var verificationStatus = data.getElementsByTagName("verification-status");
                displaySettingsMenu(getNodeValue(verificationStatus[0]));
            });
        }

        function displaySettingsMenu(status){
            var setting3 = document.getElementById("setting3");
            var setting5 = document.getElementById("setting5");

            if (status == 'false') {
                setting3.style.display='none';
                setting5.style.display='';

            } else {
                setting5.style.display='none';
                setting3.style.display='';
            }
        }
    </script>
    <div id="header2">
        <p id="tagline"><br/>
            <br/>
        </p>
        <div class="clear">&nbsp;</div>
        <div class="grid_1 alpha">&nbsp;</div>
        <div class="grid_16">
            <div style="display:none;" id="body">
                <div class="select_type">
                    <div class="sub_heading">
                        <h1>Settings</h1>
                    </div>
                    <div id="select_type">
                        <form id="registration" name="mySetting" action="resources/settings/mySettings.html" method="post">
                            <ul style="padding-right:100px">
                                <li id="create">
                                    <div id="setting1">
                                        <ul>
                                            <li class="first"><a href="myProfile.html" title="My Profile">
                                                <div class="menu_title">My Profile</div>
                                            </a></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                            <ul>
                                <li id="prof">
                                    <div id="setting3">
                                        <ul>
                                            <li class="last"><a href="keywordSetting.html" title="Keyword Settings">
                                                <div class="menu_title">Keywords</div>
                                            </a></li>
                                        </ul>
                                    </div>
                                    <div style="display:none;" id="setting5">
                                        <ul>
                                            <li class="last"><a href="#" title="Keyword Settings"><span class="middle">Please verify your account to use this feature&nbsp;</span>
                                                <div class="menu_title">Keywords</div>
                                            </a></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                            <div class="clear">&nbsp;</div>
                            <div class="clear"></div>
                        </form>
                    </div>
                </div>
        <span style="padding-left:10px">
        <input onclick="location.href='home.html';" name="back" type="button" class="button" value="Back" id="back"/>
        </span>
                <div class="clear"></div>
            </div>
        </div>
        <div class="grid_1 omega">&nbsp;</div>
        <div class="clear">&nbsp;</div>
        <div class="clear"></div>
    </div>
</div>
<script type="text/javascript" src="resources/javascripts/footer.js" language="javascript"></script>
</div>
</body>
</html>