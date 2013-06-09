<%--
  Created by IntelliJ IDEA.
  User: Shashi
  Date: 6/9/13
  Time: 7:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <script type="text/javascript" src="resources/javascripts/header.js" language="javascript"></script>
    <div id="header2">
        <p id="tagline"><br/>
            <br/>
        </p>
        <div style="clear:both;">&nbsp;</div>
        <div id="body">
            <div class="sub_heading">
                <h1>Manage Application Content</h1>
            </div>
            <div class="clear"></div>
            <div class="grid_1 alpha">&nbsp;</div>
            <div class="grid_16">
                <div id="dashboard-widgets-wrap">
                    <div class="metabox-holder" id="dashboard-widgets">
                        <div class="postbox" id="dashboard_quick_press">
                            <h3 class="hndle"><span>Manage Content</span></h3>
                            <div class="inside">
                                <h4>
                                    <label>
                                        Send New Alert Messages
                                        <div class="clear">&nbsp;</div>
                                    </label>
                                </h4>
                                <form action="" method="post">
                                    <div class="clear">&nbsp;</div>
                                    <div id="container" style="float:left;margin: 0 0 1em 0;width:650px;padding-left:10px">
                                        <div id="code">
                                            <div style="width:400px;">
                                                <div style="width:160px;float:left;text-align:left;"><label><strong>Keyword</strong></label></div>
                                                <div style="width:140px;float:left;text-align:left; padding-left:10px"><label><strong>Message Content</strong></label></div>
                                                <div style="padding-left:10px;float:left;"><img src="resourcess/images/16x16.gif"/></div>
                                            </div>
                                            <div style="width:650px;">
                                                <div style="padding-right:50px" class="error-req-right-al"></div>
                                                <div class="clear">&nbsp;</div>
                                                <div id="divInput_0" style="width:140px;margin-left:0;float:left; margin-top:10px" class="input-text-wrap">
                                                    <input id="input_0" name="alertKeywordDetails[0].keyword" disabled="disabled" readonly="readonly" type="text" value="mykey2"/>
                                                </div>
                                                <div style="width:10px;float:left;padding-left:10px">&nbsp;</div>
                                                <div id="divText_0" style="width:420px;margin-left:0;float:left;" class="textarea-wrap">
                                                    <textarea id="text_0" name="appMessage" style="overflow:auto;" onmouseover="textCounter('text_0','remLen_0', '140')" onkeyup="textCounter('text_0','remLen_0', '140')" wrap="physical" name="txt_0">
                                                    </textarea>
                                                </div>
                                                <input id="remLen_0" style="float:left;background-color:white;text-align:right" value="140" type="text" readonly="readonly" type="text" value="" size="3" maxlength="3"/>
                                            </div>
                                        </div>
                                    </div>
                                    <script type="text/javascript">
                                        function show() {
                                            for (i = 1; i <= 0; i++) {
                                                var ele = document.getElementById("contentGroupId_" + i);
                                                if (ele.style.display == "none") {
                                                    $("#contentGroupId_" + i).show("slow");
                                                    i = 100;
                                                }
                                            }
                                        }
                                        function hide(id) {
                                            deleteContent(id);
                                            $("#" + id).hide("slow");
                                        }
                                        hideAllElementsMyApp(0, 0);
                                    </script>
                                    <div class="clear">&nbsp;</div>
                                    <h4>
                                        <label></label>
                                    </h4>
                                    <div style="padding-left:260px" class="info"><span style="padding-right:10px">
                      <input name="submit" type="submit" class="button" value="Submit"/>
                      </span>
                                        <input onclick="location.href='myApplication.html'" name="back" type="button" class="button" value="Cancel"/>
                                    </div>
                                    <div class="advanced_config_section" id="advanced_config_section"></div>
                                </form>
                                <div class="clear">&nbsp;</div>
                            </div>
                            <div class="clear">&nbsp;</div>
                        </div>
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
<script type="text/javascript" src="resources/javascripts/footer.js" language="javascript"></script>
</div>
</body>
</html>
