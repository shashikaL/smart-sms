function showElement(showDescBox,state) {
    var errorsubcategory = document.getElementById("errorsubcategory");
    if (state == false)   {
        j = lastShownExistingElement-1;
        subCatId="input_"+j;
        var subCategoryField = document.getElementById(subCatId);
    } else if(state == true){
        i= lastShownElementId-1;
        subCatId="input_"+i;
        var subCategoryField = document.getElementById(subCatId);
    }

    if (subCategoryField != null && subCategoryField.value == "") {
        errorsubcategory.style.display='';
    }

    else{
        errorsubcategory.style.display='none';
        if(state == true){
            document.getElementById("divInput_" + lastShownElementId).style.display = "block";
            if (showDescBox) {
                document.getElementById("divText_" + lastShownElementId).style.display = "block";
            }
            var divDel = document.getElementById("divDel_" + lastShownElementId);

            if (divDel != null) {
                divDel.style.display = "block";
            }

            var elementImg = document.getElementById("plus");
            existingfilledValues = existingElements + 1 ;
            if (i == 10 - existingfilledValues){ //Check when the 12th field is reached. Since starting from 0,
                //  it should eliminate in the 10th field
                elementImg.style.display='none';
            }

        }

        else if(state == false){
            document.getElementById("divInput_" +  lastShownExistingElement).style.display = "block";
            if (showDescBox) {
                document.getElementById("divText_" +  lastShownExistingElement).style.display = "block";
            }
            var divDel = document.getElementById("divDel_" +  lastShownExistingElement);

            if (divDel != null) {
                divDel.style.display = "block";
            }

            var elementImg = document.getElementById("plus");
            if (j == 10){ //Check when the 12th field is reached. Since starting from 0,
                //  it should eliminate in the 10th field
                elementImg.style.display='none';
            }
        }

        if (state == false)   {
            lastShownExistingElement++;
        }

        if (state == true)   {
            lastShownElementId++;
        }
    }
}

function editState(state){
    return state;
}

function hideElement(showDescBox, hide, state) {
    var elementImg = document.getElementById("plus");
    if(state == false){
        lastShownExistingElement--;
    }
    else if(state == true){
        lastShownElementId--;
    }
    elementImg.style.display='';
    var input = document.getElementById("input_" + hide);
    if (input != null) {
        input.value = "";
    }
    document.getElementById("divInput_" + hide).style.display = "none";

    if (showDescBox) {
        var text = document.getElementById("text_" + hide);
        document.getElementById("divText_" + hide).style.display = "none";
        if (text != null) {
            text.value = "";
        }
    }
    var divDel = document.getElementById("divDel_" + hide);
    if (divDel != null) {
        document.getElementById("divDel_" + hide).style.display = "none";
    }
}

function hideAllKeywordElements(showDescBox, state) {
    //  alert ("state in hiding " + state);
    var field_area = document.getElementById("code");
    var all_inputs = field_area.getElementsByTagName("input");
    var last_item = all_inputs.length - 1;

    for (i = 1; i < all_inputs.length; i++) {
        var divInput = document.getElementById("divInput_" + i);
        var input = document.getElementById("input_" + i);
        if (input != null && input.value == "") {
            divInput.style.display = "none";
            if (showDescBox) {
                document.getElementById("divText_" + i).style.display = "none";
            }
            var divDel = document.getElementById("divDel_" + i);
            if (divDel != null) {
                divDel.style.display = "none";
            }
        } else {
            if(state == false){
                lastShownExistingElement++;
            }
            else if(state == true){
                lastShownElementId++;
            }
        }
    }
}

function hideAllKeywordOnlyElements(state) {
    var field_area = document.getElementById("code");
    if (field_area != null) {
        var all_inputs = field_area.getElementsByTagName("input");
        var last_item = all_inputs.length - 1;
        for (i = 1; i < all_inputs.length; i++) {
            var divInput = document.getElementById("divInput_" + i);
            var input = document.getElementById("input_" + i);
            if (input != null && input.value == "") {
                divInput.style.display = "none";
                var divDel = document.getElementById("divDel_" + i);
                if (divDel != null) {
                    divDel.style.display = "none";
                }
                document.getElementById("breaker_" + i).style.display = "none";
            } else {
                if (state == false) {
                    lastShownExistingElement++;
                }
                else if (state == true) {
                    lastShownElementId++;
                }
            }
        }
    }
}

function hideAllElementsMyApp(durCount, keywordCount) {
    for (i = 1; i < durCount + 1; i++) {
        var divInput = document.getElementById("contentGroupId_" + i);
        for (kd = 0; kd < keywordCount + 1; kd++) {
            var input = document.getElementById("text_" + i + "_" + kd);
            if (input != null && input.value == "") {
                divInput.style.display = "none";
            }
        }
    }
}

function deleteContent(id) {
    var field_area = document.getElementById(id);
    var all_inputs = field_area.getElementsByTagName("textarea");
    for (i = 0; i < all_inputs.length; i++) {
        all_inputs[i].value = '';
    }
}

function hideBreaker(hide) {
    document.getElementById("breaker_" + hide).style.display = "none";
}

function showBreaker(state) {
    if(state == false){
        document.getElementById("breaker_" + lastShownExistingElement).style.display = "block";
    }
    else if(state == true){
        document.getElementById("breaker_" + lastShownElementId).style.display = "block";
    }
}


function getNodeValue(node) {
    if (typeof node.textContent != 'undefined') {
        return node.textContent;
    } else if (typeof node.innerText != 'undefined') {
        return node.innerText;
    } else if (typeof node.text != 'undefined') {
        return node.text;
    } else {
        switch (node.nodeType) {
            case 3:
            case 4: return node.nodeValue; break;
            case 1:
            case 11: var innerText = '';
                for (var i = 0; i < node.childNodes.length; i++) {
                    innerText += getNodeValue(node.childNodes[i]);
                }
                return innerText; break;
            default: return '';
        }
        return '';
    }
}
function advanceFlow() {
    var advance = $(document.getElementById("advance"));
    if (advance.is(':hidden')) {
        advance.show("slow");
        document.getElementById("open").style.display = 'none';
        document.getElementById("clo").style.display = 'block';
    } else {
        advance.hide("slow");
        document.getElementById("clo").style.display = 'none';
        document.getElementById("open").style.display = 'block';
    }
}

function showGrid() {
    document.writeln('<div style="background:black;" class="grid_1 alpha">1</div>' +
            '<div style="background:black;" class="grid_1">2</div>' +
            '<div style="background:black;" class="grid_1">3</div>' +
            '<div style="background:black;" class="grid_1">4</div>' +
            '<div style="background:black;" class="grid_1">5</div>' +
            '<div style="background:black;" class="grid_1">6</div>' +
            '<div style="background:black;" class="grid_1">7</div>' +
            '<div style="background:black;" class="grid_1">8</div>' +
            '<div style="background:black;" class="grid_1">9</div>' +
            '<div style="background:black;" class="grid_1">10</div>' +
            '<div style="background:black;" class="grid_1">11</div>' +
            '<div style="background:black;" class="grid_1">12</div>' +
            '<div style="background:black;" class="grid_1">13</div>' +
            '<div style="background:black;" class="grid_1">14</div>' +
            '<div style="background:black;" class="grid_1">15</div>' +
            '<div style="background:black;" class="grid_1">16</div>' +
            '<div style="background:black;" class="grid_1">17</div>' +
            '<div style="background:black;" class="grid_1 omega">18</div>');
}

function handleShowAll() {
    var showAll = document.getElementById("showAll");
    var from = document.getElementById("duartionDiv");

    if(showAll.checked) {
        from.style.display = "none";
    } else {
        from.style.display = "block";
    }
}

function selectAllOptions() {
    var subCategories = document.getElementById("subCategories");

    for(i = 0; i < subCategories.options.length; i++) {
        subCategories.options[i].selected = true;
    }
}

function textCounter(field, cntfield, maxlimit) {
    var field = document.getElementById(field);
    var cntfield = document.getElementById(cntfield);
    if (field.value.length > maxlimit) { // if too long...trim it!
        field.value = field.value.substring(0, maxlimit);
    }
    // otherwise, update 'characters left' counter
    else {
        var remLength = maxlimit - field.value.length;
        cntfield.value = remLength;
    }
}

function validate_form(thisform){
    var errorsubcategory = document.getElementById("errorsubcategory");
    if (editState == 'false') {
        if (subCatRequired == 'true'){
            if (document.getElementById(selectEle1).value == "" || document.getElementById(selectEle1).value == null){
                //       var subCategoryNull = text.subcategory_null.subcategory_null_msg;
                //      jAlert(subCategoryNull);
                errorsubcategory.style.display='';
                // jAlert("Please enter at least one sub category");
                return false;
            }
        }
    }
    else
        errorsubcategory.style.display='none';
    return true;
}

function showPopup() {
    document.getElementById("popup-terms").style.display="block";
    jQuery.facebox(jQuery("#popup-terms"));
}

//function setEndDateInDDMMYYYY() {
//    var endDate = new Date();
//    var date = endDate.getDate();
//    var month = endDate.getMonth() + 2;
//    var year = endDate.getFullYear();
//
//    if(date < 10) {
//        date = "0" + date;
//    }
//
//    if(month < 10) {
//        month = "0" + month;
//    }
//
//    return date + "/" + month + "/" + year;
//}