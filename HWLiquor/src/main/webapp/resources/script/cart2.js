window.addEventListener("load", () => {
    document.querySelectorAll("button.delete").forEach(button => {
        button.addEventListener("click", e => {
            const { id } = e.target.dataset;

            alert(`삭제 ${id}`);

            fetch(`/cart/${id}`, {
                method: "DELETE"
            }).then(resp => {
                if (resp.ok) {
                    alert("삭제 완료");

                    const button = document.querySelector(`button.delete[data-id='${id}']`);
                    button.closest("tr").remove();
                }
            });
        });
    });
});