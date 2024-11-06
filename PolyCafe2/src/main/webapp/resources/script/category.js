window.addEventListener("load", () => {

    const cbtn = document.querySelectorAll(".cbtn");

    cbtn.forEach(button => {
        button.addEventListener("click", () => {

            cbtn.forEach(btn => btn.classList.remove("selected"));

            button.classList.add("selected");
        });
    });

});