<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 6/8/13
  Time: 7:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
<head>
    <title>resources - SMS Based Application Management Platform</title>
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


        $(document).ready(function() {
            var editState = 'false';

            showDispatchTime();
        });

        var req = '-';
        var resformat = 'html';
        var callbackfunc = '-';

        function showDispatchTime() {
            var selectedOptionIndex = document.getElementById("duration").selectedIndex;
            var selectedOption = document.getElementById("duration").options[selectedOptionIndex].value;
            var subscriptionDispatchDateDiv = document.getElementById("subscriptionDispatchDateDiv");
            var subscriptionDispatchDayDiv = document.getElementById("subscriptionDispatchDayDiv");
            var subscriptionDispatchHourDiv = document.getElementById("subscriptionDispatchHourDiv");
            var subscriptionDispatchMinuteDiv = document.getElementById("subscriptionDispatchMinuteDiv");

            subscriptionDispatchDateDiv.style.display = 'none';
            subscriptionDispatchDayDiv.style.display = 'none';
            subscriptionDispatchHourDiv.style.display = 'none';
            subscriptionDispatchMinuteDiv.style.display = 'none';

            switch (selectedOption) {
                case 'HOUR':
                    subscriptionDispatchMinuteDiv.style.display = '';
                    break;
                case 'DAY':
                    subscriptionDispatchMinuteDiv.style.display = '';
                    subscriptionDispatchHourDiv.style.display = '';
                    break;
                case 'WEEK':
                    subscriptionDispatchMinuteDiv.style.display = '';
                    subscriptionDispatchHourDiv.style.display = '';
                    subscriptionDispatchDayDiv.style.display = '';
                    break;
                case 'MONTH':
                    subscriptionDispatchDateDiv.style.display = '';
                    subscriptionDispatchHourDiv.style.display = '';
                    subscriptionDispatchMinuteDiv.style.display = '';
                    break;
            }
        }

    </script>
    <div id="header2">
        <p id="tagline"><br/>
            <br/>
        </p>
        <div style="clear:both;">&nbsp;</div>
        <div id="body">
            <div class="sub_heading">
                <h1>Create a Contact Application</h1>
            </div>
            <div class="navi_link2"></div>
            <div style="text-align: center; font-weight:bold; width:100%"><label class="confirm">Please verify & press 'Confirm' to continue.</label></div>
            <div class="grid_1 alpha">&nbsp;</div>
            <div class="grid_16">
                <div id="dashboard-widgets-wrap">
                    <div class="metabox-holder" id="dashboard-widgets">
                        <form id="quick-press" name="appdetails" action="appDetails.html" method="post">
                            <div class="postbox" id="dashboard_quick_press">
                                <h3 class="hndle"><span>Application Details</span></h3>
                                <script type="text/javascript" src="resources/javascripts/tablesorter/viewRequest.js"></script>
                                <div class="inside">
                                    <div class="clear"></div>
                                    <h4 style="margin-top:14px;">
                                        <label for="appName">Application Name</label>
                                    </h4>
                                    <div>
                                        <div style="margin-top:19px;margin-left:8px" class="input_row">
                                            <div class="input-text-wrap">
                                                <input id="appName" name="app.appName" tabindex="10" disabled="disabled" readonly="readonly" type="text" value="Contact"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div></div>
                                    <h4>
                                        <label for="short3">Keyword Details</label>
                                    </h4>
                                    <div class="info_group">
                                        <div style="display:inline;padding-right:10px;"></div>
                                        <select id="short3" name="selectedShortCode" style="min-width:120px;width:auto; margin-left:-7px;" onchange="loadKeyword()" disabled="disabled">
                                            <option value="2545">1234</option>
                                        </select>
                                    </div>
                                    <h4>
                                        <label>Application Validity Duration</label>
                                    </h4>
                                    <label style="float:left;margin: 0.3em 0 1em 5.6em;width:100px;" for="startDate">Start date</label>
                                    <div style="width:200px;margin-left:-50px" class="input_row">
                                        <div style="color: #c00e0c;font-weight: bold;font-size: 78%;float:left;margin-left:66px;margin-top:-22px;"></div>
                                        <div style="width:130px;" class="input-text-wrap">
                                            <div>
                                                <input id="startDate" name="startDate" tabindex="15" disabled="disabled" readonly="readonly" type="text" value="10/03/2011"/>
                                            </div>
                                        </div>
                                    </div>
                                    <h4>
                                        <label>&nbsp;</label>
                                    </h4>
                                    <div>
                                        <label style="float:left;margin: 0.3em 0 1em 5.6em;width:100px;" for="endDate">End date</label>
                                        <div style="width:200px;margin-left:-50px" class="input_row">
                                            <div style="color: #c00e0c;font-weight: bold;font-size: 78%;float:left;margin-left:66px;margin-top:-22px;"></div>
                                            <div style="width:130px;" class="input-text-wrap">
                                                <div>
                                                    <input id="endDate" name="endDate" tabindex="15" disabled="disabled" readonly="readonly" type="text" value="10/04/2011"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <h4>
                                        <label for="decs">Description</label>
                                    </h4>
                                    <div style="margin-left:8px" class="input_row">
                                        <div class="textarea-wrap">
                                            <textarea id="decs" name="app.description" disabled="disabled" readonly="readonly">First Alert Application</textarea>
                                        </div>

                                    </div>
                                    <h4>
                                        <label for="decs2">Response Message</label>
                                    </h4>
                                    <div style="margin-left:8px" class="input_row">
                                        <div class="textarea-wrap">
                                            <textarea id="app.description" name="app.description2" disabled="disabled" readonly="readonly"></textarea>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <div class="clear"></div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </form>
                        <form id="app" name="confirmAlert" action="save.html" method="post">
                            <div style="text-align:center; width:100%"><span style="padding-right:10px">
                  <input onclick="location.href='serviceAppStep1.html';" name="back" style="width:50px;" tabindex="5" type="button" class="button" value="Back" id="back"/>
                  </span><span style="padding-right:10px">
                  <input onclick="location.href='contactAppSuccess.html';" name="next" style="width:50px;" tabindex="6" type="button" class="button" value="Confirm" id="next"/>
                  </span><span>
                  <input onclick="location.href='appTypeSelection.html';" name="cancel" style="width:50px;" tabindex="6" type="button" class="button" value="Cancel" id="cancel"/>
                  </span></div>
                            <div class="clear">&nbsp;</div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="grid_1 omega">&nbsp;</div>
        </div>
    </div>
</div>
<script type="text/javascript" src="resources/javascripts/footer.js" language="javascript"></script>
</div>
</body>
</html>