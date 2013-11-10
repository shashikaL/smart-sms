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

    <script type="text/javascript">

        function hideEndDate() {

            var endDateDiv = document.getElementById('expire');

            if(document.getElementById('appExpire').checked)
            {
                endDateDiv.style.display = 'block';
            }
            else
            {
                endDateDiv.style.display = 'none';
            }
        }


    </script>



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
        setTimeout("showPopup()", 1000);
    }
</script>
<script type="text/javascript" src="resources/javascripts/header.js" language="javascript"></script>
<script type="text/javascript" src="resources/javascripts/calendar/jquery-ui.min.js"></script>
<link rel="stylesheet" href="resources/css/calendar/ui.all.css" type="text/css">
</link>

<script type="text/javascript">
    function submitForm() {
        document.forms[1].submit();
    }

    function agreeStatement() {
        var checkBoxTick = document.getElementById("checkBoxTick");
        if (checkBoxTick.checked) {
            document.getElementById("ok").disabled = false
        } else {
            document.getElementById("ok").disabled = true
        }
    }

</script>
<div id="popup-terms" style="display:none;">
    <div id="body" style="width:auto;height:auto;">
        <div class="wrap">
            <div id="dashboard-widgets-wrap">
                <div id='dashboard-widgets' class='metabox-holder' style="width:550px">
                    <div id="dashboard_quick_press" class="postbox ">
                        <h3 class='hndle'><span>Terms & Conditions</span></h3>
                        <div class="inside" style="margin:20px; max-height:400px;overflow:auto;">
                            <div> <br>
                                <p><font size="2" face="Verdana"><b>Terms of Service</b></font> <br>
                                    <br>
                                </p>
                                <p><font size="2" face="Verdana"><b>Basic Terms</b></font> <br>
                                </p>
                                <p><font size="2" face="Verdana"> You are responsible for your use of
                                    the Services, for any content you create and post to the Services, and
                                    for any consequences thereof. The Content you create, post, or display
                                    will be able to be viewed by other users in your group. You should only
                                    provide Content that you are comfortable sharing with others under these
                                    Terms.</font> <br>
                                </p>
                                <p><font size="2" face="Verdana">The Services that SmartSMS provides
                                    are always evolving and the form and nature of the Services that SmartSMS
                                    provides may change from time to time without prior notice to you. </font> <br>
                                </p>
                                <br>
                                <p id="privacy"><font size="2" face="Verdana"><b>Privacy</b></font> <br>
                                </p>

                                <br>
                                <p><font size="2" face="Verdana"><b>Passwords</b></font> <br>
                                </p>
                                <p><font size="2" face="Verdana">You are responsible for safeguarding
                                    the password that you use to access the Services and for any activities
                                    or actions under your password. We encourage you to use strong
                                    passwords (passwords that use a combination of upper and lower case
                                    letters, numbers and symbols) with your account. SmartSMS cannot and
                                    will not be liable for any loss or damage arising from your failure
                                    to comply with the above requirements.</font> <br>
                                </p>
                                <br>

                                <p><font size="2" face="Verdana"><b>Entire Agreement</b></font></p>
                                <p><font size="2" face="Verdana">These Terms, the SmartSMS Rules and
                                    our Privacy Policy are the entire and exclusive agreement between SmartSMS
                                    and you regarding the Services (excluding any services for which you
                                    have a separate agreement with SmartSMS that is explicitly in addition
                                    or in place of these Terms), and these Terms supersede and replace any
                                    prior agreements between SmartSMS and you regarding the Services.</font> <br>
                                    <br>
                                </p>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div style="text-align:center;">
                <form action="serviceAppConfirm.html" name="agreementForm" method="post">
              <span>
              <input onclick="submitForm()" name="ok" style="width:50px;" type="button" class="button" value="I Agree" id="ok"/>
              </span>
                </form>
            </div>
        </div>
        <!-- wrap -->
        <div class="clear"></div>
    </div>
</div>
<script type="text/javascript">
var buffer_minute_array = {
    10 : '10', 20 : '20', 30 : '30', 40 : '40'
};
var buffer_hour_array = {
    60 : '1', 120 : '2', 180 : '3', 240 : '4',
    300 : '5', 360 : '6'
};
var buffer_day_array = {
    1440 : '1', 2880 : '2', 4320 : '3'
};

$(document).ready(function(){
    loadChargingSettings();
    var editState = 'false';
    if (editState == 'false') {
        $("#startDate").datepicker({dateFormat: 'dd/mm/yy'});
    }
    $("#endDate").datepicker({dateFormat: 'dd/mm/yy'});


    showDispatchTime();
    if (editState) {
        showSelectedDispatchTime();
    }

});

function addOptions (array , elementId) {
    var element = document.getElementById(elementId);
    element.options.length = 0;
    for(index in array) {
        element.options[element.options.length] = new Option(array[index], index);
    }
}

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

    var subscriptionDispatchBufferTimeMin = document.getElementById("subscriptionDispatchBufferTimeMin");
    var subscriptionDispatchBufferTimeHour = document.getElementById("subscriptionDispatchBufferTimeHour");
    var subscriptionDispatchBufferTimeDay = document.getElementById("subscriptionDispatchBufferTimeDay");

    if (subscriptionDispatchDateDiv != null) {
        subscriptionDispatchDateDiv.style.display = 'none';
    } else {
        subscriptionDispatchDateDiv = document.getElementById("nullRemover");
    }
    if (subscriptionDispatchDayDiv != null) {
        subscriptionDispatchDayDiv.style.display = 'none';
    } else {
        subscriptionDispatchDayDiv = document.getElementById("nullRemover");
    }
    if (subscriptionDispatchHourDiv != null) {
        subscriptionDispatchHourDiv.style.display = 'none';
    } else {
        subscriptionDispatchHourDiv = document.getElementById("nullRemover");
    }
    if (subscriptionDispatchMinuteDiv != null) {
        subscriptionDispatchMinuteDiv.style.display = 'none';
    } else {
        subscriptionDispatchMinuteDiv = document.getElementById("nullRemover");
    }

    if (subscriptionDispatchBufferTimeMin != null) {
        subscriptionDispatchBufferTimeMin.style.display = 'none';
    } else {
        subscriptionDispatchBufferTimeMin = document.getElementById("nullRemover");
    }
    if (subscriptionDispatchBufferTimeHour != null) {
        subscriptionDispatchBufferTimeHour.style.display = 'none';
    } else {
        subscriptionDispatchBufferTimeHour = document.getElementById("nullRemover");
    }
    if (subscriptionDispatchBufferTimeDay != null) {
        subscriptionDispatchBufferTimeDay.style.display = 'none';
    } else {
        subscriptionDispatchBufferTimeDay = document.getElementById("nullRemover");
    }

    switch (selectedOption) {
        case 'HOUR':
            subscriptionDispatchMinuteDiv.style.display = '';
            addOptions(buffer_minute_array, "preferedSubscriptionDispatchBufferTime");
            subscriptionDispatchBufferTimeMin.style.display = '';
            break;
        case 'DAY':
            subscriptionDispatchMinuteDiv.style.display = '';
            subscriptionDispatchHourDiv.style.display = '';
            addOptions(buffer_hour_array, "preferedSubscriptionDispatchBufferTime");
            subscriptionDispatchBufferTimeHour.style.display = '';
            break;
        case 'WEEK':
            subscriptionDispatchMinuteDiv.style.display = '';
            subscriptionDispatchHourDiv.style.display = '';
            subscriptionDispatchDayDiv.style.display = '';
            addOptions(buffer_day_array, "preferedSubscriptionDispatchBufferTime");
            subscriptionDispatchBufferTimeDay.style.display = '';
            break;
        case 'MONTH':
            subscriptionDispatchDateDiv.style.display = '';
            subscriptionDispatchHourDiv.style.display = '';
            subscriptionDispatchMinuteDiv.style.display = '';
            addOptions(buffer_day_array, "preferedSubscriptionDispatchBufferTime");
            subscriptionDispatchBufferTimeDay.style.display = '';
            break;
    }
}

function showSelectedDispatchTime() {
    var selectedOptionIndex = document.getElementById("duration").selectedIndex;
    var selectedOption = document.getElementById("duration").options[selectedOptionIndex].value;
    var subscriptionDispatchDateDiv = document.getElementById("selectedSubscriptionDispatchDateDiv");
    var subscriptionDispatchDayDiv = document.getElementById("selectedSubscriptionDispatchDayDiv");
    var subscriptionDispatchHourDiv = document.getElementById("selectedSubscriptionDispatchHourDiv");
    var subscriptionDispatchMinuteDiv = document.getElementById("selectedSubscriptionDispatchMinuteDiv");

    if (subscriptionDispatchDateDiv != null) {
        subscriptionDispatchDateDiv.style.display = 'none';
    } else {
        subscriptionDispatchDateDiv = document.getElementById("nullRemover");
    }
    if (subscriptionDispatchDayDiv != null) {
        subscriptionDispatchDayDiv.style.display = 'none';
    } else {
        subscriptionDispatchDayDiv = document.getElementById("nullRemover");
    }
    if (subscriptionDispatchHourDiv != null) {
        subscriptionDispatchHourDiv.style.display = 'none';
    } else {
        subscriptionDispatchHourDiv = document.getElementById("nullRemover");
    }
    if (subscriptionDispatchMinuteDiv != null) {
        subscriptionDispatchMinuteDiv.style.display = 'none';
    } else {
        subscriptionDispatchMinuteDiv = document.getElementById("nullRemover");
    }


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

function loadKeyword() {
    var selectedShortCode = document.getElementById("short3");
    var url = '../ajaxLoaderShortCodeAndMsisdn/SMS/' + selectedShortCode.value + '.html';
    var callbackfunc = 'parseKeywords()';
    ajax(url, 'xml', callbackfunc);
}

function validateAppName() {
    var appName = document.getElementById("appName");
    var url = '../ajaxLoaderValidateAppName/' + appName.value + '.html';
    var callbackfunc = 'parseAppName()';
    ajax(url, 'xml', callbackfunc);
}

function parseAppName() {
    var appExists = req.responseXML.documentElement.getElementsByTagName("app-exsists");

    if (appExists.length != 0) {
        var appNameError = document.getElementById("appNameErrorDiv");
        if (getNodeValue(appExists[0]) == 'true') {
            appNameError.innerHTML = 'Application Name Already Exisits !';
        } else {
            appNameError.innerHTML = '';
        }
    }
}

function parseKeywords() {
    var addressNods = req.responseXML.documentElement.getElementsByTagName("address");
    var operatorNods = req.responseXML.documentElement.getElementsByTagName("operator");
    if (addressNods.length != 0) {
        //load keywords
        var keyword = document.getElementById("keyword");
        while (keyword.options.length != 0) {
            keyword.remove(0);
        }
        for (var i = 0; i < addressNods.length; i++) {
            var address = getNodeValue(addressNods[i]);
            var operator = getNodeValue(operatorNods[i]);
            var option = document.createElement("option");
            var text = document.createTextNode(address + " - " + operator);
            option.appendChild(text);
            option.setAttribute("value", address + "-" + operator);
            keyword.appendChild(option);
            //                if(selectedKeyword ==address + "-" + operator) {
            //                    option.selected=true;
            //                }
        }
    }
    parseChargeableMsisdn();
}

function parseChargeableMsisdn() {
    var chargeableAddress = req.responseXML.documentElement.getElementsByTagName("chargeable-address");
    var chargeableOperator = req.responseXML.documentElement.getElementsByTagName("chargeable-operator");

    var chargingMsisdn = document.getElementById("chargeMsisdn");
    while (chargingMsisdn.options.length != 0) {
        chargingMsisdn.remove(0);
    }
    for (var i = 0; i < chargeableAddress.length; i++) {
        var address = getNodeValue(chargeableAddress[i]);
        var operator = getNodeValue(chargeableOperator[i]);
        var option = document.createElement("option");
        var text = document.createTextNode(address + " - " + operator);
        option.appendChild(text);
        option.setAttribute("value", address);
        chargingMsisdn.appendChild(option);
    }
}

function ajax(url, format, callback) {
    resformat = format;
    callbackfunc = callback;
    if (window.XMLHttpRequest) { // Non-IE browsers
        req = new XMLHttpRequest();
        req.onreadystatechange = requestHandler;
        try {
            req.open("GET", url, true);
        } catch (e) {
            alert(e);
        }
        req.send(null);
    } else if (window.ActiveXObject) { // IE
        req = new ActiveXObject("Microsoft.XMLHTTP");
        if (req) {
            req.onreadystatechange = requestHandler;
            req.open("GET", url, true);
            req.send();
        }
    }
}

function requestHandler() {
    var res = '-';
    if (req.readyState == 4) {
        if (req.status == 200) {
            // update the HTML DOM based on whether or not message is valid
            if (callbackfunc != '-') {
                eval(callbackfunc);
            }
        }
    }
}

function createKeywordFormSubmit() {
    changeAction("createKeyword.html");
    document.appdetails.submit();
}

function changeAction(url) {
    document.appdetails.action = url;
}
var selectedKeyword = '';

</script>
<div id="header2">
<p id="tagline"><br/>
    <br/>
</p>
<div style="clear:both;">&nbsp;</div>
<div id="body">
<div id="nullRemover"/>
<div class="sub_heading">
    <h1> Contact Application Responses</h1>
</div>
<div class="navi_link4"></div>
<div class="grid_1 alpha">&nbsp;</div>
<div class="grid_16">
    <div id="dashboard-widgets-wrap">
        <div class="metabox-holder" id="dashboard-widgets">
            <div class="postbox" id="dashboard_quick_press">
                <form id="quick-press" name="appdetails" action="appDetails.html" method="post">
                    <h3 class="hndle"><span>Contact Application Responses</span></h3>
                    <div class="inside">
                        <div class="clear">&nbsp;</div>
                        <h4>
                            <label for="appname">Application Name<span class="mandatory">*</span></label>
                        </h4>
                        <div>
                            <div class="input_row">
                                <div id="appNameErrorDiv" class="error-req"></div>
                            </div>
                            <div class="input_row">
                                <div class="input-text-wrap">
                                    <input id="appName" name="app.appName" onblur="validateAppName();" type="text" value="<c:out value="${application.appName}"/>" readonly="readonly"/>
                                </div>
                            </div>
                        </div>
                        <table width="675" border="1">
                            <tr>
                                <th width="104" scope="col">Date</th>
                                <th width="287" scope="col">Response</th>
                                <th width="262" scope="col">Contact Number</th>
                            </tr>
                            <tr>
                                <th scope="row">&nbsp;</th>
                                <td width="287"><label>
                                    <textarea name="txtarea1" id="txtarea1" cols="45" rows="5"></textarea>
                                </label></td>
                                <td><label>
                                    0771234567
                                    <input type="submit" name="reply" id="reply" value="Reply" />
                                </label></td>
                            </tr>
                            <tr>
                                <th scope="row">&nbsp;</th>
                                <td width="287"><textarea name="txtarea2" id="txtarea2" cols="45" rows="5"></textarea></td>
                                <td>0777489670
                                    <input type="submit" name="reply2" id="reply2" value="Reply" /></td>
                            </tr>
                            <tr>
                                <th scope="row">&nbsp;</th>
                                <td width="287"><textarea name="txtarea3" id="txtarea3" cols="45" rows="5"></textarea></td>
                                <td>0771726354
                                    <input type="submit" name="reply3" id="reply3" value="Reply" /></td>
                            </tr>
                            <tr>
                                <th scope="row">&nbsp;</th>
                                <td width="287"><textarea name="txtarea4" id="txtarea4" cols="45" rows="5"></textarea></td>
                                <td>0771827364
                                    <input type="submit" name="reply4" id="reply4" value="Reply" /></td>
                            </tr>
                        </table>
                        <div id="advance" style="display:none;float:left;">
                            <script type="text/javascript" src="/javascripts/advanceSetting/expand.js"></script>
                            <link rel="stylesheet" href="/css/advanceSetting/advanceSetting.css" type="text/css">
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
                                                    <textarea id="ss" name="subscriptionSuccessMsgEn" wrap="physical" onKeyUp="textCounter('ss','remLen_ss',75)" onKeyDown="textCounter('ss','remLen_ss',75)">Subscription Successful</textarea>
                                                </div>
                                            </div>
                                            <input style="float:right;margin-top:-38px;margin-right:-10px;z-index:998;background-color:white;width:30px" value="75" maxlength="3" size="3" id="remLen_ss" type="text" readonly="true"/>
                                            <h4>
                                                <label for="us">Unsubscribe Successful Response Message</label>
                                            </h4>
                                            <div class="input_row">
                                                <div style="color: #c00e0c;font-weight: bold;font-size: 78%;float:right;margin-left:66px;margin-bottom:0px;"></div>
                                                <div style="z-index:500" class="textarea-wrap">
                                                    <textarea id="us" name="unsubscribeSuccessMsgEn" wrap="physical" onKeyUp="textCounter('us','remLen_us',75)" onKeyDown="textCounter('us','remLen_us',75)">Unsubscribed Successfully</textarea>
                                                </div>
                                            </div>
                                            <input style="float:right;margin-top:-38px;margin-right:-10px;z-index:999;background-color:white;width:30px" value="75" maxlength="3" size="3" id="remLen_us" type="text" readonly="true"/>
                                            <h4>
                                                <label for="re">Invalid Request</label>
                                            </h4>
                                            <div class="input_row">
                                                <div style="color: #c00e0c;font-weight: bold;font-size: 78%;float:left;margin-left:66px;margin-top:-20px;overflow:visible;"></div>
                                                <div class="textarea-wrap">
                                                    <textarea id="ir" name="requestErrorMsgEn" wrap="physical" onKeyUp="textCounter('ir','remLen_ir',75)" onKeyDown="textCounter('ir','remLen_ir',75)">Invalid Request</textarea>
                                                </div>
                                            </div>
                                            <input style="float:right; ;margin-top:-38px;margin-right:-10px;background-color:white;width:30px" value="75" maxlength="3" size="3" id="remLen_ir" type="text" readonly="true"/>
                                            <div class="clear"></div>
                                        </div>
                                        <h2 onClick="handleCharging();" class="expand">Charging Configurations</h2>
                                        <div class="collapse">
                                            <h4>
                                                <label for="ss">Charging</label>
                                            </h4>
                                            <div class="input_row">
                                                <div style="margin-left:55px;width:500px">
                                                    <input id="cfs" name="chargingFromSubscriber" onClick="handleCharging()" name="chargingRadioGroup" type="radio" value="true" checked="checked"/>
                                                    <label class="checkbox_allignment" for="cfs">From Subscriber</label>
                                                    <div class="clear">&nbsp;</div>
                                                    <div id="cfsDiv">
                                                        <div style="margin-left:30px;">
                                                            <input id="cpm" name="chargingPerMessage" type="checkbox" value="true" checked="checked"/>
                                                            <input type="hidden" name="_chargingPerMessage" value="on"/>
                                                            <label class="checkbox_allignment" id="cpmlable" for="cpm">Charging For Message</label>
                                                        </div>
                                                        <div class="clear">&nbsp;</div>
                                                        <div style="margin-left:50px;">
                                                            <div>
                                                                <input id="cfc1" name="chargingFromSubscriber1" onClick="handleCharging()" name="chargingRadioGroup1" type="radio" value="false" checked="checked"/>
                                                                <label>From Subscriber Finanacial Instrument</label></div>
                                                            <div>
                                                                <div class="clear">&nbsp;</div>
                                                                <input id="cfc2" name="chargingFromSubscriber1" onClick="handleCharging()" name="chargingRadioGroup1" type="radio" value="false"/>
                                                                <label>From Operator</label></div>
                                                        </div>
                                                        <div class="clear">&nbsp;</div>

                                                        <div class="clear">&nbsp;</div>
                                                        <div style="margin-left:30px;">
                                                            <input id="cps" name="chargingPerSubscription" onClick="handleCharging()" type="checkbox" value="true"/>
                                                            <input type="hidden" name="_chargingPerSubscription" value="on"/>
                                                            <label class="checkbox_allignment" id="cpslable" for="cps">Charging For Subscription</label>
                                                            <div class="clear">&nbsp;</div>
                                                            <div id="cpsDiv"><span class="radiobuttons_allignment" id="subRegTypes"><span>
                                        <input id="subRegRadioGroup_0" name="subscriptionChargingType" name="radio_0" type="radio" value="ONE_TIME_SUBS_CHARGING"/>
                                        </span><span>
                                        <label id="subRegLabel_0" for="subRegRadioGroup_0">One Time</label>
                                        </span></span><span class="radiobuttons_allignment" id="subRegTypes"><span>
                                        <input id="subRegRadioGroup_1" name="subscriptionChargingType" name="radio_1" type="radio" value="DURATION_BASED_SUBS_CHARGING"/>
                                        </span><span>
                                        <label id="subRegLabel_1" for="subRegRadioGroup_1">Monthly</label>
                                        </span></span></div>
                                                        </div>
                                                        <div class="clear">&nbsp;</div>
                                                    </div>
                                                </div>
                                                <h4>
                                                    <label for="ss"/>
                                                </h4>
                                                <div class="input_row">
                                                    <div style="margin-left:55px;width:500px">
                                                        <input id="cfc" name="chargingFromSubscriber" onClick="handleCharging()" name="chargingRadioGroup" type="radio" value="false"/>
                                                        <label width="1000px" class="checkbox_allignment" for="cfc">From Content Provider (per message charging)</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div style="padding-bottom:5px;padding-top:15px;margin-left:4.9em" class="info_group"><span>
                  <input onclick="location.href='contactAppConfirm.html';" name="next" type="button" class="button" value="Next" id="next"/>
                      </span></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="grid_1 omega">&nbsp;</div>
<div class="clear"></div>
</div>
<div class="clear"></div>
</div>
<script type="text/javascript">
    loadKeyword();
</script>
</div>
<script type="text/javascript" src="resources/javascripts/footer.js" language="javascript"></script>
</div>
</body>
</html>