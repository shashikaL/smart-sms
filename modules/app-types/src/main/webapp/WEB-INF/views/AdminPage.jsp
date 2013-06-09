<%--
  Created by IntelliJ IDEA.
  User: snej
  Date: 6/8/13
  Time: 4:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">

<head>
    <title>SmartSMS - SMS Based Application Management Platform</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
    <link href="resources/css/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body {
            background-color: #FFFFFF;
        }
    </style>
    <script type="text/javascript" src="resources/javascripts/facebox/jquery.js"></script>
    <script type="text/javascript" src="resources/javascripts/facebox/facebox.js"></script>
    <script type="text/javascript" src="resources/javascripts/application.js"></script>
    <script type="text/javascript" src="resources/javascripts/addHTMLControls.js"></script>
    <script type="text/javascript" src="resources/javascripts/orca_js.js"></script>
    <script type="text/javascript" src="resources/javascripts/validate.js"></script>

    <script language="JavaScript" type="text/javascript" src="resources/javascripts/datetime.js"></script>
    <script language="JavaScript" type="text/javascript" src="resources/javascripts/jquery.bgiframe.js"></script>
    <script language="JavaScript" type="text/javascript" src="resources/javascripts/dialog/jquery.alerts.js"></script>
    <script src="resources/javascripts/SpryTabbedPanels.js" type="text/javascript"></script>
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
                <h1>Admin Home</h1>
            </div>
            <div class="grid_1 alpha">&nbsp;</div>
            <div class="grid_16">
                <div id="dashboard-widgets-wrap">
                    <div class="metabox-holder" id="dashboard-widgets">
                        <form id="quick-press" name="personalDetail" action="smartSMS/settings/personalDataSettings.html" method="post">

                            <div class="postbox" id="dashboard_quick_press">


                                <div class="inside">
                                    <div class="clear"></div>


                                    </span></div>
                                <div class="clear">

                                    <div id="TabbedPanels1" class="TabbedPanels">
                                        <ul class="TabbedPanelsTabGroup">
                                            <li class="TabbedPanelsTab" tabindex="0">Filtered</li>
                                            <li class="TabbedPanelsTab" tabindex="0">Messages</li>
                                            <li class="TabbedPanelsTab" tabindex="0">Tab3</li>
                                        </ul>


                                        <div class="TabbedPanelsContentGroup">
                                            <div class="TabbedPanelsContent"><table class="report_table" width="600" border="10" cellpadding="10" bordercolor="#6633FF">
                                                <tr bordercolor="#000000">
                                                    <th scope="col">Application ID</th>
                                                    <th scope="col">Message</th>
                                                    <th scope="col">Owner</th>
                                                    <th scope="col">Action </th>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                    <td><select name="action" size="1">
                                                        <option>Approve</option>
                                                        <option>Block</option>
                                                        <option>Suspend User</option>
                                                    </select></td>
                                                </tr>
                                            </table></div>
                                            <div class="TabbedPanelsContent">Content 3</div>
                                            <div class="TabbedPanelsContent">Content 2</div>
                                        </div>
                                    </div>

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
<script type="text/javascript">
    var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
</script>
        </body>
</html>