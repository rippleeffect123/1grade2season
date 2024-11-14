window.addEventListener("load", () => {

    const cbtn = document.querySelectorAll(".cbtn");

    cbtn.forEach(button => {
        button.addEventListener("click", e => {

            cbtn.forEach(btn => {
                btn.classList.remove("selected")
                btn.style.color = "#969696"
            });

            e.target.classList.add("selected");
            e.target.style.color = "white"
        });
    });
    console.log(originId)
});