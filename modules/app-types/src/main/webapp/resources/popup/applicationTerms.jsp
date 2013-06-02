<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!--
(C) Copyright 2009-2010 hSenid Software International (Pvt) Limited.
All Rights Reserved.

These materials are unpublished, proprietary, confidential source code of
hSenid Software International (Pvt) Limited and constitute a TRADE SECRET
of hSenid Software International (Pvt) Limited.

hSenid Software International (Pvt) Limited retains all title to and intellectual
property rights in these materials.
-->

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
<h3 class='hndle'><span><fmt:message key="terms.and.condition"/></span></h3>

<div class="inside" style="margin:20px; max-height:400px;overflow:auto;">
<div>

<br>
<p><font size="2" face="Verdana"><b>Terms of Service</b></font> <br><br>
</p>
<p><font size="2" face="Verdana"><b>Basic Terms</b></font> <br>
</p>
<p><font size="2" face="Verdana">
                            You are responsible for your use of
                        the Services, for any content you create and post to the Services, and
                        for any consequences thereof. The Content you create, post, or display
                        will be able to be viewed by other users in your group. You should only
                        provide Content that you are comfortable sharing with others under these
                        Terms.</font> <br></p>
                        <p><font size="2" face="Verdana">You may use the Services only if you
                        can form a binding contract with hSenid Mobile and are not a person
                        barred from receiving services under the laws
                        or other applicable jurisdiction. You may use the Services only in compliance
                        with these Terms and all applicable local, state, national, and international
                        laws, rules and regulations.</font> <br></p>
                        <p><font size="2" face="Verdana">The Services that Soltura provides
                        are always evolving and the form and nature of the Services that Soltura
                        provides may change from time to time without prior notice to you. </font> <br>
                        </p><br>
                        <p id="privacy"><font size="2" face="Verdana"><b>Privacy</b></font> <br></p>
                        <p><font size="2" face="Verdana">Any information that you provide to
                        Soltura is subject to our Privacy
                        Policy, which governs our
                        collection and use of your information. These communications are considered
                        part of the Services and your Soltura account, which you may not be
                        able to opt-out from receiving.</font> <br></p>   <br>
                        <p><font size="2" face="Verdana"><b>Passwords</b></font> <br>
                        </p>
                        <p><font size="2" face="Verdana">You are responsible for safeguarding
                        the password that you use to access the Services and for any activities
                        or actions under your password. We encourage you to use strong
                        passwords (passwords that use a combination of upper and lower case
                        letters, numbers and symbols) with your account. Soltura cannot and
                        will not be liable for any loss or damage arising from your failure
                        to comply with the above requirements.</font> <br></p>  <br>
                        <p><font size="2" face="Verdana"><b>Content on the Services</b></font> <br>
                        </p>
                        <p><font size="2" face="Verdana">All Content, whether publicly posted
                        or privately transmitted, is the sole responsibility of the person who
                        originated such Content. We may not monitor or control the Content posted
                        via the Services and, we cannot take responsibility for such Content.
                        Any use or reliance on any Content or materials posted via the Services
                        or obtained by you through the Services is at your own risk.</font></p>
                        <p><font size="2" face="Verdana">We do not endorse, support, represent
                        or guarantee the completeness, truthfulness, accuracy, or reliability
                        of any Content or communications posted via the Services or endorse
                        any opinions expressed via the Services. You understand that by using
                        the Services, you may be exposed to Content that might be offensive,
                        harmful, inaccurate or otherwise inappropriate, or in some cases, postings
                        that have been mislabeled or are otherwise deceptive. Under no circumstances
                        will Soltura be liable in any way for any Content, including, but not
                        limited to, any errors or omissions in any Content, or any loss or damage
                        of any kind incurred as a result of the use of any Content posted, emailed,
                        transmitted or otherwise made available via the Services or broadcast
                        elsewhere.</font></p> <br>
                        <p><font size="2" face="Verdana"><b>Your Rights</b></font> <br>
                        </p>
                        <p><font size="2" face="Verdana">You retain your rights to any Content
                        you submit, post or display on or through the Services. By submitting,
                        posting or displaying Content on or through the Services, you grant
                        us a worldwide, non-exclusive, royalty-free license (with the right
                        to sublicense) to use, copy, reproduce, process, adapt, modify, publish,
                        transmit, display and distribute such Content in any and all media or
                        distribution methods (now known or later developed).</font> <br>
                        </p>
                        <p><font size="2" face="Verdana">We may modify or adapt your Content
                        in order to transmit, display or distribute it over computer networks
                        and in various media and/or make changes to your Content as are necessary
                        to conform and adapt that Content to any requirements or limitations
                        of any networks, devices, services or media.</font> <br></p><br>
                        <p><font size="2" face="Verdana"><b>Soltura Rights</b></font> <br>
                        </p>
                        <p><font size="2" face="Verdana">All right, title, and interest in and
                        to the Services (excluding Content provided by users) are and will remain
                        the exclusive property of Soltura and its licensors. The Services are
                        protected by copyright, trademark. Nothing in the Terms gives you a
                        right to use the Soltura name or any of the Soltura trademarks, logos,
                        domain names, and other distinctive brand features. Any feedback, comments,
                        or suggestions you may provide regarding Soltura, or the Services is
                        entirely voluntary and we will be free to use such feedback, comments
                        or suggestions as we see fit and without any obligation to you.</font> <br>
                        </p> <br>
                        <p><font size="2" face="Verdana"><b>Restrictions on Content and Use
                        of the Services</b></font> <br></p>
                        <p><font size="2" face="Verdana">We reserve the right at all times (but
                        will not have an obligation) to remove or refuse to distribute any Content
                        on the Services and to terminate users or reclaim usernames. Please
                        review the Soltura Rules (which are part of these Terms) to better understand what is prohibited on the Service.
                        We also reserve the right to access, read, preserve, and disclose any
                        information as we reasonably believe is necessary to (i) satisfy any
                        applicable law, regulation, legal process or governmental request, (ii)
                        enforce the Terms, including investigation of potential violations hereof,
                        (iii) detect, prevent, or otherwise address fraud, security or technical
                        issues, (iv) respond to user support requests, or (v) protect the rights,
                        property or safety of Soltura, its users and the public.</font> <br>
                        </p><br>
                        <p><font size="2" face="Verdana">Except as permitted through the Services
                        (or these Terms), you have to use the Soltura API if you want to reproduce, modify, create derivative works, distribute, sell, transfer,
                        publicly display, publicly perform, transmit, or otherwise use the Content
                        or Services.</font> <br></p><br>
                        <p><font size="2" face="Verdana">You may not do any of the following
                        while accessing or using the Services: (i) access, tamper with, or use
                        non-public areas of the Services, Soltura computer systems, or the technical
                        delivery systems of Soltura providers; (ii) probe, scan, or test the
                        vulnerability of any system or network or breach or circumvent any security
                        or authentication measures; (iii) access or search or attempt to access
                        or search the Services by any means (automated or otherwise) other than
                        through our currently available, published interfaces that are provided
                        by Soltura (and only pursuant to those terms and conditions), unless
                        you have been specifically allowed to do so in a separate agreement
                        with Soltura (iv) forge any TCP/IP packet header or any part of the
                        header information in any email or posting, or in any way use the Services
                        to send altered, deceptive or false source-identifying information;
                        or (v) interfere with, or disrupt, (or attempt to do so), the access
                        of any user, host or network, including, without limitation, sending
                        a virus, overloading, flooding, spamming, mail-bombing the Services,
                        or by scripting the creation of Content in such a manner as to interfere
                        with or create an undue burden on the Services.</font> <br></p><br>
                        <p><font size="2" face="Verdana"><b>Copyright Policy</b></font> <br>
                        </p>
                        <p><font size="2" face="Verdana">Soltura respects the intellectual property
                        rights of others and expects users of the Services to do the same. We
                        will respond to notices of alleged copyright infringement that comply
                        with applicable law and are properly provided to us. If you believe
                        that your Content has been copied in a way that constitutes copyright
                        infringement, please provide us with the following information: (i)
                        a physical or electronic signature of the copyright owner or a person
                        authorized to act on their behalf; (ii) identification of the copyrighted
                        work claimed to have been infringed; (iii) identification of the material
                        that is claimed to be infringing or to be the subject of infringing
                        activity and that is to be removed or access to which is to be disabled,
                        and information reasonably sufficient to permit us to locate the material;
                        (iv) your contact information, including your address, telephone number,
                        and an email address; (v) a statement by you that you have a good faith
                        belief that use of the material in the manner complained of is not authorized
                        by the copyright owner, its agent, or the law; and (vi) a statement
                        that the information in the notification is accurate, and, under penalty
                        of perjury, that you are authorized to act on behalf of the copyright
                        owner.</font> <br></p><br>
                        <p><font size="2" face="Verdana">We reserve the right to remove Content
                        alleged to be infringing without prior notice and at our sole discretion.
                        In appropriate circumstances, Soltura will also terminate a user�s
                        account if the user is determined to be a repeat infringer. </font></p>
                        <p><font size="2" face="Verdana"><i> </i></font></p><br>
                        <p><font size="2" face="Verdana"><b>The Services are Available
                        AS-IS</b></font> <br></p>
                        <p><font size="2" face="Verdana">Your access to and use of the Services
                        or any Content is at your own risk. You understand and agree that the
                        Services is provided to you on an AS IS and AS AVAILABLE
                        basis. Without limiting the foregoing, Soltura AND ITS PARTNERS DISCLAIM
                        ANY WARRANTIES, EXPRESS OR IMPLIED, OF MERCHANTABILITY, FITNESS FOR
                        A PARTICULAR PURPOSE, OR NON-INFRINGEMENT. We make no warranty and disclaim
                        all responsibility and liability for the completeness, accuracy, availability,
                        timeliness, security or reliability of the Services or any content thereon.
                        Soltura will not be responsible or liable for any harm to your computer
                        system, loss of data, or other harm that results from your access to
                        or use of the Services, or any Content. You also agree that Soltura
                        has no responsibility or liability for the deletion of, or the failure
                        to store or to transmit, any Content and other communications maintained
                        by the Services. We make no warranty that the Services will meet your
                        requirements or be available on an uninterrupted, secure, or error-free
                        basis. No advice or information, whether oral or written, obtained from
                        Soltura or through the Services, will create any warranty not expressly
                        made herein.</font> <br></p><br>
                        <p><font size="2" face="Verdana"><b>Limitation of Liability</b></font></p>
                        <p><font size="2" face="Verdana">TO THE MAXIMUM EXTENT PERMITTED BY
                        APPLICABLE LAW, Soltura AND ITS SUBSIDIARIES, AFFILIATES, OFFICERS,
                        EMPLOYEES, AGENTS, PARTNERS AND LICENSORS WILL NOT BE LIABLE FOR ANY
                        DIRECT, INDIRECT, INCIDENTAL, SPECIAL, CONSEQUENTIAL OR PUNITIVE DAMAGES,
                        INCLUDING WITHOUT LIMITATION, LOSS OF PROFITS, DATA, USE, GOOD-WILL,
                        OR OTHER INTANGIBLE LOSSES, RESULTING FROM (i) YOUR ACCESS TO OR USE
                        OF OR INABILITY TO ACCESS OR USE THE SERVICES; (ii) ANY CONDUCT OR CONTENT
                        OF ANY THIRD PARTY ON THE SERVICES, INCLUDING WITHOUT LIMITATION, ANY
                        DEFAMATORY, OFFENSIVE OR ILLEGAL CONDUCT OF OTHER USERS OR THIRD PARTIES;
                        (iii) ANY CONTENT OBTAINED FROM THE SERVICES; AND (iv) UNAUTHORIZED
                        ACCESS, USE OR ALTERATION OF YOUR TRANSMISSIONS OR CONTENT, WHETHER
                        BASED ON WARRANTY, CONTRACT, TORT (INCLUDING NEGLIGENCE) OR ANY OTHER
                        LEGAL THEORY, WHETHER OR NOT Soltura HAS BEEN INFORMED OF THE POSSIBILITY
                        OF SUCH DAMAGE, AND EVEN IF A REMEDY SET FORTH HEREIN IS FOUND TO HAVE
                        FAILED OF ITS ESSENTIAL PURPOSE.</font> <br></p><br>
                        <p><font size="2" face="Verdana"><b>Exclusions</b></font></p>
                        <p><font size="2" face="Verdana">Some jurisdictions do not allow the
                        exclusion of certain warranties or the exclusion or limitation of liability
                        for consequential or incidental damages, so the limitations above may
                        not apply to you.</font> <br></p><br>
                        <p><font size="2" face="Verdana"><b>Entire Agreement</b></font></p>
                        <p><font size="2" face="Verdana">These Terms, the Soltura Rules and
                        our Privacy Policy are the entire and exclusive agreement between Soltura
                        and you regarding the Services (excluding any services for which you
                        have a separate agreement with Soltura that is explicitly in addition
                        or in place of these Terms), and these Terms supersede and replace any
                        prior agreements between Soltura and you regarding the Services.</font> <br>
                        <br></p><br>
<%--<p><font size="2" face="Verdana">Soltura Definition</font> <br>--%>
<%--</p>--%>
<%--<p><font size="2" face="Verdana">mChoice<sup>TM</sup> Soltura is a value--%>
<%--added services platform which enables subscribers and content providers--%>
<%--to create divers VAS facilitating the formation of focused interest--%>
<%--groups, resulting in a massive influx of messages. With mChoice<sup>TM</sup>--%>
<%--Soltura the operator enables a wide range of VAS offering subscribers�--%>
<%--an unlimited choice in diverse applications. Through a seamless set--%>
<%--of tools and controls, the operator allows technical and non technical--%>
<%--subscribers to create their own VAS applications enabling thousands--%>
<%--of such communities in their mobile network. </font> <br></p>--%>
<%--<p><font size="2" face="Verdana">Tag line� </font> <br></p>--%>
<%--<p><font size="2" face="Verdana">mChoice<sup>TM</sup> Soltura � Freedom--%>
<%--to Explore </font></p>--%>
</div>
</div>
</div>
</div>
</div>
<div style="text-align:center;">

    <form action="confirm.html" name="agreementForm" method="post">
        <%--<input type="checkbox" name="checkBoxTick" id="checkBoxTick"--%>
        <%--tabindex="1" style="border:0"/>--%>
        <%--<label for="checkBoxTick" style="margin-left:10px">I Agree</label><fmt:message--%>
        <%--key='blank'/>--%>
                                 <span>
                                     <jsp:element name="input">
                                        <jsp:attribute name="type">button</jsp:attribute>
                                        <jsp:attribute name="name">ok</jsp:attribute>
                                        <jsp:attribute name="id">ok</jsp:attribute>
                                        <jsp:attribute name="value"><fmt:message key='i.agree'/></jsp:attribute>
                                        <jsp:attribute name="class">button</jsp:attribute>
                                        <jsp:attribute name="style">width:50px;</jsp:attribute>
                                        <jsp:attribute name="onclick">submitForm()</jsp:attribute>
                                    </jsp:element>
                                     <%--<input type="button" name="ok" id="ok" value="I Agree" class="button" style="width:50px;"--%>
                                           <%--onclick="submitForm()"/>--%>
                                </span>
        <%--<span>--%>
        <%--<input type="button" name="cancel" id="cancel" value="Cancel" class="button"--%>
        <%--style="width:70px;"/>--%>
        <%--</span>--%>
    </form>
</div>
</div>
<!-- wrap -->
<div class="clear"></div>
</div>
</div>