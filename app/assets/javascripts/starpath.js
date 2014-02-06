window.onload = init;
var animate;
var iPhone = null, addtoContainer = null, lb1 = null, errorRep = 0;

function init() {
    iPhone = document.getElementById('iPhone');
    iPhone.height = 400;
    iPhone.width = 250;
    iPhone.style.position = 'absolute';
    iPhone.style.top = '150px';
    iPhone.style.textAlign = 'center';
    iPhone.style.left = '20px';
    moveRight();
}

function moveRight() {
    iPhone.style.left = parseInt(iPhone.style.left) + 16 + 'px';
    animate = setTimeout(moveRight, 60); // call moveRight in 20msec
    setTimeout(function () {
        stop();
    }, 2600);
}

function stop() {
    clearTimeout(animate);
}

function addTextBox() {
    errorRep++;
    addtoContainer = document.getElementById('addtoContainer');
    var error = document.getElementById('error');
    error.hidden = false;
    var ip1 = document.getElementById('ip1');
    var errorDiv = document.createElement('div');
    if (ip1.value == null || ip1.value == "") {
        error.appendChild(errorDiv);
        errorDiv.innerHTML = '<div class="center alert alert-danger">* Please Enter Your Field Name </label>';
    }
   else {
        error.hidden = true;
        lb1 = ip1.value;
        addtoContainer.innerHTML += '<label>' + lb1 + '</label>  <input type="text" id="tb">';
    }
    displaySavePanel();
}

function displaySavePanel() {
    var savepanel = document.getElementById('savepanel');
    savepanel.hidden = false;
    savepanel.style.paddingTop = "10px";
    savepanel.style.paddingBottom = "10px";
}
//function addComboBox() {
//    addtoContainer = document.getElementById('addtoContainer');
//    var input1 = document.createElement('button');
//    input1.className = 'btn dropdown';
//    input1.textContent = "DropDown";
//    addtoContainer.appendChild(input1);
//}