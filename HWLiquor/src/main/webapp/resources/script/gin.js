window.addEventListener("load", () => {

    const cbtn = document.querySelectorAll(".cbtn");

    const defaultButton = document.querySelector(".cbtn[data-categoryid='0']"); // 'ALL' 카테고리 버튼을 찾기
    if (defaultButton) {
        defaultButton.classList.add("selected");
        defaultButton.style.color = "white";
    }
    cbtn.forEach(button => {
        button.addEventListener("click", e => {
            const categoryId = e.target.dataset.categoryid;
            cbtn.forEach(btn => {
                btn.classList.remove("selected")
                btn.style.color = "#969696"

            });
            e.target.classList.add("selected");
            e.target.style.color = "white"
            const list = document.getElementById("list");
            fetch(`/goods/gin/${categoryId}`).then(resp => resp.text()).then(result => {
                list.innerHTML = result;
            })
        });
    });
});