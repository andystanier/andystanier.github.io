// when we click each box it maximises itself and then we click again to minimise

// define some click eventlisteners

const bindListeners = () => {
    $(".grid-item").on("click", (e) => {
        alert(`class is ${$(e.target).attr("class")}`)
    });
}

bindListeners();