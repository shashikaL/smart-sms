var timePeriod = 6000;
var status = true;
var timeoutID;
var messagesPerPage = 10;
var maxPagingTag = parseInt(10);
var maxPaginSpantag = parseInt(12);
var initialLoad;
var previous;
var next;
var textMessage;
var firstPagingTag;
var crntPage=1;
var numOfCategories;
var rightTag;
var leftTag;
var pleaseSelectMsg;


// TODO: Find usage of checkAll function


/**
 ** This function will execute when the user clicks on the auto refresh on/off link. Default value of the Status is true
 */
function autoPageRefreshOnOff(appId, requestServiceId) {
    if (status == 'true') {
        clearTimer ();
    }
    else if (status == 'false'){
        status = true;
        commonPageRefresh(appId, requestServiceId, crntPage);
    } else if (status){
        clearTimer ();

    } else {
        status = true;
        commonPageRefresh(appId, requestServiceId, crntPage);
    }
}

/**
 ** Clear auto refresh timer
 */
function clearTimer () {
    clearInterval(timeoutID);
    document.getElementById('off').style.fontWeight = 'bold';
    document.getElementById('on').style.fontWeight = 'normal';
    status = false;
}

// TODO: can merge this and the next functions together. For that, call this function from the jspx script tag
/**
 ** page auto refresh
 */
function defaultAutoPageRefresh (appId, requestServiceId, pageNumber) {
    commonPageRefresh(appId, requestServiceId, pageNumber);
}

/**
 ** Set the auto refresh timer. This is also works only in first page
 */
function commonPageRefresh(appId, requestServiceId, pageNumber) {
    if (numOfCategories == 0) {
        timeoutID = setInterval(function() { MessagesWithoutSubcategories(appId, requestServiceId, pageNumber); }, timePeriod);
    } else {
        timeoutID = setInterval(function() { loadMessagesForSubcategories(appId, pageNumber, requestServiceId); }, timePeriod);
    }
    if (document.getElementById('off') != null) {      // Can use if status is true
        document.getElementById('off').style.fontWeight = 'normal';
        document.getElementById('on').style.fontWeight = 'bold';
    }
}

/**
 ** Refresh the page when the refresh link is clicked. This works only for the first page
 */
function pageRefresh(appId, requestServiceId) {
    if (numOfCategories == 0) {
        MessagesWithoutSubcategories (appId, requestServiceId, 1);
    } else {
        loadMessagesForSubcategories(appId, 1, requestServiceId);
    }
}

//  TODO: Initial load is not necessary
/**
 ** Load messages for the initial page load -- first 10 messages
 */
function loadInitialMessages(appId, requestServiceId, pageNumber, prev, nxt, message, first, plsSelectMsg) {
    initialLoad = true;
    previous = prev;
    next = nxt;
    textMessage = message;
    pleaseSelectMsg = plsSelectMsg;
    firstPagingTag = first;
    if (numOfCategories == 0) {
        MessagesWithoutSubcategories (appId, requestServiceId, pageNumber);
    } else {
        loadMessagesForSubcategories(appId, pageNumber, requestServiceId);
        document.getElementById("selectall").checked =true;
    }
}

/**
 ** Check all the check boxes in the application
 */
function checkedAll(appId, reqId, page, prev, next,  message, first, plsSelectMsg ) {
    $("INPUT[type='checkbox']").attr('checked', $('#requestMessage').is(':not(:checked)'));
    loadInitialMessages(appId, reqId, page, prev, next, message, first, plsSelectMsg);
}

function loadMessagesForSubcategories (appId, page, requestServiceId) {
    document.getElementById("selectall").checked =false;
    var currentNumOfCategories = ($("#requestMessage :checked").size());
    var tableRow = document.getElementById('pagingRow');
    var tableBody = document.getElementById('tablesorterbody');

    if (currentNumOfCategories == 0) {
        while (tableBody.childNodes.length > 0) {
            tableBody.removeChild(tableBody.firstChild);
        }
        while (tableRow.childNodes.length > 0) {
            tableRow.removeChild(tableRow.firstChild);
        }
        var selectSubCategory = document.createElement('div');

        selectSubCategory.appendChild(document.createTextNode(pleaseSelectMsg));
        selectSubCategory.setAttribute('style', "color:green; text-align: centre; font-size:13pt; font-family: 'Courier New', Courier, monospace;");
        tableRow.appendChild(selectSubCategory);

    } else {
        disableShowAllOption(appId, page, requestServiceId, currentNumOfCategories);
    }
}


/**
 ** This will manage the tick and un-tick events of the subcategory check boxes
 */
function disableShowAllOption(appId, page, requestServiceId ,currentNumOfCategories) {
    if (currentNumOfCategories == numOfCategories) {
        document.getElementById("selectall").checked =true;
    } else {
        document.getElementById("selectall").checked =false;
    }

    var tempSelected = new Array();
    $('#requestMessage input:checked').each(function() {
        tempSelected .push($(this).attr('id'));
    });
    var selected = new Array();
    var j = 0;
    for (var i = 0; i<tempSelected.length; i++) {
        if (tempSelected[i] != 'selectall') {
            selected[j] = tempSelected[i];
            j = j + 1;
        }
    }
    loadCategoryData(appId,page,selected, requestServiceId);
}

/**
 ** This will load the data related to selected categories
 */
function loadCategoryData (appId, pageNumber, selectedValues, requestServiceId) {
    var url = '../../ajaxLoadMessagesForSubCategories/' + appId + '/' + selectedValues + '/' + pageNumber + '/'
            + messagesPerPage + '.html';
    jQuery.get(url, function(data) {
        setDataXML(data, appId, requestServiceId, pageNumber);
        $('#large').trigger("update");
    });
}

/**
 */
function getNumOfCategories(_numOfCategories) {
    numOfCategories = _numOfCategories;
}

// TODO: Remove LoadDataForSubcategory method from row click event and directly call the function ajaxMessageRead(trow, messageId) { var url = '../../ajaxLoaderReadMessage/' + messageId + '.html'; jQuery.get(url);}
/**
 ** Load the request messages in the table by reading the xml file returned from the ajax response
 */
function setDataXML(req, appId, requestServiceId, pageNumber) {
    var messages = req.getElementsByTagName('message');
    var tableBody = document.getElementById('tablesorterbody');
    while (tableBody.childNodes.length > 0) {
        tableBody.removeChild(tableBody.firstChild);
    }
    for (var i = 0; i < messages.length; i++) {
        var tableRow = document.createElement('tr');
        var messageId = getNodeValue(messages[i], 'messageID');
        tableRow.setAttribute("id", "tr_" + messageId);
        var isRead = (getNodeValue(messages[i], 'isRead') == 'true');
        if (isRead) {
            tableRow.className = 'backgroundGray';
        } else {
            tableRow.className = 'backgroundBlue';
            tableRow.setAttribute("onclick", "ajaxMessageRead('" + tableRow + "','" + messageId + "')");
        }
        var centerDiv1 = document.createElement('div');
        centerDiv1.setAttribute("align", "center");
        centerDiv1.appendChild(document.createTextNode(getNodeValue(messages[i], 'dateTime')))
        var centerDiv2 = document.createElement('div');
        centerDiv2.setAttribute("align", "center");
        centerDiv2.appendChild(document.createTextNode(getNodeValue(messages[i], 'messageContent')))
        var centerDiv3 = document.createElement('div');
        centerDiv3.setAttribute("align", "center");
        centerDiv3.appendChild(document.createTextNode(getNodeValue(messages[i], 'subcategory')))
        var messageDateColumn = document.createElement('td');
        messageDateColumn.appendChild(centerDiv1);
        tableRow.appendChild(messageDateColumn);
        var messageContentColumn = document.createElement('td');
        messageContentColumn.className = 'wordWrap';
        messageContentColumn.appendChild(centerDiv2);
        tableRow.appendChild(messageContentColumn);
        var subCategoryColumn = document.createElement('td');
        subCategoryColumn.appendChild(centerDiv3);
        tableRow.appendChild(subCategoryColumn);
        document.getElementById('tablesorterbody').appendChild(tableRow);
    }
    var totalNumberOfRecords = getNodeValue(req.getElementsByTagName('records')[0], 'totalNumberOfRecords');
    generatePaging(totalNumberOfRecords, appId, requestServiceId, pageNumber);
}

/**
 ** Generate pages for the current messages in the database for the selected subcategories.
 */
function generatePaging(totalNumberOfRecords, appId, requestServiceId, pageNumber) {
    var numberOfPages = 1;
    var currentPage = parseInt(pageNumber);
    var prevPage = currentPage - 1;
    var nextPage = currentPage + 1;
    var tableRow = document.getElementById('pagingRow');
    //    var navigation = document.getElementById ('navigation');
    crntPage = pageNumber;

    while (tableRow.childNodes.length > 0) {
        tableRow.removeChild(tableRow.firstChild);
    }
    /* while (navigation.childNodes.length > 0) {
     navigation.removeChild(navigation.firstChild);
     }*/

    if (totalNumberOfRecords == 0) {
        var noMessagesTableBody = document.createElement('div');
        noMessagesTableBody.innerHTML = textMessage;
        noMessagesTableBody.setAttribute('style', "color:#91B61F; text-align: left; font-size:13pt; font-family: " +
                "'Courier New', Courier, monospace; margin-left:-80px");
        tableRow.appendChild(noMessagesTableBody);
        return;
    }
    if ((totalNumberOfRecords % messagesPerPage == 0)) {
        numberOfPages = totalNumberOfRecords / messagesPerPage;
    } else {
        numberOfPages = parseInt((totalNumberOfRecords / messagesPerPage) + 1);
    }
    if (pageNumber >= maxPagingTag && pageNumber <= numberOfPages ) {
        decidePageTags(pageNumber, numberOfPages);
    } else {
        if (numberOfPages < maxPagingTag) {
            rightTag =  numberOfPages;
        } else {
            rightTag = maxPagingTag;
        }
        leftTag = 1;
    }
    if (pageNumber == 1) {
        var divSpanFirst = document.createElement('span');
        divSpanFirst.className = 'firstDiv';
        var spanFirst = document.createElement('span');
        spanFirst.appendChild(document.createTextNode(firstPagingTag));
        divSpanFirst.appendChild(spanFirst);
        tableRow.appendChild(divSpanFirst);
    } else {
        var divFirst = document.createElement('span');
        divFirst.className = 'firstDiv';
        var hrefFirst = document.createElement('a');
        hrefFirst.innerHTML = firstPagingTag;
        hrefFirst.setAttribute("href", "javascript:checkThePage('" + appId + "','" + 1  + "','" +
                requestServiceId +  "')");
        divFirst.appendChild(hrefFirst);
        tableRow.appendChild(divFirst);
    }
    if (pageNumber > 1 && numberOfPages > 1) {
        var divPrev = document.createElement('span');
        divPrev.className = 'previousDiv';
        var href = document.createElement('a');
        href.innerHTML = previous;
        href.setAttribute("href", "javascript:checkThePage('" + appId + "','" + prevPage  + "','" +
                requestServiceId +  "')");
        divPrev.appendChild(href);
        tableRow.appendChild(divPrev);
    } else {
        var divSpanPrev = document.createElement('span');
        divSpanPrev.className = 'previousDiv';
        var spanPrev = document.createElement('span');
        spanPrev.appendChild(document.createTextNode(previous));
        divSpanPrev.appendChild(spanPrev);
        tableRow.appendChild(divSpanPrev);
    }

    if (pageNumber < numberOfPages) {
        var divNext = document.createElement('span');
        divNext.className = 'nextDiv';

        var f = document.createElement('a');
        f.appendChild(document.createTextNode(next));
        f.setAttribute("href", "javascript:checkThePage('" + appId + "','" + nextPage  + "','" +
                requestServiceId +  "')");
        divNext.appendChild(f);
        tableRow.appendChild(divNext);
    } else {
        var disableDivNext = document.createElement('span');
        disableDivNext.className = 'nextDiv';

        var ff = document.createElement('span');
        ff.appendChild(document.createTextNode(next));
        disableDivNext.appendChild(ff);
        tableRow.appendChild(disableDivNext);
    }

    var divNumber = document.createElement('div');
    divNumber.className = 'centerDiv';
    var space = ' | ';
    var span = document.createElement('span');
    span.innerHTML = space;
    divNumber.appendChild(span);

    for (var i = leftTag; i <= rightTag; i++) {
        var spanHref = document.createElement('a');

        if (currentPage == i) {
            spanHref.setAttribute('style', "color:red;");
        } else {
            spanHref.setAttribute('style', "color:#2277BB;");
        }
        spanHref.innerHTML = i;
        spanHref.setAttribute("href", "javascript:checkThePage('" + appId + "','" + i  + "','" +
                requestServiceId +  "')");
        divNumber.appendChild(spanHref);
        var spanPage = document.createElement('span');
        spanPage.innerHTML = space;
        divNumber.appendChild(spanPage);
        tableRow.appendChild(divNumber);
    }
    document.getElementById('pagingTable').appendChild(tableRow);
    //    document.getElementById ('navigation_top').appendChild(navigation);
}

function decidePageTags (pageNumber, numberOfPages) {
    if (numberOfPages == pageNumber) {
        rightTag = parseInt(pageNumber);
        leftTag = pageNumber - maxPagingTag + 1;
    } else {
        rightTag = parseInt(pageNumber) + 1;
        leftTag = pageNumber - maxPagingTag + 2;
    }

}

function checkThePage (appId, page, requestServiceId) {
    if (page > 1) {
        clearInterval(timeoutID);
        document.getElementById('refreshes').style.display = 'none';
    } else {
        document.getElementById('refreshes').style.display = 'block';
        if (status == 'true') {
            if (numOfCategories == 0) {
                if (status == 'true') {
                    timeoutID = setInterval(function() { MessagesWithoutSubcategories (appId, requestServiceId, page) },
                            timePeriod);
                }
            } else {
                timeoutID = setInterval(function() { loadMessagesForSubcategories (appId, page, requestServiceId) },
                        timePeriod);
            }
        }

        else if (status == 'false') {
        }

        else if (!(status)) {
        }

        else {
            if (numOfCategories == 0) {
                if (status) {
                    timeoutID = setInterval(function() {
                        MessagesWithoutSubcategories(appId, requestServiceId, page)
                    },
                            timePeriod);
                }
            }
            else {
                timeoutID = setInterval(function() {
                    loadMessagesForSubcategories(appId, page, requestServiceId)
                },
                        timePeriod);
            }
        }
    }
    if (numOfCategories == 0) {
        MessagesWithoutSubcategories (appId, requestServiceId, page);
    } else {
        document.getElementById("selectall").checked =false;
        var currentNumOfCategories = ($("#requestMessage :checked").size());
        disableShowAllOption(appId, page, requestServiceId, currentNumOfCategories);
    }
}

function ajaxMessageRead(trow, messageId) {
    var url = '../../ajaxLoaderReadMessage/' + messageId + '.html';
    jQuery.get(url, function(data) {
        setMessagesStatus(data, messageId);
    });
}

function setMessagesStatus(data, messageId) {
    var status = data.getElementsByTagName('values');
    var isUpdateSuccess = getNodeValue(status[0], 'success');
    if (isUpdateSuccess) {
        var selectedTableRow = document.getElementById("tr_" + messageId);
        selectedTableRow.className = 'backgroundGray';
    }
}

function MessagesWithoutSubcategories(appId, requestServiceId, pageNumber) {
    var start = ((pageNumber - 1) * messagesPerPage);
    var end =  start + messagesPerPage;
    var url = '../../ajaxLoaderRequestMessage/' + appId + '/' + requestServiceId + '/' + start + '/' + end +
            '.html';
    jQuery.get(url, function(data) {
        setMessagesWithoutSubs(data, appId, requestServiceId, pageNumber);

        $('#large').trigger("update");
    });
}


function setMessagesWithoutSubs (req, appId, requestServiceId, pageNumber) {
    var messages = req.getElementsByTagName('message');
    var tableBody = document.getElementById('tablesorterbody');
    while (tableBody.childNodes.length > 0) {
        tableBody.removeChild(tableBody.firstChild);
    }

    for (var i = 0; i < messages.length; i++) {
        var tableRow = document.createElement('tr');
        var messageId = getNodeValue(messages[i], 'messageID');
        tableRow.setAttribute("id", "tr_" + messageId);
        var isRead = (getNodeValue(messages[i], 'isRead') == 'true');
        if (isRead) {
            tableRow.className = 'backgroundGray';
        } else {
            tableRow.className = 'backgroundBlue';
            tableRow.setAttribute("onclick", "ajaxMessageRead('" + tableRow + "','" + messageId + "')");
        }
        var centerDiv1 = document.createElement('div');
        centerDiv1.setAttribute("align", "center");
        centerDiv1.appendChild(document.createTextNode(getNodeValue(messages[i], 'dateTime')))
        var centerDiv2 = document.createElement('div');
        centerDiv2.setAttribute("align", "center");
        centerDiv2.appendChild(document.createTextNode(getNodeValue(messages[i], 'messageContent')))
        var centerDiv3 = document.createElement('div');
        centerDiv3.setAttribute("align", "center");
        centerDiv3.appendChild(document.createTextNode(getNodeValue(messages[i], 'subcategory')))
        var messageDateColumn = document.createElement('td');
        messageDateColumn.appendChild(centerDiv1);
        tableRow.appendChild(messageDateColumn);
        var messageContentColumn = document.createElement('td');
        messageContentColumn.appendChild(centerDiv2);
        messageContentColumn.className = 'wordWrap';
        tableRow.appendChild(messageContentColumn);
        var subCategoryColumn = document.createElement('td');
        subCategoryColumn.appendChild(centerDiv3);
        tableRow.appendChild(subCategoryColumn);
        document.getElementById('tablesorterbody').appendChild(tableRow);
    }
    var totalNumberOfRecords = getNodeValue(req.getElementsByTagName('records')[0], 'totalNumberOfRecords');
    generatePaging(totalNumberOfRecords, appId, requestServiceId, pageNumber);

}

function getNodeValue(obj, tag) {
    if(obj.getElementsByTagName(tag)[0].firstChild == null ||
       obj.getElementsByTagName(tag)[0].firstChild.nodeValue == 'null') {
        return " - ";
    }
    return obj.getElementsByTagName(tag)[0].firstChild.nodeValue;
}