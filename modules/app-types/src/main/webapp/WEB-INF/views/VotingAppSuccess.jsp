<%--
  Created by IntelliJ IDEA.
  User: Sony
  Date: 03/06/13
  Time: 9:25 PM
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
    <link rel="shortcut icon" href="smartSMS/images/fav.ico"/>
    <link rel='stylesheet' href='smartSMS/css/body.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='smartSMS/css/custom.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='smartSMS/css/login.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='smartSMS/css/tables.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='smartSMS/css/grid.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='smartSMS/css/manage.css' type='text/css' media='all'/>
    <link rel="stylesheet" href="smartSMS/css/facebox/facebox.css" media="screen" type="text/css"/>
    <link rel="stylesheet" href="smartSMS/css/image-stripping.css" media="screen" type="text/css"/>
    <link rel="stylesheet" href="smartSMS/css/ui/custom.css" media="screen" type="text/css"/>
    <link rel="stylesheet" href="smartSMS/css/dialog/jquery.alerts.css" media="screen" type="text/css"/>
    <link rel="stylesheet" href="smartSMS/css/ui-hint.css" media="screen" type="text/css"/>
    <script type="text/javascript" src="smartSMS/javascripts/facebox/jquery.js"></script>
    <script type="text/javascript" src="smartSMS/javascripts/facebox/facebox.js"></script>
    <script type="text/javascript" src="smartSMS/javascripts/application.js"></script>
    <script type="text/javascript" src="smartSMS/javascripts/addHTMLControls.js"></script>
    <script type="text/javascript" src="smartSMS/javascripts/orca_js.js"></script>
    <script type="text/javascript" src="smartSMS/javascripts/validate.js"></script>

    <script language="JavaScript" type="text/javascript" src="smartSMS/javascripts/datetime.js"></script>
    <script language="JavaScript" type="text/javascript" src="smartSMS/javascripts/jquery.bgiframe.js"></script>
    <script language="JavaScript" type="text/javascript" src="smartSMS/javascripts/dialog/jquery.alerts.js"></script>

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
    <script type="text/javascript" src="smartSMS/javascripts/header.js" language="javascript"></script>
    <div id="header2">
        <p id="tagline"><br/>
            <br/>
        </p>
        <div class="clear">&nbsp;</div>
        <form id="app" name="successAlert" action="smartSMS/create/save.html" method="post">
            <div id="body">
                <div class="grid_1 alpha">&nbsp;</div>
                <div class="grid_16">
                    <div class="clear">&nbsp;</div>
                    <div class="select_type">
                        <div class="clear">&nbsp;</div>
                        <div class="sub_heading">
                            <div class="clear">&nbsp;</div>
                            <h1 class="success_msg">Voting Application Creation Successful</h1>
                            <div style="text-align:center;" id="success_link">
                                <h3><a href="MyApplications">Use My Applications menu to mange your Applications.</a></h3>
                            </div>
                            <div class="clear">&nbsp;</div>
                            <div style="text-align:center;">
                                <h3><a href="votingHelp">Check how to use your application here...</a></h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="grid_1 omega">&nbsp;</div>
            </div>
        </form>
        <div class="clear"></div>
    </div>
</div>
<script type="text/javascript" src="smartSMS/javascripts/footer.js" language="javascript"></script>
</div>
</body>
</html>
