<%--
  Created by IntelliJ IDEA.
  User: Shashi
  Date: 6/3/13
  Time: 2:36 PM
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

    function show() {
        setTimeout("showPopup()", 10);
    }
</script>
<%--<script type="text/javascript" src="resources/javascripts/header.js" language="javascript"></script>--%>
<jsp:include page="common/header.jsp"/>
<link rel="stylesheet" href="resources/css/red/scroll_style.css" type="text/css">
</link>
<script type="text/javascript">

    // execute your scripts when DOM is ready. this is a good habit
    $(function() {
        // initialize scrollable with mousewheel support
        $(".scrollable").scrollable({ vertical: true, mousewheel: true });
    });
    function setSearchValueToInputBox(value) {
        document.getElementById('searchInput').value = value;
    }

    function showTip(desc) {
        if (desc.length > 120) {
            showtooltip(desc, 250);
        }  else {
            showtooltip(desc, 200);
        }
    }
</script>
<style type="text/css">
    img.clickImg {
        cursor:pointer;
    }
</style>
<script>
    var text = text || {};
    text.manage_app = {
        activate_confirm_msg: "Are you sure, you want to activate this application?",
        suspend_confirm_msg: "Are you sure, you want to suspend this application?",
        active_success_msg: "Application Activated Successfully!",
        suspend_success_msg: "Application Suspended Successfully!",
        error_msg: "Error Occurred, Please try again!"
    };
</script>
<div id="popup-terms" style="display:none;">
    <div id="body" style="width:auto;height:auto;">
        <div class="wrap">
            <div id="dashboard-widgets-wrap">
                <div id='dashboard-widgets' class='metabox-holder' style="width:550px">
                    <div id="dashboard_quick_press" class="postbox ">
                        <h3 class='hndle'><span>Publish Details</span></h3>
                        <div class="inside" style="margin:20px; max-height:400px;overflow:auto;">
                            <div>

                                <div style="width:400px;">

                                    <div style="width:200px; float:left">
                                        <label> Application Name </label>
                                    </div>
                                    <div style="width:200px; float:right">
                                        <input type="text" width="50px" />
                                    </div>
                                </div>
                                <div class="clear">&nbsp;</div>

                                <div style="width:400px;">
                                    <div style="width:200px; float:left">
                                        <label> Application Description </label>
                                    </div>
                                    <div style="width:200px; float:right">
                                        <textarea "></textarea>
                                    </div>
                                </div>

                                <br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div style="text-align:center;">
                <form action="myApplication.html" name="agreementForm" method="post">
              <span>
              <input name="ok" style="width:50px;" type="submit" class="button" value="Publish" id="ok"/>
              </span>
                </form>
            </div>
        </div>
        <!-- wrap -->
        <div class="clear"></div>
    </div>
</div>
<script type="text/javascript" src="resources/javascripts/calendar/jquery-ui.min.js"></script>
<link rel="stylesheet" href="resources/css/calendar/ui.all.css" type="text/css">
</link>
<script type="text/javascript" src="resources/javascripts/appStateManager/appStateChange.js"></script>
<div id="header2">
    <p id="tagline"><br/>
        <br/>
    </p>
    <div class="clear">&nbsp;</div>
    <div class="grid_1 alpha">&nbsp;</div>
    <div class="grid_16">
        <div id="body">
            <div class="sub_heading">
                <h1>My Applications</h1>
            </div>
            <div id="dashboard-widgets">
                <form id="quick-search" name="searchForm" action="myApplication.html" method="post">
                    <div style="margin:0 auto;float:right;">
                        <input style="width:312px;border-color:#C2C7CD;" tabindex="1" id="searchInput" name="searchName" type="text"/>
                        &nbsp;
                        <input name="Search" tabindex="1" type="submit" class="button" value="Search" id="Search"/>
                    </div>
                    <div class="clear">&nbsp;</div>
                </form>
            </div>
            <script type="text/javascript">
                setSearchValueToInputBox("");
            </script>
            <div style="height:470px" id="select_type">
                <div id="actions"></div>
                <div class="select_type">
                    <div class="scrollable vertical">
                        <div class="items">
                            <div style="float:left;margin-right:5px;" class="item2">
                                <c:forEach var="app" items="${serviceApps}">
                                    <div style="float:left;margin-right:5px;" class="item">
                                        <div class="my_app">
                                            <div class="sub_image"><img height="75" onclick="window.location='ServiceUse?username=<c:out value="${app.userID}"/>&appId=<c:out value="${app.appId}"/>'" onMouseout="hidetooltip()" width="75" class="clickImg" onMouseover="showTip('<b><u>Service Application</u></b><br/> ')" src="resources/images/service_app.jpg"/></div>
                                            <div style="float:left;line-height:25px;">
                                                <div style="width:80px;">
                                                    <label class="bold_text" for="msisdn">Service - <c:out value="${app.appName}"/></label>
                                                </div>
                                                <div class="my_app_link"><a href="ServiceUse?username=<c:out value="${app.userID}"/>&appId=<c:out value="${app.appId}"/>">Use</a> | <a href="alertView.html">View</a> | <a href="alertEdit.html">Edit</a> | <a href="alertHelp.html">Help</a>
                                                    | <a href="#" onclick="show();">Publish</a></div>
                                                <div style="float:left; display:inline-block;">ACTIVE<span style="padding-left:10px;display:inline-block;margin-top:5px;margin-bottom:-2px;" class="my_app_link"><span style="float:left;"></span></span></div>
                                            </div>
                                        </div>
                                        <div align="center" style="padding-top:-3px;padding-bottom:20px" class="clear"> ............................................................................ </div>
                                    </div>

                                </c:forEach>

                                <c:forEach var="app" items="${alertApps}">
                                    <div style="float:left;margin-right:5px;" class="item">
                                        <div class="my_app">
                                            <div class="sub_image"><img height="75" onclick="window.location='AlertUse?username=<c:out value="${app.userID}"/>&appId=<c:out value="${app.appId}"/>'" onMouseout="hidetooltip()" width="75" class="clickImg" onMouseover="showTip('<b><u>Service Application</u></b><br/> ')" src="resources/images/alert_app.jpg"/></div>
                                            <div style="float:left;line-height:25px;">
                                                <div style="width:80px;">
                                                    <label class="bold_text" for="msisdn">Alert - <c:out value="${app.appName}"/></label>
                                                </div>
                                                <div class="my_app_link"><a href="AlertUse?username=<c:out value="${app.userID}"/>&appId=<c:out value="${app.appId}"/>">Use</a> | <a href="alertView.html">View</a> | <a href="alertEdit.html">Edit</a> | <a href="alertHelp.html">Help</a>
                                                    | <a href="#" onclick="show();">Publish</a></div>
                                                <div style="float:left; display:inline-block;">ACTIVE<span style="padding-left:10px;display:inline-block;margin-top:5px;margin-bottom:-2px;" class="my_app_link"><span style="float:left;"></span></span></div>
                                            </div>
                                        </div>
                                        <div align="center" style="padding-top:-3px;padding-bottom:20px" class="clear"> ............................................................................ </div>
                                    </div>

                                </c:forEach>

                                <c:forEach var="app" items="${votingApps}">
                                    <div style="float:left;margin-right:5px;" class="item">
                                        <div class="my_app">
                                            <div class="sub_image"><img height="75" onclick="window.location='VotingUse?username=<c:out value="${app.userID}"/>&appId=<c:out value="${app.appId}"/>'" onMouseout="hidetooltip()" width="75" class="clickImg" onMouseover="showTip('<b><u>Voting Application</u></b><br/> ')" src="resources/images/voting_app.jpg"/></div>
                                            <div style="float:left;line-height:25px;">
                                                <div style="width:80px;">
                                                    <label class="bold_text" for="msisdn">Voting - <c:out value="${app.appName}"/></label>
                                                </div>
                                                <div class="my_app_link"><a href="VotingUse?username=<c:out value="${app.userID}"/>&appId=<c:out value="${app.appId}"/>">Use</a> | <a href="alertView.html">View</a> | <a href="alertEdit.html">Edit</a> | <a href="alertHelp.html">Help</a>
                                                    | <a href="#" onclick="show();">Publish</a></div>
                                                <div style="float:left; display:inline-block;">ACTIVE<span style="padding-left:10px;display:inline-block;margin-top:5px;margin-bottom:-2px;" class="my_app_link"><span style="float:left;"></span></span></div>
                                            </div>
                                        </div>
                                        <div align="center" style="padding-top:-3px;padding-bottom:20px" class="clear"> ............................................................................ </div>
                                    </div>

                                </c:forEach>

                                <c:forEach var="app" items="${contactApps}">
                                    <div style="float:left;margin-right:5px;" class="item">
                                        <div class="my_app">
                                            <div class="sub_image"><img height="75" onclick="window.location='ContactAppView?username=<c:out value="${app.userID}"/>&appId=<c:out value="${app.appId}"/>'" onMouseout="hidetooltip()" width="75" class="clickImg" onMouseover="showTip('<b><u>Voting Application</u></b><br/> ')" src="resources/images/contact_app.jpg"/></div>
                                            <div style="float:left;line-height:25px;">
                                                <div style="width:80px;">
                                                    <label class="bold_text" for="msisdn">Contact - <c:out value="${app.appName}"/></label>
                                                </div>
                                                <div class="my_app_link"><a href="ContactAppView?username=<c:out value="${app.userID}"/>&appId=<c:out value="${app.appId}"/>">Use</a> | <a href="alertView.html">View</a> | <a href="alertEdit.html">Edit</a> | <a href="alertHelp.html">Help</a>
                                                    | <a href="#" onclick="show();">Publish</a></div>
                                                <div style="float:left; display:inline-block;">ACTIVE<span style="padding-left:10px;display:inline-block;margin-top:5px;margin-bottom:-2px;" class="my_app_link"><span style="float:left;"></span></span></div>
                                            </div>
                                        </div>
                                        <div align="center" style="padding-top:-3px;padding-bottom:20px" class="clear"> ............................................................................ </div>
                                    </div>

                                </c:forEach>




                            </div>
                        </div>
                        <div class="clear">&nbsp;</div>
                    </div>
                    <div class="clear">&nbsp;</div>
                </div>
            </div>
            <div class="clear">&nbsp;</div>
        <span style="padding-left:10px">
        <input onclick="location.href='Home?username=<c:out value="${username}"/>'" name="back" type="button" class="button" value="Back" id="back"/>
        </span></div>
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
