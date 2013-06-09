<%--
  Created by IntelliJ IDEA.
  User: Shashi
  Date: 6/9/13
  Time: 4:57 PM
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

    //    document.getElementById("input-text-wrap").style.backgroundColor="#D6D5D9";



    function toggleEditButton(buttonId) {
        var button = document.getElementById(buttonId);
        if(button.innerHTML == "Edit") {
            if(buttonId == "edit"){
                enableEdit();
            } else if(buttonId == "editBill") {
                enableEditBill();
            } else if(buttonId == "editPassword") {
                enableEditPassword();
            }
            button.innerHTML="Update";
        } else {
            if(buttonId == "editPassword") {
                if(isEmptyField()) {
                    disableEditPassword();
                }
                else {
                    changePassword();
                }

            }
            else {
                update();
            }

            button.innerHTML="Edit";
        }

    }

    function isEmptyField() {
        var txtPassword = document.getElementById("password");
        var txtNewPassword = document.getElementById("newPassword");
        var txtConfirmPassword = document.getElementById("confirmPassword");

        if(txtPassword.value.length.toString() == "0") {
            if(txtNewPassword.value.length.toString() == "0") {
                if(txtConfirmPassword.value.length.toString() == "0") {
                    return true;
                }
            }
        }

        return false;
    }

    function enableEdit(){
//        setReadonlyState(document.getElementById("regType"),false);
//        setReadonlyState(document.getElementById("RadioGroup3_2"),false);
//        setReadonlyState(document.getElementById("RadioGroup3_1"),false);
//        setReadonlyState(document.getElementById("email2"),false);
//        setReadonlyState(document.getElementById('contactPersonName'),false);
//        setReadonlyState(document.getElementById('name'),false);
        setReadonlyState(document.getElementById('email'),false);
        setReadonlyState(document.getElementById('telephone'),false);
//        setReadonlyState(document.getElementById("regCode"),false);
//        document.getElementById("regType").style.backgroundColor = "#C0C0C0";



    }
    function enableEditBill() {
        setReadonlyState(document.getElementById("billName"),false);
        setReadonlyState(document.getElementById("address"),false);
        setDisabledState(document.getElementById("RadioGroup2_1"),false);
        setDisabledState(document.getElementById("RadioGroup2_2"),false);
    }

    function enableEditPassword() {
        setReadonlyState(document.getElementById("password"),false);
        setReadonlyState(document.getElementById("newPassword"),false);
        setReadonlyState(document.getElementById("confirmPassword"),false);

    }

    function disableEditPassword() {
        setReadonlyState(document.getElementById("password"),true);
        setReadonlyState(document.getElementById("newPassword"),true);
        setReadonlyState(document.getElementById("confirmPassword"),true);

    }

    function setDisabledState(obj, state) {
        if (state) {
            obj.setAttribute('disabled', state);
        } else {
            obj.removeAttribute('disabled');
        }
    }


    function setReadonlyState(obj, state) {
        if (state) {
            obj.setAttribute('readOnly', state);
        } else {
            obj.removeAttribute('readOnly');
        }
    }

    function changePassword() {
        document.personalDetail.action="../personalData/changePassword.html";
        document.personalDetail.submit();
    }

    function update() {

        document.personalDetail.action="../personalData/update.html";
        document.personalDetail.submit();
    }

    function confirmDelete() {
        var confirmationTxt = 'Are you sure, you want to remove this number?';
        jConfirm(confirmationTxt, 'Confirmation Dialog', function(r) {
            if(r == true) {
            }
        });
    }

</script>
<div id="header2">
    <p id="tagline"><br/>
        <br/>
    </p>
    <div style="clear:both;">&nbsp;</div>
    <div id="body">
        <div class="sub_heading">
            <h1>My Profile</h1>
        </div>
        <div class="grid_1 alpha">&nbsp;</div>
        <div class="grid_16">
            <div id="dashboard-widgets-wrap">
                <div class="metabox-holder" id="dashboard-widgets">
                    <form id="quick-press" name="personalDetail" action="resources/settings/personalDataSettings.html" method="post">

                        <div class="postbox" id="dashboard_quick_press">
                            <h3 class="hndle"><span>Change Password</span></h3>
                            <div class="button_edit"><a id="editPassword" href="javascript:toggleEditButton('editPassword')">Edit</a></div>
                            <div class="inside">
                                <div class="clear"></div>
                                <h4>
                                    <label for="password">Old Password</label>
                                </h4>
                                <div class="input_row">
                                    <div></div>
                                    <div class="input-text-wrap">
                                        <input id="password" name="password" name="password" readonly="readonly" type="password" value=""/>
                                    </div>
                                    <div style="margin-left:65px;margin-bottom:18px;margin-top:-10px;">
                                        <label for="password"><span class="textbox_hint">Password must be minimum of 8 characters with at least one letter, </span></label>
                                    </div>
                                </div>
                                <h4>
                                    <label for="newPassword">New Password</label>
                                </h4>
                                <div class="input_row">
                                    <div></div>
                                    <div class="input-text-wrap">
                                        <input id="newPassword" name="newPassword" name="newPassword" readonly="readonly" type="password" value=""/>
                                    </div>
                                </div>
                                <div></div>
                                <h4>
                                    <label for="confirmPassword">Retype Password</label>
                                </h4>
                                <div class="input_row">
                                    <div></div>
                                    <div class="input-text-wrap">
                                        <input id="confirmPassword" name="confirmPassword" name="confirmPassword" readonly="readonly" type="password" value=""/>
                                    </div>
                                </div>
                                <div></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </form>
                    <div style="text-align:center; width:100%"><span style="padding-right:10px">
                <input onclick="location.href='mySettings.html';" name="back" style="width:50px;" tabindex="5" type="button" class="button" value="Back" id="back"/>
                </span><span style="padding-right:10px">
                <input onclick="location.href='myProfile.html';" name="back" style="width:50px;" tabindex="5" type="button" class="button" value="Reset" id="reset"/>
                </span><span>
                <input onclick="location.href='home.html';" name="next" style="width:50px;" tabindex="6" type="button" class="button" value="Cancel" id="next"/>
                </span></div>
                    <div class="clear">&nbsp;</div>
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
