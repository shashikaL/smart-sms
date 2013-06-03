<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<script type="text/javascript">
    function echeck(str) {

        var at = "@";
        var dot = ".";
        var lat = str.indexOf(at);
        var lstr = str.length;
        var ldot = str.indexOf(dot);
        if (str.indexOf(at) == -1) {
            return true;
        } else if (str.indexOf(at) == -1 || str.indexOf(at) == 0 || str.indexOf(at) == lstr) {
            return true;
        } else if (str.indexOf(dot) == -1 || str.indexOf(dot) == 0 || str.indexOf(dot) == lstr) {
            return true;
        } else if (str.indexOf(" ") != -1) {
            return true;
        }
        return false;
    }

    function ValidateForm() {
        var val = document.contactForm.name;
        var error = true;
        if ((val.value == null) || (val.value == "")) {
            document.getElementById("nameError").innerHTML = '<div style="margin-top:-12px">Please Enter Your Name</div>';
            val.focus();
            error = false;
        } else {
            document.getElementById("nameError").innerHTML = '';
        }
        val = document.contactForm.email;
        if ((val.value == null) || (val.value == "")) {
            document.getElementById("emailError").innerHTML = '<div style="margin-top:-12px">Please Enter Your E-Mail Address</div>';
            val.focus();
            error = false;
        } else if (echeck(val.value)) {
            document.getElementById("emailError").innerHTML = '<div style="margin-top:-12px">E-mail Adress is Invalid</div>';
            val.focus();
            error = false;
        } else {
            document.getElementById("emailError").innerHTML = '';
        }
        val = document.contactForm.msg;
        if ((val.value == null) || (val.value == "")) {
            document.getElementById("msgError").innerHTML = '<div style="margin-top:-12px">Please Add a Message to be Sent</div>';
            val.focus();
            error = false;
        } else {
            document.getElementById("msgError").innerHTML = '';
        }
        return error;
    }
</script>

<div id="body" style="width:auto;height:auto;">
    <div class="wrap">
        <div id="dashboard-widgets-wrap">
            <div id='dashboard-widgets' class='metabox-holder' style="width:550px">
                <div id="dashboard_quick_press" class="postbox ">
                    <h3 class='hndle'><span>Contact Us</span></h3>

                    <div class="inside" style="margin:20px">
                        <div style="padding-bottom:10px">
                            This version is hosted only for demonstration purposes for more details you can visit our
                            website <a href="http://www.hsenidmobile.com/"
                                       target="_blank">http://www.hsenidmobile.com/</a>
                            or visit our forum
                            <a href="http://soltura.hsenidmobile.com/"
                               target="_blank">http://soltura.hsenidmobile.com/</a>,
                            or leave us a message with your concern and contact details we will contact you back.<br/>                            
                        </div>
                        <div class="clear"> <br></div>
                        <form:form action="send.html" commandName="signin" name="contactForm" id="quick-press"
                                   method="post" onSubmit="return ValidateForm()">

                            <h4 style="width:75px"><label for="name">Name <font color="red" size="2">*</font></label>
                            </h4>

                            <div class="input_row">
                                <div id="nameError" class="error-req" style="margin-top:-3px"></div>
                                <div class="input-text-wrap">
                                    <form:input path="username" name="name" id="name"/>
                                </div>
                            </div>

                            <h4 style="width:75px"><label for="email">Email <font color="red" size="2">*</font></label>
                            </h4>

                            <div class="input_row">
                                <div id="emailError" class="error-req" style="margin-top:-3px"></div>
                                <div class="input-text-wrap">
                                    <form:input path="email" name="email" id="email" tabindex="2"/>
                                </div>
                            </div>

                            <h4 style="width:75px"><label for="sub">Subject </label></h4>

                            <div class="input_row">
                                <div class="input-text-wrap">
                                    <form:input path="subject" name="sub" id="sub" tabindex="3"/>
                                </div>
                            </div>

                            <h4 style="width:75px"><label for="com">Company </label></h4>

                            <div class="input_row">
                                <div class="input-text-wrap">
                                    <form:input path="company" name="com" id="com" tabindex="3"/>
                                </div>
                            </div>

                            <h4 style="width:75px"><label for="con">Country </label></h4>

                            <div class="input_row">
                                <div class="input-text-wrap">
                                    <form:input path="country" name="con" id="con" tabindex="3"/>
                                </div>
                            </div>

                            <h4 style="width:75px"><label for="pho">Contact # </label></h4>

                            <div class="input_row">
                                <div class="input-text-wrap">
                                    <form:input path="contact" name="pho" id="pho" tabindex="3"/>
                                </div>
                            </div>

                            <h4 style="width:75px"><label for="msg">Message <font color="red" size="2">*</font></label>
                            </h4>

                            <div class="input_row">
                                <div id="msgError" class="error-req" style="margin-top:-3px"></div>
                                <div class="textarea-wrap">
                                    <form:textarea path="message" name="msg" id="msg" tabindex="3" style="border:none"
                                                   rows="4"
                                                   cols="30" width="100%"/>
                                </div>
                            </div>

                            <h4 style="width:75px"><label>&nbsp;</label></h4>

                            <div class="info_group">
                                <input type="submit" name="send" id="send" value="Send" class="button"
                                       tabindex="5" style="width:70px;"/>
                            </div>
                        </form:form>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- dashboard-widgets-wrap -->
    </div>
    <!-- wrap -->
</div>
<!-- body-content -->