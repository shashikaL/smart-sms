
function isEmptyForm() {
    var txtUserName = document.getElementById("UserName");
    var txtEmail = document.getElementById("Email");
  
    if (txtUserName.value.length.toString() == "0") {
        return false;
    }
    if (txtEmail.value.length.toString() == "0") {
        return false;
    }
    return true;
    
}