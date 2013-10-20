<%--
  Created by IntelliJ IDEA.
  User: shashi
  Date: 8/30/13
  Time: 12:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
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
    <script type="text/javascript" src="resources/javascripts/ui/jquery-ui-1.7.2.custom.min.js"></script>
    <div id="header2">
        <p id="tagline"><br/>
            <br/>
        </p>
        <div style="clear:both;">&nbsp;</div>
        <div id="body">
            <div class="sub_heading">
                <h1>View Vote Application</h1>
            </div>
            <div class="clear"></div>
            <div class="grid_1 alpha">&nbsp;</div>
            <div class="grid_16">
                <div id="dashboard-widgets-wrap">
                    <div class="metabox-holder" id="dashboard-widgets">
                        <div class="postbox" id="dashboard_quick_press">
                            <form id="viewApp" action="resources/reports/viewReport/voti_3010.html" method="post">
                                <div class="inside">
                                    <div id="tabs">
                                        <ul style="padding-bottom:32px">
                                            <li><a href="#usage" id="usageLink">Usage</a></li>
                                            <li><a href="#test" id="chartLink">Charts</a></li>
                                            <li><a href="#setting" id="settingLink">Settings</a></li>
                                        </ul>
                                        <div id="usage">
                                            <div class="clear">&nbsp;</div>
                                            <table style="border: solid 1px #A8B2BD;" class="report_table_header">
                                                <tr>
                                                    <th><div style="padding-left:10px" align="left">Voting Summary</div></th>
                                                </tr>
                                            </table>
                                            <table style="border: solid 1px #A8B2BD;" class="report_table">
                                                <tr>
                                                    <td><div align="left">Total Votes&nbsp;:</div></td>
                                                    <td><div style="padding-left:5px" align="left"><c:out value="${totalNumberOfVotes}"/></div></td>
                                                </tr>
                                                <tr>
                                                    <td><div align="left">Total Successful Votes&nbsp;:</div></td>
                                                    <td><div style="padding-left:5px" align="left"><c:out value="${totalNumberOfVotes}"/></div></td>
                                                </tr>
                                                <tr>
                                                    <td><div align="left">Total Invalid Votes&nbsp;:</div></td>
                                                    <td><div style="padding-left:5px" align="left">0</div></td>
                                                </tr>
                                            </table>
                                            <div class="clear">&nbsp;</div>
                                            <div class="clear">&nbsp;</div>
                                            <table class="report_table_header">
                                                <tr>
                                                    <th><div align="center">Candidate Code</div></th>
                                                    <th><div align="center">Description</div></th>
                                                    <th><div align="center">Number of votes</div></th>
                                                </tr>
                                                <c:forEach items="${candidateList}" var="candidate">
                                                    <tr>
                                                        <td style="padding-left:5px"><div align="center"><c:out value="${candidate.code}"/></div></td>
                                                        <td style="word-wrap: break-word; padding-left:5px"><div align="center"><c:out value="${candidate.description}"/></div></td>
                                                        <td style="padding-left:5px"><div align="center"><c:out value="${candidate.count}"/></div></td>
                                                    </tr>
                                                </c:forEach>

                                            </table>
                                            <table class="report_table">
                                                <tr>
                                                    <td style="background-color: #fff;text-align: right;color: #8394A4" colspan="6">&nbsp;</td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div id="test">
                                            <iframe height="582" width="100%" src="voti_3010.html">
                                                <p>Your browser does not support iframes.</p>
                                            </iframe>
                                        </div>
                                        <div>
                                            <div id="setting">
                                                <h4>
                                                    <label for="appname">Application Name</label>
                                                </h4>
                                                <div class="info_group_dis">Voting</div>

                                                <h4>
                                                    <label for="keyword">Keyword Details</label>
                                                </h4>
                                                <div class="info_group">
                                                    <div style="display:inline"><label style="float:left;margin: 0 0 0 0;width:75px;" class="pointer" for="startDate">Keyword</label></div>
                                                    <select id="short3" name="selectedShortCode" style="min-width:120px;width:auto; margin-left:-7px;" onchange="loadKeyword()" disabled="disabled">
                                                        <option value="1234">1234</option>
                                                    </select>
                                                </div>
                                                <h4>
                                                    <label for="short3">Application Validity Duration&nbsp;</label>
                                                </h4>
                                                   
                                                <div class="info_group_dis"><span>from:</span>&nbsp;10/03/2013&nbsp;&nbsp;&nbsp;<span>to:</span>&nbsp;10/04/2013&nbsp;&nbsp;</div>
                                                <h4>
                                                    <label for="short3">Keyword Expired Date</label>
                                                </h4>
                                                <div class="info_group_dis">10/04/2013</div>
                                                <h4>
                                                    <label for="desc">Description</label>
                                                </h4>
                                                <div style="word-wrap: break-word;" class="info_group_dis">First Voting Application</div>
                                                <div class="clear">&nbsp;</div>
                                            </div>
                                            <div class="clear">&nbsp;</div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                <span>
                <input onclick="location.href='myApplication.html'" name="back" style="margin-top:20px;margin-left:25px" type="button" class="button" value="Back"/>
                </span>
                            <div class="clear">&nbsp;</div>
                            <script type="text/javascript">
                                function updateLink(base) {
                                    var url_ind = $('#indunisian_anchor').attr('href');
                                    var url_eng = $('#english_anchor').attr('href');

                                    var hash_location_ind = url_ind.indexOf("#");
                                    if (hash_location_ind != -1) {
                                        url_ind = url_ind.substr(0, hash_location_ind)
                                        url_eng = url_eng.substr(0, hash_location_ind)
                                    }
                                    url_ind = url_ind + base;
                                    url_eng = url_eng + base;

                                    $('#indunisian_anchor').attr('href', url_ind);
                                    $('#english_anchor').attr('href', url_eng)
                                }

                                jQuery(document).ready(function($) {
                                    $('#tabs').tabs();
                                    $('#usageLink').click(function () {updateLink('#usage')});
                                    $('#chartLink').click(function () {updateLink('#test')});
                                    $('#settingLink').click(function () {updateLink('#setting')});
                                });
                            </script>
                        </div>
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