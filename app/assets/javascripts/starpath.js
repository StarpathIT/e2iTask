//window.onload = init;
//var animate;
//var iPhone = null;
var addtoContainer = null, addOption = null;
var lb1 = null, lb2 = null, lb3 = null, lb4 = null, opt=null;

function init() {
//    iPhone = document.getElementById('iPhone');
//    iPhone.height = 400;
//    iPhone.width = 250;
//    iPhone.style.position = 'absolute';
//    iPhone.style.top = '150px';
//    iPhone.style.textAlign = 'center';
//    iPhone.style.left = '20px';
//    moveRight();
}
//
//function moveRight() {
//    iPhone.style.left = parseInt(iPhone.style.left) + 30 + 'px';
//    animate = setTimeout(moveRight, 60); // call moveRight in 20msec
//    setTimeout(function () {
//        stop();
//    }, 2600);
//}
//
//function stop() {
//    clearTimeout(animate);
//}

function addTextBox() {
    addtoContainer = document.getElementById('addtoContainer');
    var error = document.getElementById('error');
    var ip1 = document.getElementById('ip1');
    var errorDiv = document.createElement('div');
    errorDiv.innerHTML = '<div class="center alert alert-danger">* Please Enter Text Box Name </label>';
    error.appendChild(errorDiv);
    if (ip1.value == null || ip1.value == "") {
        error.hidden = false;
    }
    else {
        error.hidden = true;
        lb1 = ip1.value;
        addtoContainer.innerHTML += '<div class="col-lg-offset-0"><label>' + lb1 + '</label><input type="text" id="tb"></div>';
        displaySavePanel();
    }
}

function addComboBox() {
    addtoContainer = document.getElementById('addtoContainer');
    var error = document.getElementById('error');
    ip2 = document.getElementById('ip2');
    var errorDiv = document.createElement('div');
    errorDiv.innerHTML = '<div class="center alert alert-danger">* Please Enter Drop Down Name </label>';
    error.appendChild(errorDiv);
    if (ip2.value == null || ip2.value == "") {
        error.hidden = false;
    }
    else {
        lb2 = ip2.value;
        opt = document.getElementById('opt');
        var option = document.createElement("option");
        if (opt.value == null || opt.value == "") {
            error.appendChild(errorDiv);
            errorDiv.innerHTML = '<div class="center alert alert-danger">* Please Enter Options </label>';
        }
        else {
            addtoContainer.innerHTML += '<div class="col-lg-offset-0"><label>' + lb2 + '</label> <select id="tbOption"></select></div>';
            var tbOption = document.getElementById('tbOption');
            error.hidden = true;
            option.text = opt.value;
            tbOption.add(option);
            addDDOption();
        }
    }
    displaySavePanel();
}

function addDDOption() {
addOption = document.getElementById('dropDownOptions');
opt.value = "";
}

function addUploadField() {
    addtoContainer = document.getElementById('addtoContainer');
    var error = document.getElementById('error');
    var ip3 = document.getElementById('ip3');
    var errorDiv = document.createElement('div');
    error.appendChild(errorDiv);
    errorDiv.innerHTML = '<div class="center alert alert-danger">* Please Enter Upload Field Name </label>';
    if (ip3.value == null || ip3.value == "") {
        error.hidden = false;
    }
    else {
        error.hidden = true;
        lb3 = ip3.value;
        addtoContainer.innerHTML += '<div class="col-lg-offset-0"><label>' + lb3 + '</label><input type="file" id="tb"></div>';
        displaySavePanel();
    }
}

function addPaymentOption() {
    var error = document.getElementById('error');
    var errorDiv = document.createElement('div');
    error.appendChild(errorDiv);
    errorDiv.innerHTML = '<div class="center alert alert-danger">* PAYMENT WIDGET UNDER CONSTRUCTION</label>';
    error.hidden = false;
}

function addDateField() {
    addtoContainer = document.getElementById('addtoContainer');
    var error = document.getElementById('error');
    var ip5 = document.getElementById('ip5');
    var errorDiv = document.createElement('div');
    error.appendChild(errorDiv);
    errorDiv.innerHTML = '<div class="center alert alert-danger">* Please Enter Date Field Name </label>';
    if (ip5.value == null || ip5.value == "") {
        error.hidden = false;
    }
    else {
        error.hidden = true;
        lb5 = ip5.value;
        addtoContainer.innerHTML += '<p class="tb"><label>' + lb5 + '</label>  <input type="text" id="tb"></p><br>';
        displaySavePanel();
    }
}

function displaySavePanel() {
    var hideText = document.getElementById('hideText');
    hideText.hidden = false;
    var savepanel = document.getElementById('savepanel');
    savepanel.hidden = false;
    savepanel.style.paddingTop = "10px";
    savepanel.style.paddingBottom = "10px";
}