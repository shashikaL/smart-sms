<%--
  Created by IntelliJ IDEA.
  User: Shashi
  Date: 6/3/13
  Time: 12:58 PM
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
<div style="clear:both;">&nbsp;</div>
<div id="body">
<div class="sub_heading">
    <h1>Create a Service Application</h1>
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
            <input id="appName" name="appName" tabindex="10"  readonly="readonly" type="text" value="<c:out value="${ServiceObj.appName}"/> "/>
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
            <input id="startDate" name="startDate" tabindex="15" readonly="readonly" type="text" value="<c:out value="${ServiceObj.startDate}"/>"/>
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
                <input id="endDate" name="endDate" tabindex="15"  readonly="readonly" type="text" value="<c:out value="${ServiceObj.endDate}"/>"/>
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
        <textarea id="appDescription" name="appDescription" readonly="readonly"><c:out value="${ServiceObj.appDescription}"/></textarea>
    </div>
</div>


<h4>
    <label for="short3">Message Scheduled Duration</label>
</h4>
<div class="info_group">
    <div style="margin-left:-69px;" class="error-req"></div>
    <select id="duration" name="selectedPeriodUnit" style="min-width:160px;width:auto;margin-left:-10px;" onchange="showDispatchTime();">
        <option value="HOUR">HOUR</option>
        <option value="DAY">DAY</option>
        <option value="WEEK">WEEK</option>
        <option value="MONTH">MONTH</option>
    </select>
</div>
<h4>
    <label for="dispatchTime">Time Interval</label>
</h4>
<div style="float:left;margin: 0px 0px 0px 55px;" class="info_group"><span id="subscriptionDispatchDateDiv">
                      <label for="subscriptionDispatchDate">Date</label>
                      <select id="subscriptionDispatchDate" name="subscriptionDispatchDate" style="min-width:20px;width:auto;">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>
                          <option value="11">11</option>
                          <option value="12">12</option>
                          <option value="13">13</option>
                          <option value="14">14</option>
                          <option value="15">15</option>
                          <option value="16">16</option>
                          <option value="17">17</option>
                          <option value="18">18</option>
                          <option value="19">19</option>
                          <option value="20">20</option>
                          <option value="21">21</option>
                          <option value="22">22</option>
                          <option value="23">23</option>
                          <option value="24">24</option>
                          <option value="25">25</option>
                          <option value="26">26</option>
                          <option value="27">27</option>
                          <option value="28">28</option>
                          <option value="29">29</option>
                          <option value="30">30</option>
                          <option value="31">31</option>
                          <option value="32">Last Day</option>
                      </select>
                      </span><span id="subscriptionDispatchDayDiv">
                      <label for="subscriptionDispatchDay">Day</label>
                      <select id="subscriptionDispatchDay" name="subscriptionDispatchDay" style="min-width:20px;width:auto;">
                          <option value="7">Sun</option>
                          <option value="1">Mon</option>
                          <option value="2">Tue </option>
                          <option value="3">Wed</option>
                          <option value="4">Thu</option>
                          <option value="5">Fri</option>
                          <option value="6">Sat</option>
                      </select>
                      </span><span id="subscriptionDispatchHourDiv">
                      <label for="subscriptionDispatchHour">Hour</label>
                      <select id="subscriptionDispatchHour" name="subscriptionDispatchHour" style="min-width:20px;width:auto;">
                          <option value="00" selected="selected">00</option>
                          <option value="01">01</option>
                          <option value="02">02</option>
                          <option value="03">03</option>
                          <option value="04">04</option>
                          <option value="05">05</option>
                          <option value="06">06</option>
                          <option value="07">07</option>
                          <option value="08">08</option>
                          <option value="09">09</option>
                          <option value="10">10</option>
                          <option value="11">11</option>
                          <option value="12">12</option>
                          <option value="13">13</option>
                          <option value="14">14</option>
                          <option value="15">15</option>
                          <option value="16">16</option>
                          <option value="17">17</option>
                          <option value="18">18</option>
                          <option value="19">19</option>
                          <option value="20">20</option>
                          <option value="21">21</option>
                          <option value="22">22</option>
                          <option value="23">23</option>
                      </select>
                      </span><span id="subscriptionDispatchMinuteDiv">
                      <label for="subscriptionDispatchMinute">Min</label>
                      <select id="subscriptionDispatchMinute" name="subscriptionDispatchMinute" style="min-width:20px;width:auto;">
                          <option value="0" selected="selected">00</option>
                          <option value="5">05</option>
                          <option value="10">10</option>
                          <option value="15">15</option>
                          <option value="20">20</option>
                          <option value="25">25</option>
                          <option value="30">30</option>
                          <option value="35">35</option>
                          <option value="40">40</option>
                          <option value="45">45</option>
                          <option value="50">50</option>
                          <option value="55">55</option>
                      </select>
                      </span></div>


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
                            <textarea id="ss" name="subscriptionSuccessMsgEn" wrap="physical" onKeyUp="textCounter('ss','remLen_ss',75)" onKeyDown="textCounter('ss','remLen_ss',75)" disabled="disabled">Subscription Successful</textarea>
                        </div>
                    </div>

                    <h4>
                        <label for="us">Unsubscribe Successful Response Message</label>
                    </h4>
                    <div class="input_row">
                        <div style="color: #c00e0c;font-weight: bold;font-size: 78%;float:right;margin-left:66px;margin-bottom:0px;"></div>
                        <div style="z-index:500" class="textarea-wrap">
                            <textarea id="us" name="unsubscribeSuccessMsgEn" wrap="physical" onKeyUp="textCounter('us','remLen_us',75)" onKeyDown="textCounter('us','remLen_us',75)" disabled="disabled">Unsubscribed Successfully</textarea>
                        </div>
                    </div>

                    <h4>
                        <label for="re">Invalid Request</label>
                    </h4>
                    <div class="input_row">
                        <div style="color: #c00e0c;font-weight: bold;font-size: 78%;float:left;margin-left:66px;margin-top:-20px;overflow:visible;"></div>
                        <div class="textarea-wrap">
                            <textarea id="ir" name="requestErrorMsgEn" wrap="physical" onKeyUp="textCounter('ir','remLen_ir',75)" onKeyDown="textCounter('ir','remLen_ir',75)" disabled="disabled">Invalid Request</textarea>
                        </div>
                    </div>

                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>



    <div style="text-align:center; width:100%"><span style="padding-right:10px">
                  <input onclick="location.href='ServiceAppStep1';" name="back" style="width:50px;" tabindex="5" type="button" class="button" value="Back" id="back"/>
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
</div>
<div class="grid_1 omega">&nbsp;</div>
</div>
</div>
</div>
<script type="text/javascript" src="resources/javascripts/footer.js" language="javascript"></script>
</div>
</body>
</html>