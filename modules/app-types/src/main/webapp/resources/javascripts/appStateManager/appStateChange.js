function activate(appId) {
    var confirmationTxt = text.manage_app.activate_confirm_msg;
    jConfirm(confirmationTxt, 'Confirm', function(r) {
        if(r == true) {
            var url = '../activateApp/' + appId + '.html';
            jQuery.get(url, function(data) {
                parseActivate(data);
            });
        }
    });
}

function suspend(appId) {
    var confirmationTxt = text.manage_app.suspend_confirm_msg;
    jConfirm(confirmationTxt, 'Confirm', function(r) {
        if(r == true) {
            var url = '../suspendApp/' + appId + '.html';
            jQuery.get(url, function(data) {
                parseSuspend(data);
            });
        }
    });
}

function parseActivate(req) {
    var appStateChangeSuccess = req.getElementsByTagName('app-state-change-success');
    if (appStateChangeSuccess.length != 0) {
        var appStateError = document.getElementById("appStateChangeErrorDiv");
        if (getNodeValue(appStateChangeSuccess[0]) == 'true') {
            jAlert(text.manage_app.active_success_msg, 'Message');
        } else {
            jAlert(text.manage_app.error_msg, 'Message');
        }
        location.reload(true);
    }
}

function parseSuspend(req) {
    var appStateChangeSuccess = req.getElementsByTagName('app-state-change-success');
    if (appStateChangeSuccess.length != 0) {
        var appStateError = document.getElementById("appStateChangeErrorDiv");
        if (getNodeValue(appStateChangeSuccess[0]) == 'true') {
            jAlert(text.manage_app.suspend_success_msg, 'Message');

            //            appStateError.innerHTML = 'Application State Changed Successfully!';
        } else {
            jAlert(text.manage_app.error_msg, 'Message');
        }
        location.reload(true);
    }
}

function searchFormSubmit() {
    var searchName = document.getElementById("searchInput").value;
    if (searchName == "") {
        return;
    }
    changeAction("../searchApplication/" + searchName + ".html");
    document.search.submit();
}
function changeAction(url) {
    document.search.action = url;
}


