/**Validation for character and numeric entry**/
function onlyAlphabets(e, t) {
    try {
        if (window.event) {
            var charCode = window.event.keyCode;
        }
        else if (e) {
            var charCode = e.which;
        }
        else { return true; }
        if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
            return true;
        else
            return false;
    }
    catch (err) {
        alert(err.Description);
    }
}

function onlyNumbers(a, b) {
    try {
        if (window.event) {
            var charCode = window.event.keyCode;
        }
        else if (a) {
            var charCode = a.which;
        }
        else { return true; }
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        else
            return true;
    }
    catch (err) {
        alert(err.Description);
    }
}

function ValidatePAN(panno) {
    //var pan_no = document.getElementById(panno).valueOf;
    var panPattern = /^([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}?$/;
    if (panPattern.test(panno) == false) {
        alert('Invalid PAN no.');
    }
}

function ValidateTAN(tanno) {
    //var pan_no = document.getElementById(panno).valueOf;
    var tanPattern = /^([a-zA-Z]){4}([0-9]){5}([a-zA-Z]){1}?$/;
    if (tanPattern.test(tanno) == false) {
        alert('Invalid TAN no.');
    }
}