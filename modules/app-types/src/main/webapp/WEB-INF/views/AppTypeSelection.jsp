<%--
  Created by IntelliJ IDEA.
  User: Shashi
  Date: 6/9/13
  Time: 3:50 PM
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

    <script language="JavaScript" type="text/javascript" src="/resources/javascripts/datetime.js"></script>
    <script language="JavaScript" type="text/javascript" src="/resources/javascripts/jquery.bgiframe.js"></script>
    <script language="JavaScript" type="text/javascript" src="/resources/javascripts/dialog/jquery.alerts.js"></script>
    <!--[if lte IE 7]>
    <link rel='stylesheet' id='ie-css' href='/resources/css/ie.css' type='text/css'
          media='all'/>
    <![endif]-->
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
    <div id="header2">
        <p id="tagline"><br/>
            <br/>
        </p>
        <div style="clear:both;">&nbsp;</div>
        <div id="body">
            <div class="sub_heading">
                <h1>Create New Application</h1>
            </div>
            <div class="navi_link4"></div>
            <div class="clear"></div>
            <div class="grid_1 alpha">&nbsp;</div>
            <div class="grid_16">
                <div id="dashboard-widgets-wrap">
                    <div class="metabox-holder" id="dashboard-widgets">
                        <div class="postbox" id="dashboard_quick_press">
                            <h3 class="hndle"><span>Select an Application Category </span></h3>
                            <div class="inside">
                                <form action="" id="quick-press" name="post">
                                    <div class="clear">&nbsp;</div>

                                    <div style="width:50%;float:left;">
                                        <div class="clear">&nbsp;</div>
                                        <div id="home_image">
                                            <div class="app_image">


                                                <div id="menu_voting">
                                                    <ul>
                                                        <li><a href="VotingAppCreate" title="Voting">&nbsp;</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div style="padding-right:5px" class="app_text">
                                                <div style="padding-bottom:10px; padding-top:15px" class="bold_text">Voting</div>
                                                <div class="normal_text">Create a Voting Application</div>
                                            </div>
                                        </div>


                                        <div id="home_image">
                                            <div class="clear">&nbsp;</div>
                                            <div class="app_image">


                                                <div id="menu_channel">
                                                    <ul>
                                                        <li class="first"><a href="ServiceApp_step1" title="Channels">&nbsp;</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="app_text">
                                                <div style="padding-bottom:10px; padding-top:15px" class="bold_text">Services</div>
                                                <div class="normal_text">Create a Service Application</div>
                                            </div>
                                        </div>


                                    </div>


                                    <div style="width:50%;float:left;">
                                        <div class="clear">&nbsp;</div>
                                        <div id="home_image">
                                            <div class="app_image">


                                                <div id="menu_alert">
                                                    <ul>
                                                        <li class="first"><a href="AlertAppCreate" title="Alert">&nbsp;</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="app_text">
                                                <div style="padding-bottom:10px; padding-top:15px" class="bold_text">Alert</div>
                                                <div class="normal_text">Create an Alert Application</div>
                                            </div>
                                        </div>




                                        <div id="home_image">
                                            <div class="clear">&nbsp;</div>
                                            <div class="app_image">


                                                <div id="menu_req">
                                                    <ul>
                                                        <li class="first"><a href="ContactAppCreate" title="Request">&nbsp;</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="app_text">
                                                <div style="padding-bottom:10px; padding-top:15px" class="bold_text">Contact</div>
                                                <div class="normal_text">Create a Contact Application</div>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="clear"></div>
                                    <div class="advanced_config_section" id="advanced_config_section"></div>
                                </form>
                                <div class="clear">&nbsp;</div>
                                <div class="clear">&nbsp;</div>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </div>
            <span>
            <input onclick="location.href='home.html';" name="back" type="button" class="button" value="Back" id="back"/>
            </span>
                        <div class="clear">&nbsp;</div>
                    </div>
                </div>
            </div>
            <div class="grid_1 omega">&nbsp;</div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<script type="text/javascript" src="resources/javascripts/footer.js" language="javascript"></script>
</div>
</body>
</html>
