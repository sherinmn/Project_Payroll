/*To hide and display block when checkbox is selected*/
function ShowHidePFInfo() {
    if (document.getElementById('Stat_chk_box_EPF').checked) {
        document.getElementById('Stat_EPF_Info').style.display = 'block';
    }
    else {
        document.getElementById('Stat_EPF_Info').style.display = 'none';
    }
}

function ShowHideSampleCalc(idDiv) {
    var DivToShow=idDiv;
    if (DivToShow.style.display == 'none'|| DivToShow.style.display==' ') {
        DivToShow.style.display = 'block';
    }
    else {
        DivToShow.style.display = 'none';
    }
}
function ShowHideESIInfo() {
    if (document.getElementById('Stat_chk_box_ESI').checked) {
        document.getElementById('Stat_ESI_Info').style.display = 'block';
    }
    else {
        document.getElementById('Stat_ESI_Info').style.display = 'none';
    }
}
function ShowHidePTInfo() {
    if (document.getElementById('Stat_chk_box_PT').checked) {
        document.getElementById('Stat_PT_Info').style.display = 'block';
    }
    else {
        document.getElementById('Stat_PT_Info').style.display = 'none';
    }
}
function ShowHideTaxslab(idDiv1) {
    var DivToShow1 = idDiv1;
    if (DivToShow1.style.display == 'none' || DivToShow1.style.display == ' ') {
        DivToShow1.style.display = 'block';
    }
    else {
        DivToShow1.style.display = 'none';
    }
}

function validateEPF(epfno) {
    var EPFpattern = /^[a-zA-Z]{2}[\/][a-zA-Z]{3}[\/]\d{7}[\/]\d{3}$/;
    if (EPFpattern.test(epfno) == false) {
        alert('Invalid EPF number. Please follow the format mentioned, including thes');
    }
}