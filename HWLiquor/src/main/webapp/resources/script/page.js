window.addEventListener("load", () => {

    const p_btn = document.querySelectorAll(".p_btn");

    p_btn.forEach(button => {
        button.addEventListener("click", () => {

            p_btn.forEach(btn => btn.classList.remove("p_select"));

            button.classList.add("p_select");
        });
    });

    if (p_btn.length > 0) {
        p_btn[0].classList.add("p_select");
    }
});