<%--
  Created by IntelliJ IDEA.
  User: Shashi
  Date: 6/1/13
  Time: 3:52 PM
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
    <script type="text/javascript">
        $(document).ready(function(){
            if(window.location.hash){
                var newUrl = window.location.toString();
                newUrl = newUrl.replace('#','?');
                newUrl = newUrl.replace('Home','social-connections/facebook');
                window.location.assign(newUrl)
            }

        });
        </script>


</head>
<body>
<div id="container" class="container_18">
    <script type="text/javascript">
        function logoutConfirm() {
            var logOutTxt = 'Do you really want to logout??';
            jConfirm(logOutTxt, 'Confirmation Dialog', function(r) {
                if(r == true) {
                    window.location = url;
                }
            });
        }
    </script>
    <%--<script type="text/javascript" src="resources/javascripts/header.js" language="javascript"></script>--%>
    <jsp:include page="common/header.jsp"/>
    <script type="text/javascript">
        function submitForm() {
            document.forms[1].submit();
        }

    </script>
    <div id="popup-terms" style="display:none;">
        <div id="body" style="width:auto;height:auto;">
            <div class="wrap">
                <div id="dashboard-widgets-wrap">
                    <div id='dashboard-widgets' class='metabox-holder' style="width:550px">
                        <div id="dashboard_quick_press" class="postbox ">
                            <h3 class='hndle'><span>Verify Your Account </span></h3>
                            <div class="inside" style="margin:20px; max-height:400px;overflow:auto;">
                                <div> <br/>
                                    <p>You have not verified your account!<br>
                                        <br>
                                    </p>
                                    <p>
                                    <p> Your Verification Code is&nbsp; </p>
                                    <p> Text "verify&nbsp;
                                        " to "7777
                                        " to activate your account. </p>
                                </div>
                                <div class="clear">&nbsp;</div>
                                <div style="text-align:center;">
                                    <form action="#" name="validateVerification">
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
        //    document.getElementById("popup-terms").style.display = "none";
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
//            $('#body').fadeIn(0);
            var loadVerificationStatus = 'true';
            displayMenu(loadVerificationStatus);
            if (loadVerificationStatus == 'false') {
                setInterval(validateVerificationCodeForMenu, 5000);
            }
        });

        function validateVerificationCodeForMenu() {
            var name = '62811123456789';
            var url = 'ajaxLoaderValidateRegistration/' + name + '.html';
            jQuery.get(url, function(data) {
                var verificationStatus = data.getElementsByTagName("verification-status");
                displayMenu(getNodeValue(verificationStatus[0]));
            });
        }

        function validateVerificationCode() {
            var name = '62811123456789';
            var url = 'ajaxLoaderValidateRegistration/' + name + '.html';
            jQuery.get(url, function(data) {
                parseVerificationStatus(data);
                var verificationStatus = data.getElementsByTagName("verification-status");
                displayMenu(getNodeValue(verificationStatus[0]));
            });
        }

        function parseVerificationStatus(data) {
            var verificationStatus = data.getElementsByTagName("verification-status");
            if (getNodeValue(verificationStatus[0]) == 'true') {
                window.location = "create/type/SMS.html";
            } else {
                showPopup();
            }
        }

        function showPopup() {
            document.getElementById("popup-terms").style.display = "block";
            jQuery.facebox(jQuery("#popup-terms"));
        }

        function displayMenu(status){
            var menu3 = document.getElementById("menu3");
            var menu4 = document.getElementById("menu4");
            var menu5 = document.getElementById("menu5");
            var menu6 = document.getElementById("menu6");

            if (status == 'false') {
                menu3.style.display='none';
                menu4.style.display='none';
                menu5.style.display='';
                menu6.style.display='';

            } else {
                menu5.style.display='none';
                menu6.style.display='none';
                menu3.style.display='';
                menu4.style.display='';
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
            <div id="body">
                <div class="select_type">
                    <div class="sub_heading">
                        <h1>&nbsp;</h1>
                    </div>
                    <div id="select_type">
                        <form id="registration" name="confirmVerification" action="mock UIs/home.html" method="post">
                            <ul style="padding-right:100px">
                                <li id="create">
                                    <div id="menu1">
                                        <ul>
                                            <li class="first"><a href="AppTypeSelection" title="Create Application" >
                                                <div class="menu_title">Create Application&nbsp;</div>
                                            </a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li id="edit">
                                    <div id="menu2">
                                        <ul>
                                            <li class="last"><a href="mySettings.html" title="Settings">
                                                <div class="menu_title">Settings&nbsp;</div>
                                            </a></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                            <ul>
                                <li id="prof">
                                    <div id="menu3">
                                        <ul>
                                            <li class="first"><a href="myApplication.html" title="My Applications">
                                                <div class="menu_title">My Applications&nbsp;</div>
                                            </a></li>
                                        </ul>
                                    </div>
                                    <div style="display:none;" id="menu5">
                                        <ul>
                                            <li class="first"><a href="#" title="My Applications"><span class="middle">Please verify your account to use this feature&nbsp;</span>
                                                <div class="menu_title">My Applications&nbsp;</div>
                                            </a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li id="reports">
                                    <div id="menu4">
                                        <ul>
                                            <li class="last"><a href="selectReportType.html" title="View Reports">
                                                <div class="menu_title">View Reports&nbsp;</div>
                                            </a></li>
                                        </ul>
                                    </div>
                                    <div style="display:none;" id="menu6">
                                        <ul>
                                            <li class="last"><a href="#" title="View Reports"><span class="middle">Please verify your account to use this feature&nbsp;</span>
                                                <div class="menu_title">View Reports&nbsp;</div>
                                            </a></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                            <div class="clear"></div>
                        </form>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="grid_1 omega">&nbsp;</div>
        <div class="clear"></div>
    </div>
</div>
<script type="text/javascript" src="resources/javascripts/footer.js" language="javascript"></script>
</div>
</body>
</html>
