// Multiple Functions to handle element OnFocus event
function UnameFocus()
{
    document.getElementById('cid').style.backgroundColor = '#FFF9EC'; //Make the textbox color lightyellow
    document.getElementById('lblcid').style.color = '#000000'; //Make the label text color black
    document.getElementById('lblcid').innerHTML = 'Correlation ID:'; //On error raised textbox focus, assign label default text
    document.getElementById('check').style.display='block';
}
function PassWordFocus()
{
    document.getElementById('password').style.backgroundColor = '#FFF9EC';
    document.getElementById('lblpass').style.color = '#000000';
    document.getElementById('lblpass').innerHTML = 'Password:';
}
function RetypePassFocus()
{
    document.getElementById('password').style.backgroundColor = '#FFF9EC';
    document.getElementById('lblretype').style.color = '#000000';
    document.getElementById('lblretype').innerHTML = 'Re-Type Pass:';
    document.getElementById('lblpass').style.color = '#000000';
    document.getElementById('lblpass').innerHTML = 'Password:';
}
function FUnameFocus()
{
    document.getElementById('url').style.backgroundColor='#FFF9EC';
    document.getElementById('lblurl').style.color = '#000000';
    document.getElementById('lblurl').innerHTML = 'MO URL:';
}
function LUnameFocus()
{
    document.getElementById('message').style.backgroundColor='#FFF9EC';
    document.getElementById('lblmessage').style.color = '#000000';
    document.getElementById('lblmessage').innerHTML = 'Message:';
}
function FUageFocus()
{
    document.getElementById('phone').style.backgroundColor='#FFF9EC';
    document.getElementById('lblphone').style.color = '#000000';
    document.getElementById('lblphone').innerHTML = 'Phone Number:';
}
function UaddressFocus()
{
    document.getElementById('address').style.backgroundColor='#FFF9EC';
    document.getElementById('staddress').style.color = '#000000';
    document.getElementById('staddress').innerHTML = 'Address:';
}
function UCityFocus()
{
    document.getElementById('city').style.backgroundColor='#FFF9EC';
    document.getElementById('usercity').style.color = '#000000';
    document.getElementById('usercity').innerHTML = 'City:';
}
function UzipFocus()
{
    document.getElementById('zipcode').style.backgroundColor='#FFF9EC';
    document.getElementById('userzip').style.color = '#000000';
    document.getElementById('userzip').innerHTML = 'Zip/Postal code:';
}
function UemailFocus()
{
    document.getElementById('email').style.backgroundColor='#FFF9EC';
    document.getElementById('ulemail').style.color = '#000000';
    document.getElementById('ulemail').innerHTML = 'Email:';
}
function UTelPhoneFocus()
{
    document.getElementById('telephone').style.backgroundColor='#FFF9EC';
    document.getElementById('ulphone').style.color = '#000000';
    document.getElementById('ulphone').innerHTML = 'Telephone:';
}
//--------------------------------------------------------//

//--------------------------------------------------------//
// Handle MO Form Validation
function RegValidate(RegForm) {
    // Declare Variables - get the textbox value and assign it into the variable
    var Uname = RegForm.elements['cid'].value;
    var FirstName = RegForm.elements['url'].value;
    var LastName = RegForm.elements['message'].value;
    var CheckAge = RegForm.elements['phone'].value;
    if (FirstName =="" && LastName =="" && CheckAge =="")
    {
        document.getElementById('url').style.backgroundColor='#FFF4F4';
        document.getElementById('url').style.border = '1px solid #CC0000';
        document.getElementById('lblurl').style.color = '#CC0000';
        document.getElementById('lblurl').innerHTML = 'Empty Field:';
        document.getElementById('message').style.backgroundColor='#FFF4F4';
        document.getElementById('message').style.border = '1px solid #CC0000';
        document.getElementById('lblmessage').style.color = '#CC0000';
        document.getElementById('lblmessage').innerHTML = 'Empty Field:';
        document.getElementById('phone').style.backgroundColor='#FFF4F4';
        document.getElementById('phone').style.border = '1px solid #CC0000';
        document.getElementById('lblphone').style.color = '#CC0000';
        document.getElementById('lblphone').innerHTML = 'Empty Field:';
        alert("Please fill in the empty fields.\n- Phone Number\n- MO URL\n- Message.");
        return false;
    }
    if (FirstName == "")
    {
        alert("You must enter mo url.");
        document.getElementById('url').style.backgroundColor='#FFF4F4';
        document.getElementById('url').style.border = '1px solid #CC0000';
        document.getElementById('lblurl').style.color = '#CC0000';
        document.getElementById('lblurl').innerHTML = 'Empty Field:';
        return false;
    }
    if (LastName == "")
    {
        alert("You must enter message.");
        document.getElementById('message').style.backgroundColor='#FFF4F4';
        document.getElementById('message').style.border = '1px solid #CC0000';
        document.getElementById('lblmessage').style.color = '#CC0000';
        document.getElementById('lblmessage').innerHTML = 'Empty Field:';
        return false;
    }
    else if (LastName.length > 160) // Check char count, if it is greater than 160 characters
    {
        alert ("The message is too long.\n Please enter a message from 1 to 160 characters.");
        document.getElementById('message').style.backgroundColor='#FFF4F4';
        document.getElementById('message').style.border = '1px solid #CC0000';
        document.getElementById('lblmessage').style.color = '#CC0000';
        document.getElementById('lblmessage').innerHTML = 'Too Long:';
        return false;
    }
    if (CheckAge == "")
    {
        alert("You must enter phone number.");
        document.getElementById('phone').style.backgroundColor='#FFF4F4';
        document.getElementById('phone').style.border = '1px solid #CC0000';
        document.getElementById('lblphone').style.color = '#CC0000';
        document.getElementById('lblphone').innerHTML = 'Empty Field:';
        return false;
    }
    if (isNaN(CheckAge) == true)
    {
        alert ("Phone number cannot contained letters and other characters.\n Please enter your phone number again.");
        document.getElementById('phone').style.backgroundColor='#FFF4F4';
        document.getElementById('phone').style.border = '1px solid #CC0000';
        document.getElementById('lblphone').style.color = '#CC0000';
        document.getElementById('lblphone').innerHTML = 'Only Number:';
        return false;
    }
    submitForm(true);
    return true;
}


function submitForm(value){
    var input2 = document.createElement("input");
    input2.setAttribute("type", "hidden");
    input2.setAttribute("id", 'isDelete');
    input2.setAttribute("name", 'isCompleted');
    input2.setAttribute("value", value);
    document.getElementById("simFormId").appendChild(input2);
    document.forms[0].submit();
}

//--------------------------------------------------------//

//--------------------------------------------------------//
// Handle the registration form hide and unhide optional fields
window.onload = function()
{
    if(document.getElementById)
    {
        var linkContainer = document.getElementById('optreqlink');
        var linebreak = linkContainer.appendChild(document.createElement('br'));
        var toggle = linkContainer.appendChild(document.createElement('a'));
        toggle.href = '#';
        //     toggle.appendChild(document.createTextNode(' Hide optional fields?'));

        toggle.onclick = function()
        {
            var linkText = this.firstChild.nodeValue;
            this.firstChild.nodeValue = (linkText == ' Hide optional fields?') ? ' Display optional fields?' : ' Hide optional fields?';

            var tmp = document.getElementsByTagName('div');
            for (var i=0;i<tmp.length;i++)
            {
                if(tmp[i].className == 'optfield')
                {
                    tmp[i].style.display = (tmp[i].style.display == 'none') ? 'block' : 'none';
                }
            }
            return false;
        }
    }
}
//--------------------------------------------------------//

//--------------------------------------------------------//
// Handle hint tooltip boxes onmouseover
var offsetfromcursorX = 12;
var offsetfromcursorY = 10;
var offsetdivfrompointerX = 10;
var offsetdivfrompointerY = 14;

document.write('<div id="hinttooltip"></div>')
document.write('<img id="hintpointer" src="resources/images/arrow_tooltip.gif">')

var ie = document.all;
var ns6 = document.getElementById && !document.all;
var enabletip=false;

if (ie||ns6)
    var tipobj=document.all? document.all["hinttooltip"] : document.getElementById? document.getElementById("hinttooltip") : "";
var pointerobj=document.all? document.all["hintpointer"] : document.getElementById? document.getElementById("hintpointer") : "";

function ietruebody()
{
    return (document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body;
}

function showtooltip(thetext, thewidth, thecolor)
{
    if (ns6||ie)
    {
        if (typeof thewidth!="undefined") tipobj.style.width=thewidth+"px";
        if (typeof thecolor!="undefined" && thecolor!="") tipobj.style.backgroundColor=thecolor;
        tipobj.innerHTML=thetext;
        tipobj.style.wordWrap='break-word';
        enabletip=true;
        return false;
    }
}

function positiontip(e)
{
    if (enabletip)
    {
        var nondefaultpos=false;
        var curX=(ns6)?e.pageX : event.clientX+ietruebody().scrollLeft;
        var curY=(ns6)?e.pageY : event.clientY+ietruebody().scrollTop;

        var winwidth=ie&&!window.opera? ietruebody().clientWidth : window.innerWidth-20;
        var winheight=ie&&!window.opera? ietruebody().clientHeight : window.innerHeight-20;

        var rightedge=ie&&!window.opera? winwidth-event.clientX-offsetfromcursorX : winwidth-e.clientX-offsetfromcursorX;
        var bottomedge=ie&&!window.opera? winheight-event.clientY-offsetfromcursorY : winheight-e.clientY-offsetfromcursorY;

        var leftedge=(offsetfromcursorX<0)? offsetfromcursorX*(-1) : -1000;

        if (rightedge<tipobj.offsetWidth)
        {
            tipobj.style.left=curX-tipobj.offsetWidth+"px";
            nondefaultpos=true;
        }
        else if (curX<leftedge)
            tipobj.style.left="5px";
        else
        {
            tipobj.style.left=curX+offsetfromcursorX-offsetdivfrompointerX+"px";
            pointerobj.style.left=curX+offsetfromcursorX+"px";
        }

        if (bottomedge<tipobj.offsetHeight)
        {
            tipobj.style.top=curY-tipobj.offsetHeight-offsetfromcursorY+"px";
            nondefaultpos=true;
        }
        else
        {
            tipobj.style.top=curY+offsetfromcursorY+offsetdivfrompointerY+"px";
            pointerobj.style.top=curY+offsetfromcursorY+"px";
        }
        tipobj.style.visibility="visible";
        if (!nondefaultpos)
            pointerobj.style.visibility="visible";
        else
            pointerobj.style.visibility="hidden";
    }
}
function hidetooltip()
{
    if (ns6||ie)
    {
        enabletip=false;
        tipobj.style.visibility="hidden";
        pointerobj.style.visibility="hidden";
        tipobj.style.left="-1000px";
        tipobj.style.backgroundColor='';
        tipobj.style.width='';
    }
}
document.onmousemove=positiontip
    //--------------------------------------------------------//