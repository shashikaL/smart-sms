
function addVoteField(area, field, limit, path) {
    if (!document.getElementById) return; //Prevent older browsers from getting any further.
    var field_area = document.getElementById(area);
    var all_inputs = field_area.getElementsByTagName("input"); //Get all the input fields in the given area.
    //Find the count of the last element of the list. It will be in the format '<field><number>'. If the
    //		field given in the argument is 'friend_' the last id will be 'friend_4'.
    var last_item = all_inputs.length - 1;
    var last = all_inputs[last_item].id;
    var count = Number(last.split("_")[1]) + 1;


    //If the maximum number of elements have been reached, exit the function.
    //		If the given limit is lower than 0, infinite number of fields can be created.
    if (count > limit && limit > 0) return;
    if (document.createElement) { //W3C Dom method.

        var input = document.createElement("div");
        //        var img = document.createElement("img");

        input.innerHTML +=
        
        "<div class='input-text-wrap' style='width:140px;margin-left:0;float:left'>" +
        "<input type='text' name='selectedValues[" + count + "].keyword' id='" + (field + count) + "'/>" +
        "</div>" +
        "<div style='width:10px;float:left;'>&nbsp;</div>" +
        "<div class='input-text-wrap' style='width:140px;margin-left:0;float:left'>" +
        "<textarea name='selectedValues[" + count + "].descriptionEn' id='" + (field + count) + "'> </textarea>" +
        "</div>" +
        "<div style='background:url(/" + path + "/images/X.gif) no-repeat;margin-top:3px;margin-left:10px;float:left;width:16px;height:16px;cursor:pointer' onclick='this.parentNode.parentNode.removeChild(this.parentNode);'>&nbsp;</div>";

        // div style
        input.style.width = "400px";
        input.style.paddingTop = "5px";        
        // img style
        /*img.src = "../../images/X.gif";
         img.setAttribute('title', 'Remove');
         img.style.cursor = "pointer";
         img.onclick = function() {
         this.parentNode.parentNode.removeChild(this.parentNode.parentElement());
         };*/

        //        input.appendChild(img);
        field_area.appendChild(input);
    } else { //Older Method
        input.innerHTML +=
        "<div class='input-text-wrap' style='width:140px;margin-left:0;float:left'>" +
        "<input type='text' name='" + (field + count) + "' id='" + (field + count) + "'/>" +
        "</div>" +
        "<div style='width:10px;float:left;'>&nbsp;</div>" +
        "<div class='input-text-wrap' style='width:140px;margin-left:0;float:left'>" +
        "<input type='text' name='" + (field + count) + "' id='" + (field + count) + "'/>" +
        "</div>" +
        "<div style='background:url(../../images/X.gif) no-repeat;margin-top:3px;margin-left:10px;float:left;width:16px;height:16px;cursor:pointer' onclick='this.parentNode.parentNode.removeChild(this.parentNode);'>&nbsp;</div>";

    }
}

function addAnswerField(area, field, limit) {
    if (!document.getElementById) return; //Prevent older browsers from getting any further.
    var field_area = document.getElementById(area);
    var all_inputs = field_area.getElementsByTagName("input"); //Get all the input fields in the given area.
    //Find the count of the last element of the list. It will be in the format '<field><number>'. If the
    //		field given in the argument is 'friend_' the last id will be 'friend_4'.
    var last_item = all_inputs.length - 1;
    var last = all_inputs[last_item].id;
    var count = Number(last.split("_")[1]) + 1;

    //If the maximum number of elements have been reached, exit the function.
    //		If the given limit is lower than 0, infinite number of fields can be created.
    if (count > limit && limit > 0) return;

    if (document.createElement) { //W3C Dom method.

        var input = document.createElement("div");
        //        var img = document.createElement("img");

        input.innerHTML +=
        "<div class='input-text-wrap' style='width:120px;margin-left:0;float:left'>" +
        "<input type='text' name='" + (field + count) + "' id='" + (field + count) + "'/>" +
        "</div>" +
        "<div style='width:10px;float:left;'>&nbsp;</div>" +
        "<div class='input-text-wrap' style='width:120px;margin-left:0;float:left'>" +
        "<input type='text' name='" + (field + count) + "' id='" + (field + count) + "'/>" +
        "</div>" +
        "<div class='input-text-wrap' style='width:60px;margin-left:0;float:left;border:none;text-align:center'>" +
        "<input type='checkbox' name='" + (field + count) + "' id='" + (field + count) + "' style='border:0'/>" +
        "</div>" +
        "<div style='background:url(../../images/X.gif) no-repeat;margin-top:3px;float:left;width:16px;height:16px;cursor:pointer' onclick='this.parentNode.parentNode.removeChild(this.parentNode);'>&nbsp;</div>";

        // div style
        input.style.width = "350px";
        input.style.paddingTop = "5px";

        // img style
        /*img.src = "../../images/X.gif";
         img.setAttribute('title', 'Remove');
         img.style.cursor = "pointer";
         img.onclick = function() {
         this.parentNode.parentNode.removeChild(this.parentNode.parentElement());
         };*/

        //        input.appendChild(img);
        field_area.appendChild(input);
    } else { //Older Method
        input.innerHTML +=
        "<div class='input-text-wrap' style='width:120px;margin-left:0;float:left'>" +
        "<input type='text' name='" + (field + count) + "' id='" + (field + count) + "'/>" +
        "</div>" +
        "<div style='width:10px;float:left;'>&nbsp;</div>" +
        "<div class='input-text-wrap' style='width:120px;margin-left:0;float:left'>" +
        "<input type='text' name='" + (field + count) + "' id='" + (field + count) + "'/>" +
        "</div>" +
        "<div class='input-text-wrap' style='width:60px;margin-left:0;float:left;border:none;text-align:center'>" +
        "<input type='checkbox' name='" + (field + count) + "' id='" + (field + count) + "' style='border:0'/>" +
        "</div>" +
        "<div style='background:url(../../images/X.gif) no-repeat;margin-top:3px;float:left;width:16px;height:16px;cursor:pointer' onclick='this.parentNode.parentNode.removeChild(this.parentNode);'>&nbsp;</div>";

    }
}