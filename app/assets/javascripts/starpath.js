var pObj1 = null, pObj2 = null, pObj3 = null, pObj4 = null;
var animate;
function init(){
    pObj1 = document.getElementById('p1');
    pObj1.style.position = 'relative';
    pObj1.style.left = '0px';
    moveRight();
    pObj2 = document.getElementById('p2');
    pObj2.style.position = 'relative';
    pObj2.style.right = '0px';
    moveLeft();
    pObj3 = document.getElementById('p3');
    pObj3.style.position = 'relative';
    pObj3.style.left = '0px';
    moveRight1();
    pObj4 = document.getElementById('p4');
    pObj4.style.position = 'relative';
    pObj4.style.right = '0px';
    moveLeft2();
    }
function moveRight(){
    pObj1.style.left = parseInt(pObj1.style.left) + 10 + 'px';
    animate = setTimeout(moveRight,60); // call moveRight in 20msec
    setTimeout(function() { stop(); }, 200);
}
function moveLeft(){
    pObj2.style.right = parseInt(pObj2.style.right) + 10 + 'px';
    animate = setTimeout(moveLeft,60); // call moveRight in 20msec
    setTimeout(function() { stop(); }, 200);
}
function moveRight1(){
    pObj3.style.left = parseInt(pObj3.style.left) + 10 + 'px';
    animate = setTimeout(moveRight1,60); // call moveRight in 20msec
    setTimeout(function() { stop(); }, 200);
}
function moveLeft2(){
    pObj4.style.right = parseInt(pObj4.style.right) + 10 + 'px';
    animate = setTimeout(moveLeft2,60); // call moveRight in 20msec
    setTimeout(function() { stop(); }, 200);
}
function stop(){
    clearTimeout(animate);
    }
window.onload =init;