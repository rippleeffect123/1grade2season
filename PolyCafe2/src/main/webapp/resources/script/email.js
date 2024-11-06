window.addEventListener("load", e => {
    const address = document.getElementById("address");
    const addressNull = document.getElementById("addressNull");
    address.addEventListener("click", e => {
        if (address.value != "null") {
            address.style.color = "black"
        };

        if (address.value == "null") {
            addressNull.style.color = "gray"
            address.style.color = "gray"
        };

    });
});