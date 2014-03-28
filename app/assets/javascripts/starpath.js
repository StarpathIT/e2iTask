//window.onload = init;

var addtoContainer = null;
var label = null;

function init() {
}

function addTextBox() {
    addtoContainer = document.getElementById('addtoContainer');
    addtoContainer.hidden = false;
    var error = document.getElementById('tbError');
    var ip1 = document.getElementById('ip1');
    var errorDiv = document.createElement('div');
    errorDiv.innerHTML = '<div class="center alert alert-danger">* Please Enter Text Box Name </label>';
    error.appendChild(errorDiv);
    if (ip1.value == null || ip1.value == "") {
        error.hidden = false;
        addtoContainer.hidden = true;
    }
    else {
        error.hidden = true;
        label = ip1.value;
        addtoContainer.innerHTML += '<div class="col-lg-offset-0"><label style="color: #ffffff">' + label + '</label>&nbsp;<input type="text" id="tb"></div>';
        displaySavePanel();
    }
}

function addComboBox() {
    addtoContainer = document.getElementById('addtoContainer');
    addtoContainer.hidden = false;
    var error = document.getElementById('comboError');
    var ip2 = document.getElementById('ip2');
    var errorDiv = document.createElement('div');
    errorDiv.innerHTML = '<div class="center alert alert-danger">* Missing Drop Down Name or Options</label>';
    error.appendChild(errorDiv);
    var opt = document.getElementById('opt');
    if (ip2.value == null || ip2.value == "" || opt.value == "") {
        error.hidden = false;
        addtoContainer.hidden = true;
    }
    else {
        error.hidden = true;
        label = ip2.value;
        addtoContainer.innerHTML += '<div class="col-lg-offset-0"><label style="color: #ffffff">' + label + '</label> <select id="tbOption"></select></div>';
        var option = document.createElement("option");
        option.text = opt.value;
        var tbOption = document.getElementById('tbOption');
        tbOption.add(option);
        displaySavePanel();}
}

function addUploadField() {
    addtoContainer = document.getElementById('addtoContainer');
    addtoContainer.hidden = false;
    var error = document.getElementById('uploadError');
    var ip3 = document.getElementById('ip3');
    var errorDiv = document.createElement('div');
    error.appendChild(errorDiv);
    errorDiv.innerHTML = '<div class="center alert alert-danger">* Please Enter Upload Field Name </label>';
    if (ip3.value == null || ip3.value == "") {
        error.hidden = false;
        addtoContainer.hidden = true;
    }
    else {
        error.hidden = true;
        lb3 = ip3.value;
        addtoContainer.innerHTML += '<div class="col-lg-offset-0"><label style="color: #ffffff">' + lb3 + '</label><input class="center" type="file" id="tb" value=""></div>';
        displaySavePanel();
    }
}

function addPaymentOption() {
    var error = document.getElementById('comboError');
    var errorDiv = document.createElement('div');
    error.appendChild(errorDiv);
    errorDiv.innerHTML = '<div class="center alert alert-danger">* PAYMENT WIDGET UNDER CONSTRUCTION</label>';
    error.hidden = false;
}

function addDateField() {
    addtoContainer = document.getElementById('addtoContainer');
    addtoContainer.hidden = false;
    var error = document.getElementById('error');
    var ip5 = document.getElementById('ip5');
    var errorDiv = document.createElement('div');
    error.appendChild(errorDiv);
    errorDiv.innerHTML = '<div class="center alert alert-danger">* Please Enter Date Field Name </label>';
    if (ip5.value == null || ip5.value == "") {
        error.hidden = false;
        addtoContainer.hidden = true;
    }
    else {
        error.hidden = true;
        lb5 = ip5.value;
        addtoContainer.innerHTML += '<p class="tb"><label style="color: #ffffff">' + lb5 + '</label>  <input type="text" id="tb"></p><br>';
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