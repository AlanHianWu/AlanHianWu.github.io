
//functions here

let handleMouseMove = (event) => {
    event = event || window.event;
    console.log(event);
}


let setKeyDown = (event) => {
    var input = document.getElementById('editor');

    return false;
}


let setKeyUp = (event) => {
    return false;
}


let stopShortCuts = (event) => {

    // using keycodes to filter out keys
    var special = [9];
    if (event.keycode in special) {
        event.preventDefault();
    };

    return true;
}

var container = document.getElementById('Container');

container.addEventListener('keydown', setKeyDown);
container.addEventListener('keyup', setKeyUp);

container.onkeydown = stopShortCuts;


export {}

