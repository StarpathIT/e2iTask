window.onload =init;
var animate;
var formfields = null, addtoContainer = null;

function init() {
    formfields = document.getElementById('formfields');
    formfields.style.position = 'relative';
    formfields.style.left = '-450px';
    displaySavePanel();
    moveRight();
}

function moveRight(){
    formfields.style.left = parseInt(formfields.style.left) + 16 + 'px';
    animate = setTimeout(moveRight,60); // call moveRight in 20msec
    setTimeout(function() { stop(); }, 1630);
}

function displaySavePanel() {
    var savepanel = document.getElementById('savepanel');
    savepanel.hidden = false;
    savepanel.style.paddingTop = "10px";
    savepanel.style.paddingBottom = "10px";
}

function stop(){
    clearTimeout(animate);
    }

//function addTextBox() {
//    addtoContainer = document.getElementById('addtoContainer');
//    var input = document.createElement('input');
//    input.className = 'text';
//    input.type = 'textbox';
//    addtoContainer.append(input);
//}

//function addComboBox() {
//    addtoContainer = document.getElementById('addtoContainer');
//    var input1 = document.createElement('button');
//    input1.className = 'btn dropdown';
//    input1.textContent = "DropDown";
//    addtoContainer.appendChild(input1);
//}