<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <script language="JavaScript" type="text/javascript" src="/resources/javascripts/datetime.js"></script>
    <script language="JavaScript" type="text/javascript" src="/resources/javascripts/jquery.bgiframe.js"></script>
    <script language="JavaScript" type="text/javascript" src="/resources/javascripts/dialog/jquery.alerts.js"></script>
    <!--[if lte IE 7]>
    <link rel='stylesheet' id='ie-css' href='/resources/css/ie.css' type='text/css'
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
            <h1>Add Candidate Details</h1>
        </div>
        <div class="navi_link4"></div>
        <div class="clear"></div>
        <div class="grid_1 alpha">&nbsp;</div>
        <div class="grid_16">
            <div id="dashboard-widgets-wrap">
                <div class="metabox-holder" id="dashboard-widgets">
                    <div class="postbox" id="dashboard_quick_press">
                        <h3 class="hndle">&nbsp;</h3>
                        <form  action="" method="post">
                            <h4 style="margin-top:23px; ">
                                <label>Voting Options</label>
                            </h4>
                            <div style="padding-left:60px;width:375px" id="code" class="dyanmic-data">
                                <div style="width:140px;float:left;text-align:left;"><label><strong>Candidate Code</strong></label><span class="mandatory"></span></div>
                                <div style="width:120px;float:left;text-align:left; margin-left:1px"><label><strong>Description</strong><label><span class="mandatory"></span></div>
                                <div style="padding-left:10px;"><img src="resources/images/16x16.gif"/></div>
                                <script type="text/javascript">
                                    var lastShownExistingElement =1;
                                </script>
                                <div style="padding-right:50px" class="error-req-right-al"></div>
                                <div style="padding-right:50px" class="error-req-right-al" id="errorsubcategory"></div>
                                <div id="divInput_0" style="width:120px;margin-left:0;float:left;" class="input-text-wrap">
                                    <input  name="candidateList[0].code" tabindex="1" type="text" value="" maxlength="10"/>
                                </div>
                                <div style="float:left;padding-left:10px">&nbsp;</div>
                                <div id="divText_0" style="width:120px;margin-left:0;float:left;" class="input-text-wrap">
                                    <input  name="candidateList[0].description" type="text" value="" maxlength="10"/>
                                </div>
                                <script type="text/javascript">
                                    var selectEle1 = 'input_0';
                                    var editState = 'false';
                                    var subCatRequired = 'true';
                                </script>
                                <div id="divInput_1" style="width:120px;margin-left:0;float:left;" class="input-text-wrap">
                                    <input  name="candidateList[1].code" tabindex="1" type="text" value="" maxlength="10"/>
                                </div>
                                <div style="float:left;padding-left:10px">&nbsp;</div>
                                <div id="divText_1" style="width:120px;margin-left:0;float:left;" class="input-text-wrap">
                                    <input  name="candidateList[1].description" type="text" value="" maxlength="10"/>
                                </div>
                                <img onclick="hideElement(true, 1, false);" style="margin-top:3px;
                                                      margin-left:10px;
                                                      float:left;width:16px;
                                                      height:16px;cursor:pointer
                                           " title="Delete" src="resources/images/cross.png" id="divDel_1">
                                <script type="text/javascript">
                                    var selectEle1 = 'input_0';
                                    var editState = 'false';
                                    var subCatRequired = 'true';
                                </script>
                                <div id="divInput_2" style="width:120px;margin-left:0;float:left;" class="input-text-wrap">
                                    <input id="input_2" name="candidateList[2].code" tabindex="1" type="text" value="" maxlength="10"/>
                                </div>
                                <div style="float:left;padding-left:10px">&nbsp;</div>
                                <div id="divText_2" style="width:120px;margin-left:0;float:left;" class="input-text-wrap">
                                    <input id="text_2" name="candidateList[2].description" type="text" value="" maxlength="10"/>
                                </div>
                                <img onclick="hideElement(true, 2, false);" style="margin-top:3px;
                                                      margin-left:10px;
                                                      float:left;width:16px;
                                                      height:16px;cursor:pointer
                                           " title="Delete" src="resources/images/cross.png" id="divDel_2">
                                <script type="text/javascript">
                                    var selectEle1 = 'input_0';
                                    var editState = 'false';
                                    var subCatRequired = 'true';
                                </script>
                                <div id="divInput_3" style="width:120px;margin-left:0;float:left;" class="input-text-wrap">
                                    <input id="input_3" name="candidateList[3].code" tabindex="1" type="text" value="" maxlength="10"/>
                                </div>
                                <div style="float:left;padding-left:10px">&nbsp;</div>
                                <div id="divText_3" style="width:120px;margin-left:0;float:left;" class="input-text-wrap">
                                    <input id="text_3" name="candidateList[3].description" type="text" value="" maxlength="10"/>
                                </div>
                                <img onclick="hideElement(true, 3, false);" style="margin-top:3px;
                                                      margin-left:10px;
                                                      float:left;width:16px;
                                                      height:16px;cursor:pointer
                                           " title="Delete" src="resources/images/cross.png" id="divDel_3">
                                <script type="text/javascript">
                                    var selectEle1 = 'input_0';
                                    var editState = 'false';
                                    var subCatRequired = 'true';
                                </script>
                                <div id="divInput_4" style="width:120px;margin-left:0;float:left;" class="input-text-wrap">
                                    <input id="input_4" name="candidateList[4].code" tabindex="1" type="text" value="" maxlength="10"/>
                                </div>
                                <div style="float:left;padding-left:10px">&nbsp;</div>
                                <div id="divText_4" style="width:120px;margin-left:0;float:left;" class="input-text-wrap">
                                    <input id="text_4" name="candidateList[4].description" type="text" value="" maxlength="10"/>
                                </div>
                                <img onclick="hideElement(true, 4, false);" style="margin-top:3px;
                                                      margin-left:10px;
                                                      float:left;width:16px;
                                                      height:16px;cursor:pointer
                                           " title="Delete" src="resources/images/cross.png" id="divDel_4">
                                <script type="text/javascript">
                                    var selectEle1 = 'input_0';
                                    var editState = 'false';
                                    var subCatRequired = 'true';
                                </script>
                                <div id="divInput_5" style="width:120px;margin-left:0;float:left;" class="input-text-wrap">
                                    <input id="input_5" name="candidateList[5].code" tabindex="1" type="text" value="" maxlength="10"/>
                                </div>
                                <div style="float:left;padding-left:10px">&nbsp;</div>
                                <div id="divText_5" style="width:120px;margin-left:0;float:left;" class="input-text-wrap">
                                    <input id="text_5" name="candidateList[4].description" type="text" value="" maxlength="10"/>
                                </div>
                                <img onclick="hideElement(true, 5, false);" style="margin-top:3px;
                                                      margin-left:10px;
                                                      float:left;width:16px;
                                                      height:16px;cursor:pointer
                                           " title="Delete" src="resources/images/cross.png" id="divDel_5">
                                <script type="text/javascript">
                                    var selectEle1 = 'input_0';
                                    var editState = 'false';
                                    var subCatRequired = 'true';
                                </script>
                                <div style="float:left;padding-left:10px">&nbsp;</div>
                                </img>
                                <script type="text/javascript">
                                    var selectEle1 = 'input_0';
                                    var editState = 'false';
                                    var subCatRequired = 'true';
                                </script>
                                <div style="float:left;padding-left:10px">&nbsp;</div>
                                </img>
                                <script type="text/javascript">
                                    var selectEle1 = 'input_0';
                                    var editState = 'false';
                                    var subCatRequired = 'true';
                                </script>
                                <div style="float:left;padding-left:10px">&nbsp;</div>
                                </img>
                                <script type="text/javascript">
                                    var selectEle1 = 'input_0';
                                    var editState = 'false';
                                    var subCatRequired = 'true';
                                </script>
                                <div style="float:left;padding-left:10px">&nbsp;</div>
                                </img>
                                <script type="text/javascript">
                                    var selectEle1 = 'input_0';
                                    var editState = 'false';
                                    var subCatRequired = 'true';
                                </script>
                                <div style="float:left;padding-left:10px">&nbsp;</div>
                                </img>
                                <script type="text/javascript">
                                    var selectEle1 = 'input_0';
                                    var editState = 'false';
                                    var subCatRequired = 'true';
                                </script>
                                <div style="float:left;padding-left:10px">&nbsp;</div>
                                </img>
                                <script type="text/javascript">
                                    var selectEle1 = 'input_0';
                                    var editState = 'false';
                                    var subCatRequired = 'true';
                                </script>
                                <div style="float:right;margin-top:-10px;margin-right:2px">
                                    <script type="text/javascript">
                                        var lastShownElementId = 1;
                                        hideAllKeywordElements(true, "false");
                                    </script>
                                    <img onclick="showElement(true, false, false)" style="width:16px;cursor:pointer;margin-left:-50px" src="resources/images/plus.png" title="Add" id="plus"/></div>
                            </div>
                            <div class="clear">&nbsp;</div>
                            <div class="clear">&nbsp;</div>
                            <h4>
                                <label></label>
                            </h4>
                            <div style="margin-top:14px;margin-bottom:12px;margin-left:5.7em" class="info_group"><span style="padding-right:10px">
                  <input onclick="location.href='votingAppStep1.html';" name="back2" type="button" class="button" value="Back" id="back2"/>
                  </span><span>
                    <input name="next" type="submit" class="button" value="Next" id="next" />
                  </span></div>
                            <div class="clear">&nbsp;</div>
                        </form>
                        <div class="clear"></div>
                    </div>
            <span>
            <input onclick="location.href='home';" name="back" type="button" class="button" value="OK" id="back"/>
            </span>
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
