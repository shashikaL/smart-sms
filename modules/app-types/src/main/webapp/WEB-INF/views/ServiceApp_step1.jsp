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
    <link rel="stylesheet" href="resourcesresources/css/image-stripping.css" media="screen" type="text/css"/>
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

    <link rel='stylesheet' id='ie-css' href='/css/ie.css' type='text/css'
          media='all'/>


    <script type="text/javascript">

        function hideEndDate() {

            var endDateDiv = document.getElementById('expire');

            if (document.getElementById('appExpire').checked) {
                endDateDiv.style.display = 'block';
            }
            else {
                endDateDiv.style.display = 'none';
            }
        }


    </script>


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
        setTimeout("showPopup()", 1000);
    }
</script>
<%--<script type="text/javascript" src="resources/javascripts/header.js" language="javascript"></script>--%>
<jsp:include page="common/header.jsp"/>
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



                                <br>
                                <p id="privacy"><font size="2" face="Verdana"><b>Privacy</b></font> <br>
                                </p>

                                <br>
                                <p><font size="2" face="Verdana"><b>Passwords</b></font> <br>
                                </p>

                                <br>
                                <p><font size="2" face="Verdana"><b>Content on the Services</b></font> <br>
                                </p>


                                <br>
                                <p><font size="2" face="Verdana"><b>Your Rights</b></font> <br>
                                </p>


                                <br>
                                <p><font size="2" face="Verdana"><b>smartSMS Rights</b></font> <br>
                                </p>

                                <br>
                                <p><font size="2" face="Verdana"><b>Restrictions on Content and Use
                                    of the Services</b></font> <br>
                                </p>

                                <br>

                                <br>

                                <br>
                                <p><font size="2" face="Verdana"><b>Copyright Policy</b></font> <br>
                                </p>

                                <br>


                                <br>

                                <br>
                                <p><font size="2" face="Verdana"><b>Entire Agreement</b></font></p>

                                <br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div style="text-align:center;">
                <form action="" name="agreementForm" method="post">
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

//function parseKeywords() {
//    var addressNods = req.responseXML.documentElement.getElementsByTagName("address");
//    var operatorNods = req.responseXML.documentElement.getElementsByTagName("operator");
//    if (addressNods.length != 0) {
//        //load keywords
//        var keyword = document.getElementById("keyword");
//        while (keyword.options.length != 0) {
//            keyword.remove(0);
//        }
//        for (var i = 0; i < addressNods.length; i++) {
//            var address = getNodeValue(addressNods[i]);
//            var operator = getNodeValue(operatorNods[i]);
//            var option = document.createElement("option");
//            var text = document.createTextNode(address + " - " + operator);
//            option.appendChild(text);
//            option.setAttribute("value", address + "-" + operator);
//            keyword.appendChild(option);
//            //                if(selectedKeyword ==address + "-" + operator) {
//            //                    option.selected=true;
//            //                }
//        }
//    }
//    parseChargeableMsisdn();
//}

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
    <h1>Create a Service Application</h1>
</div>
<div class="navi_link4"></div>
<div style="height:0;" class="clear">&nbsp;</div>
<div class="grid_1 alpha">&nbsp;</div>
<div class="grid_16">
<div id="dashboard-widgets-wrap">
<div class="metabox-holder" id="dashboard-widgets">
<div class="postbox" id="dashboard_quick_press">
<form action="" method="post">
<h3 class="hndle"><span>Application Details</span></h3>
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
            <input id="appName" name="appName" onblur="validateAppName();" type="text" />
        </div>
        <div style=" margin-left:65px;margin-bottom:18px;margin-top:-10px;">

        </div>
    </div>
</div>
<h4>
    <label for="short3">Keyword Details</label>
</h4>
<div class="info_group">
    <div style="display:inline"></div>
    <select name="keywordStr" style="min-width:120px;width:auto; margin-left:-7px;" >
        <c:forEach items="${keywordList}" var="key">
            <option value="${key.name}-${key.shortCode}"><c:out value="${key.name}"/>-<c:out value="${key.shortCode}"/></option>
        </c:forEach>


    </select>
    <a style="padding-left:2px" href="alertCreateKeyword1.html">Create Keyword</a> </div>
<h4>
    <label for="smsupdate">&nbsp;</label>
</h4>

<h4>
    <label>Application Validity Duration</label>
</h4>
<label style="float:left;margin: 0.3em 0 1em 5em;width:100px;" class="pointer" for="startDate">Start date</label>
<div style="width:200px;margin-left:-165px" class="input_row"></div>
<div style="width:200px;margin-left:-50px" class="input_row">
    <div class="input-text-wrap">
        <input id="startDate" name="startDate" class="readonly" type="text" value="09/03/2013"/>
    </div>
</div>

<div id="expire">
    <h4>
        <label>&nbsp;</label>
    </h4>
    <label style="float:left;margin: 0.3em 0 1em 5em;width:100px;" class="pointer" for="endDate">End date</label>
    <div style="width:200px;margin-left:-165px" class="input_row"></div>
    <div style="width:200px;margin-left:-50px" class="input_row">
        <div class="input-text-wrap">
            <input id="endDate" name="endDate" style="cursor:pointer" type="text" value="09/04/2013"/>
        </div>
    </div>
</div>
<h4>
    <label>&nbsp;</label>
</h4>
<h4>
    <label for="decs">Description</label>
</h4>
<div class="input_row">
    <div class="textarea-wrap">
        <div style="margin-left:0px;" id="decsErrorDiv" class="error-req"></div>
        <textarea id="appDescription" name="appDescription"></textarea>
    </div>
</div>



<h4>
    <label for="short3">Message Scheduled Duration</label>
</h4>
<div class="info_group">
    <div style="margin-left:-69px;" class="error-req"></div>
    <select id="scheduledType" name="scheduledType" style="min-width:160px;width:auto;margin-left:-10px;" onchange="showDispatchTime();">
        <option value="HOUR">HOUR</option>
       <!-- <option value="DAY">DAY</option>
        <option value="WEEK">WEEK</option>
        <option value="MONTH">MONTH</option> -->
    </select>
</div>
<h4>
    <label for="dispatchTime">Time Interval</label>
</h4>
<div style="float:left;margin: 0px 0px 0px 55px;" class="info_group"><span id="subscriptionDispatchDateDiv">
                      <!-- <label for="subscriptionDispatchDate">Date</label>
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
                      </span><span id="subscriptionDispatchHourDiv"> -->
                      <label for="dispatchHour">Hour</label>
                      <select id="dispatchHour" name="dispatchHour" style="min-width:20px;width:auto;">
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
                      <label for="dispatchMinute">Min</label>
                      <select id="dispatchMinute" name="dispatchMinute" style="min-width:20px;width:auto;">
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


<div class="clear">&nbsp;</div>
<div id="advance" style="display:none;float:left;">
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
                            <textarea id="subscriptionSuccessfulMessage" name="subscriptionSuccessfulMessage" wrap="physical"></textarea>
                        </div>
                    </div>

                    <h4>
                        <label for="us">Unsubscribe Successful Response Message</label>
                    </h4>
                    <div class="input_row">
                        <div style="color: #c00e0c;font-weight: bold;font-size: 78%;float:right;margin-left:66px;margin-bottom:0px;"></div>
                        <div style="z-index:500" class="textarea-wrap">
                            <textarea id="unSubscriptionSuccessfulMessage" name="unSubscriptionSuccessfulMessage" wrap="physical"></textarea>
                        </div>
                    </div>

                    <h4>
                        <label for="re">Invalid Request</label>
                    </h4>
                    <div class="input_row">
                        <div style="color: #c00e0c;font-weight: bold;font-size: 78%;float:left;margin-left:66px;margin-top:-20px;overflow:visible;"></div>
                        <div class="textarea-wrap">
                            <textarea id="invalidRequestMessage" name="invalidRequestMessage" wrap="physical"></textarea>
                        </div>
                    </div>

                    <div class="clear"></div>
                </div>



            </div>
        </div>
    </div>
</div>
</div>
<h4>
    <label></label>
</h4>
<div style="padding-bottom:5px;padding-top:15px;margin-left:4.9em" class="info_group"><span style="padding-right:10px">
                  <input onclick="location.href='AppTypeSelection';" name="cancel" type="button" class="button" value="Back"/>
                  </span><span>
                  <input name="next" type="submit" class="button" value="Next" id="next"/>
                  </span></div>
<div class="clear">&nbsp;</div>
</div>
</form>
</div>
<div class="advanced"><a onclick="advanceFlow()" href="#advance" id="open">Advanced Configurations</a><a onclick="advanceFlow()" href="#" id="clo">Basic Configurations</a></div>
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