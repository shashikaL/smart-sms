<%--
  Created by IntelliJ IDEA.
  User: snej
  Date: 6/8/13
  Time: 7:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

    <%--<script type="text/javascript" src="resources/javascripts/header.js" language="javascript"></script>--%>
    <jsp:include page="common/header.jsp"/>
    <div id="header2">
        <p id="tagline"><br/>
            <br/>
        </p>
        <div class="clear">&nbsp;</div>
        <div id="body">
            <div class="sub_heading">
                <h1>User Guide</h1>
            </div>
            <div style="height:1px;" class="clear">&nbsp;</div>
            <div class="grid_1 alpha">&nbsp;</div>
            <div class="grid_16">
                <div id="dashboard-widgets-wrap">
                    <div class="metabox-holder" id="dashboard-widgets">
                        <div class="postbox " id="dashboard_quick_press">
                            <h3 class="hndle"><span>Application Quick User Guide</span></h3>
                            <div class="inside">
                                <form id="quick-press" action="home.html" method="post">
                                    <div style="margin-top:12px;">&nbsp;</div>
                                    <ul>
                                        <li>User who will subscribe to this application have to send SMS, type REG &lt;KEYWORD&gt; and SEND to &lt;SHORT_CODE&gt;</li>
                                        <li>To unsubscribe, type UNREG &lt;KEYWORD&gt; and send to &lt;SHORT_CODE&gt;</li>
                                    </ul>
                                    <div class="clear">&nbsp;</div>
                                    <div class="clear">&nbsp;</div>
                                    <div class="clear"></div>
                                    <h4>
                                        <label>&nbsp;</label>
                                    </h4>
                                    <div class="info_group"><span style="margin-left:-10px" class="button_left">
                      <input onclick="location.href='MyApplications';" name="back" type="button" class="button" value="OK" id="ok">
                                        </input>
                      </span></div>
                                </form>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <div class="clear"></div>
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