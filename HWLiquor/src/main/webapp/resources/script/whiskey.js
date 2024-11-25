window.addEventListener("load", () => {

    const cbtn = document.querySelectorAll(".cbtn");

    const defaultButton = document.querySelector(".cbtn[data-originid='0']"); // 'ALL' 카테고리 버튼을 찾기
    if (defaultButton) {
        defaultButton.classList.add("selected");
        defaultButton.style.color = "white";
    }
    cbtn.forEach(button => {
        button.addEventListener("click", e => {
            const originId = e.target.dataset.originid;
            cbtn.forEach(btn => {
                btn.classList.remove("selected")
                btn.style.color = "#969696"

            });
            e.target.classList.add("selected");
            e.target.style.color = "white"
            const list = document.getElementById("list");
            fetch(`/goods/whisky/${originId}`).then(resp => resp.text()).then(result => {
                list.innerHTML = result;
            })
        });
    });
});