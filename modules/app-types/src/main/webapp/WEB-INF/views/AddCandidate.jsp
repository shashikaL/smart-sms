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

    <script language="JavaScript" type="text/javascript" src="/smartSMS/javascripts/datetime.js"></script>
    <script language="JavaScript" type="text/javascript" src="/smartSMS/javascripts/jquery.bgiframe.js"></script>
    <script language="JavaScript" type="text/javascript" src="/smartSMS/javascripts/dialog/jquery.alerts.js"></script>
    <!--[if lte IE 7]>
    <link rel='stylesheet' id='ie-css' href='/soltura/css/ie.css' type='text/css'
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
    <script type="text/javascript" src="smartSMS/javascripts/header.js" language="javascript"></script>
    <div id="header2">
        <p id="tagline"><br/>
            <br/>
        </p>
        <div style="clear:both;">&nbsp;</div>
        <div id="body">
            <div class="sub_heading">
                <h1>Add Candidates</h1>
            </div>
            <div class="navi_link4"></div>
            <div class="clear"></div>
            <div class="grid_1 alpha">&nbsp;</div>
            <div class="grid_16">
                <div id="dashboard-widgets-wrap">
                    <div class="metabox-holder" id="dashboard-widgets">
                        <div class="postbox" id="dashboard_quick_press">
                            <h3 class="hndle">&nbsp;</h3>
                            <div class="inside">Candidate Code
                                <form id="form1" name="form1" method="post" action="">
                                    <label>
                                        <input type="text" name="CanCode" id="CanCode" />
                                    </label>
                                </form>
                                <div class="clear">&nbsp;Description </div>
                                <div class="clear">
                                    <form id="form2" name="form2" method="post" action="">
                                        <p>
                                            <label>
                                                <input type="text" name="Description" id="Description" />
                                            </label>
                                        </p>
                                    </form>
                                    <form id="form3" name="form3" method="post" action="">
                                        <label>
                                            <input type="submit" name="AddCandidate" id="AddCandidate" value="Add New Candidate" />
                                        </label>
                                    </form>
                                    <p>&nbsp;</p>
                                    <table width="200" border="10" align="center">
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                    <p>&nbsp;</p>
                                </div>
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
<script type="text/javascript" src="smartSMS/javascripts/footer.js" language="javascript"></script>
</div>
</body>
</html>
