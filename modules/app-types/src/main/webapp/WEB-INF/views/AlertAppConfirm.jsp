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
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $('a[rel*=facebox]').facebox();
        });
    </script>
    <script language="JavaScript" type="text/javascript" src="resources/javascripts/datetime.js"></script>
    <script language="JavaScript" type="text/javascript" src="resources/javascripts/jquery.bgiframe.js"></script>
    <script language="JavaScript" type="text/javascript" src="resources/javascripts/dialog/jquery.alerts.js"></script>
    <!--[if lte IE 7]>
    <link rel='stylesheet' id='ie-css' href='resources/css/ie.css' type='text/css'
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
    <%--<script type="text/javascript" src="resources/javascripts/header.js" language="javascript"></script>--%>
    <jsp:include page="common/header.jsp"/>
    <div id="header2">
        <p id="tagline"><br/>
            <br/>
        </p>
        <div style="clear:both;">&nbsp;</div>
        <div id="body">
            <div class="sub_heading">
                <h1>Create an Alert Application</h1>
            </div>
            <div class="navi_link4"></div>
            <div class="clear">&nbsp;</div>
            <div style="text-align: center; font-weight:bold; width:100%">
                <label class="confirm">Please verify & press 'Confirm' to continue.</label></div>
            <div class="grid_1 alpha">&nbsp;</div>
            <div class="grid_16">
                <div id="dashboard-widgets-wrap">
                    <div class="metabox-holder" id="dashboard-widgets">
                        <div class="postbox" id="dashboard_quick_press">
                            <form action="" method="post">
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
                                                <input id="appName" name="appName" tabindex="10" readonly="readonly"  type="text" value="<c:out value="${alertObj.appName}"/>"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div></div>
                                    <h4>
                                        <label for="short3">Keyword Details</label>
                                    </h4>
                                    <div class="info_group">
                                        <div style="display:inline"></div>
                                        <select id="keyword.shortCode" name="keyword.shortCode" style="min-width:120px;width:auto; margin-left:-7px;" onchange="loadKeyword()">
                                            <option value="1234"><c:out value="${alertObj.keyword.shortCode}"/></option>
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
                                                <input id="startDate" name="startDate" tabindex="15" readonly="readonly"  type="text" value="<c:out value="${alertObj.startDate}"/>"/>
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
                                                    <input id="endDate" name="endDate" tabindex="15" readonly="readonly"  type="text" value="<c:out value="${alertObj.endDate}"/>"/>
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
                                            <textarea id="decs" name="appDescription" readonly="readonly" ><c:out value="${alertObj.appDescription}"/></textarea>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <h4>
                                        <label for="smsupdate">&nbsp;</label>
                                    </h4>
                                    <div class="input_row">
                                        <div style="margin-left:75px;"></div>
                                    </div>
                                    <div class="clear"></div>
                                    <h4></h4>
                                    <div class="clear"></div>
                                    <div id="advanceConfig">
                                        <script type="text/javascript" src="resources/javascripts/advanceSetting/expand.js"></script>
                                        <link rel="stylesheet" href="resources/css/advanceSetting/advanceSetting.css" type="text/css">
                                        </link>
                                        <script type="text/javascript">
                                            $(function() {
                                                // --- Using the default options:
                                                //        $("h2.expand").toggler({initShow: "div.collapse:first"});
                                                // --- Other options:
                                                //$("h2.expand").toggler({method: "toggle", speed: 0});
                                                //$("h2.expand").toggler({method: "toggle"});
                                                //        $("h2.expand").toggler({speed: "fast", initShow: "div.collapse:first"});
                                                $("h2.expand").toggler({speed: "fast"});
                                                //        $("h2.expand").toggler({method: "fadeToggle"});
                                                //        $("h2.expand").toggler({method: "slideFadeToggle",initShow: "div.collapse:first"});
                                                $("#advance_content").expandAll({trigger: "h2.expand", ref: "div.demo", showMethod: "slideDown", hideMethod: "slideUp", speed: 400, oneSwitch: false});

                                                textCounter('ss','remLen_ss',75);
                                                textCounter('us','remLen_us',75);
                                                textCounter('ir','remLen_ir',75);

                                                //        setSubscription();
                                            });
                                            function enableChargingParties(){
                                                var cpm = document.getElementById("cpm");
                                                cpm.disabled = false;
                                                var cps = document.getElementById("cps");
                                                cps.disabled = false;
                                            }

                                        </script>
                                        <div id="wrapper">
                                            <div id="advance_content">
                                                <div class="demo">
                                                    <h2 id="advance_config" class="expand">Response Configurations</h2>
                                                    <div class="collapse">
                                                        <h4>
                                                            <label for="ss">Subscription Successful Response Message</label>
                                                        </h4>
                                                        <div class="input_row">
                                                            <div style="color: #c00e0c;font-weight: bold;font-size: 78%;float:left;margin-left:66px;margin-top:-10px;"></div>
                                                            <div style="z-index:499" class="textarea-wrap">
                                                                <textarea id="ss" name="subscriptionSuccessfulMessage" wrap="physical" onKeyUp="textCounter('ss','remLen_ss',75)" onKeyDown="textCounter('ss','remLen_ss',75)" readonly="readonly"><c:out value="${alertObj.subscriptionSuccessfulMessage}"/></textarea>
                                                            </div>
                                                        </div>

                                                        <h4>
                                                            <label for="us">Unsubscribe Successful Response Message</label>
                                                        </h4>
                                                        <div class="input_row">
                                                            <div style="color: #c00e0c;font-weight: bold;font-size: 78%;float:right;margin-left:66px;margin-bottom:0px;"></div>
                                                            <div style="z-index:500" class="textarea-wrap">
                                                                <textarea id="us" name="unSubscriptionSuccessfulMessage" wrap="physical" onKeyUp="textCounter('us','remLen_us',75)" onKeyDown="textCounter('us','remLen_us',75)" readonly="readonly"><c:out value="${alertObj.unSubscriptionSuccessfulMessage}"/></textarea>
                                                            </div>
                                                        </div>

                                                        <h4>
                                                            <label for="re">Invalid Request</label>
                                                        </h4>
                                                        <div class="input_row">
                                                            <div style="color: #c00e0c;font-weight: bold;font-size: 78%;float:left;margin-left:66px;margin-top:-20px;overflow:visible;"></div>
                                                            <div class="textarea-wrap">
                                                                <textarea id="ir" name="invalidRequestMessage" wrap="physical" onKeyUp="textCounter('ir','remLen_ir',75)" onKeyDown="textCounter('ir','remLen_ir',75)" readonly="readonly"><c:out value="${alertObj.invalidRequestMessage}"/></textarea>
                                                            </div>
                                                        </div>

                                                        <div class="clear"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>

                            <div style="text-align:center; width:100%"><span style="padding-right:10px">
                  <input onclick="location.href='AlertAppCreate';" name="back" style="width:50px;" tabindex="5" type="button" class="button" value="Back" id="back"/>
                  </span><span style="padding-right:10px">
                  <input name="next" style="width:50px;" tabindex="6" type="submit" class="button" value="Confirm" id="next"/>
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