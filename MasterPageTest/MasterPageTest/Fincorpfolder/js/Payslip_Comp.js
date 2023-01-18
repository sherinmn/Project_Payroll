/*To display payslip components in each tab*/
function openPayComp(evt, payType, btnId) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
        tabcontent[i].style.border = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
        tablinks[i].style.border = "none";
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(payType).style.display = "block";
    document.getElementById(btnId).style.borderBottom = "2px solid #ff0000";
    evt.currentTarget.className += " active";
}
///*Old code.. check if not used*/
//function ShowHidePay(idPay) {
//var ToShow = idPay;
//if (ToShow.style.display == 'none' || ToShow.style.display == ' ') {
//    ToShow.style.display = 'block';
//}
//else {
//    ToShow.style.display = 'none';
//}
//}