window.addEventListener("load", () => {
    const submit = document.getElementById("join");

    submit.addEventListener("click", e => {
        signup();
    });

    document.getElementById("id_check").addEventListener("click", e => {
        const id = document.querySelector("input[name='id']").value;
        const xhr = new XMLHttpRequest();
        xhr.open("GET", `id_check/${id}`, true);

        xhr.onreadystatechange = () => {
            if (xhr.readyState === xhr.DONE) {
                if (xhr.status == 200) {
                    if (xhr.responseText === "OK") {
                        alert("사용가능한 아이디 입니다.")
                        id_check = true;
                    } else
                        alert("이미 다른 사용자가 사용하는 아이디 입니다.")
                }
            }
        };

        xhr.send();
    });
});