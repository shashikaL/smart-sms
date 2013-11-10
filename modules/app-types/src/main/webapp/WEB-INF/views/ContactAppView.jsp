<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 8/18/13
  Time: 4:29 PM
  To change this template use File | Settings | File Templates.
--%>
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
    <!--[if lte IE 7]>
    <link rel='stylesheet' id='ie-css' href='/css/ie.css' type='text/css'
          media='all'/>
    <![endif]-->





</head>
<body>
<p>&nbsp;</p>
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

    function show() {
        setTimeout("showPopup()", 10);
    }
</script>
<jsp:include page="common/header.jsp"/>
<div id="popup-terms" style="display:none;">
    <div id="body" style="width:auto;height:auto;">
        <div class="wrap">
            <div id="dashboard-widgets-wrap">
                <div id='dashboard-widgets' class='metabox-holder' style="width:550px">
                    <div id="dashboard_quick_press" class="postbox ">
                        <form action="" method="post">
                            <h3 class='hndle'><span>Reply Message</span></h3>
                            <div class="inside" style="margin:20px; max-height:400px;overflow:auto;">
                                <div>

                                    <div style="width:400px;">
                                        <div style="width:200px; float:left">
                                            Message
                                        </div>
                                        <div style="width:200px; float:right">
                                            <textarea name="messageArea" rows="3" cols="30"></textarea>
                                        </div>
                                    </div>

                                    <br>
                                </div>
                            </div>
                            <input type="submit" value="Send Message" />

                        </form>

                    </div>
                </div>
            </div>
            <div style="text-align:center;">
                <form action="" name="agreementForm" method="post">
              <span>
              <%--<input name="ok" style="width:50px;" type="submit" class="button" value="Send" id="ok"/>--%>
              </span>
                </form>
            </div>
        </div>
        <!-- wrap -->
        <div class="clear"></div>
    </div>
</div>


<script type="text/javascript" src="resources/javascripts/ui/jquery-ui-1.7.2.custom.min.js"></script>
<div id="header2">
    <p id="tagline"><br/>
        <br/>
    </p>
    <div style="clear:both;">&nbsp;</div>
    <div id="body">
        <div class="sub_heading">
            <h1>View Request Application</h1>
        </div>
        <div class="clear"></div>
        <div class="grid_1 alpha">&nbsp;</div>
        <div class="grid_16">
            <div id="dashboard-widgets-wrap">
                <div class="metabox-holder" id="dashboard-widgets">
                    <div class="postbox" id="dashboard_quick_press">
                        <form id="viewApp" action="resources/reports/viewReport/requ_9289.html" method="post">
                            <div class="inside">
                                <div id="tabs">
                                    <ul style="padding-bottom:32px">
                                        <li><a href="#usage" id="usageLink">View Messages</a></li>
                                        <li><a href="#setting" id="settingLink">Settings</a></li>
                                    </ul>
                                    <div id="usage">
                                        <link rel="stylesheet" href="resources/css/tablesorter/tablesorter.css" type="text/css">
                                        </link>
                                        <script type="text/javascript" src="resources/javascripts/tablesorter/jquery.tablesorter.js"></script>
                                        <script type="text/javascript" src="resources/javascripts/tablesorter/viewRequest.js"></script>
                                        <script type="text/javascript">

                                            jQuery(document).ready(function($) {
                                                $("table").tablesorter();

                                            });
                                        </script>
                                        <div><br/>
                                        </div>
                                        <div>
                                            <div><span class="headings">Application Name : </span><span><c:out value="${application.appName}"/></span>
                                                <div><br/>
                                                </div>
                                                <span class="headings">Short Code : </span><span><c:out value="${application.keyword.shortCode}"/></span><span style="padding-left:25%" class="headings">Keyword : </span><span><c:out value="${application.keyword.name}"/></span></div>
                                            <div class="clear">&nbsp;</div>
                                            <div class="clear">&nbsp;</div>

                                            <table cellspacing="0" id="large">
                                                <col width="25%"/>
                                                <col width="50%"/>
                                                <col width="28%"/>
                                                <thead>
                                                <tr>
                                                    <th class="ovalBorderLeft">Sender</th>
                                                    <th class="backColor">Message</th>
                                                    <th class="ovalBorderRight">Action</th>
                                                </tr>
                                                </thead>
                                                <tbody id="tablesorterbody" style="background-color:#BDD9FB">
                                                <c:forEach items="${messages}" var="message">
                                                    <tr>
                                                        <td><c:out value="${message.contactNumber}"/></td>
                                                        <td><c:out value="${message.requestMessage}"/></td>
                                                        <td><input type="button" onclick="show();" value="Reply"/></td>
                                                    </tr>
                                                </c:forEach>

                                                </tbody>
                                            </table>
                                            <div class="clear">&nbsp;</div>
                                            <div class="clear">&nbsp;</div>
                                            <table>
                                                <tr>
                                                    <td width="10%"/>
                                                    <td width="80%"><div id="pagingTable">
                                                        <div align="centre" id="pagingRow"></div>
                                                    </div></td>
                                                    <td width="10%"/>
                                                </tr>
                                                <tr/>
                                            </table>
                                            <div class="clear">&nbsp;</div>
                                        </div>
                                        <script type="text/javascript">
                                            var prev = 'Prev';
                                            var next = 'Next';
                                            var emptyMsg  = 'No Messages Found'
                                            var first  = 'First'
                                            var pleaseSelect  = 'Please select a subcategory'
                                            getNumOfCategories ('0');
                                            loadInitialMessages('requ_9289', '8', '1', prev, next, emptyMsg, first, pleaseSelect);
                                            defaultAutoPageRefresh('requ_9289', '8',1);
                                        </script>
                                    </div>
                                    <div>
                                        <div id="setting">
                                            <h4>
                                                <label for="appname">Application Name</label>
                                            </h4>
                                            <div class="info_group_dis"><c:out value="${application.endDate}"/></div>
                                            <h4>
                                                <label for="keyword">Keyword Details</label>
                                            </h4>
                                            <div class="info_group">
                                                <div style="display:inline"><label style="float:left;margin: 0 0 0 0;width:75px;" class="pointer" for="startDate"></label></div>
                                                <select id="short3" name="selectedShortCode" style="min-width:120px;width:auto; margin-left:-7px;" onchange="loadKeyword()" disabled="disabled">
                                                    <option value="2545"><c:out value="${application.keyword.name}"/> -- <c:out value="${application.keyword.shortCode}"/></option>
                                                </select>
                                            </div>

                                            <h4>
                                                <label for="desc">Description</label>
                                            </h4>
                                            <div style="word-wrap: break-word;" class="info_group_dis"><c:out value="${application.appDescription}"/></div>
                                            <h4>
                                                <label for="desc">Response Message</label>
                                            </h4>
                                            <div class="info_group_dis"><span style="word-wrap:break-word"><c:out value="${application.responseMessage}"/></span></div>
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