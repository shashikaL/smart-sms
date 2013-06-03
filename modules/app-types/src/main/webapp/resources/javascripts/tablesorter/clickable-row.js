
function aa(trow,messageId){
    alert(messageId);
    var url = '../../myTest/' + messageId +'.html';
    jQuery.get(url);
    trow.style.background='#e8faff'; 




    /*$('#large tr').click(function() {

     var url = '../../myTest' + '.html';
     jQuery.get(url);
     document.getElementById('tableRow').style.background='red';
     //               alert(document.getElementById('tableRow'));




     //         var ee = "myb bhjhjg Test";
     //         alert(ee);
     });*/

}


//$(document).ready(function() {
//
//    $('#large tr').click(function() {
//        alert("clicked !!!!");
//    });

//});





///////////////////// CORRECT CODE
// var url = '../../myTest' + '.html';
//        jQuery.get(url);















/*
 $(document).ready(function() {

 $('#large tr').click(function() {
 alert("clicked !!!!");

 var url = '../myTest/' + '.html';


 //        jQuery.get(url);





 //        var output = document.getElementById('large').rowIndex;
 //
 //        alert(output);







 });

 });
 */
