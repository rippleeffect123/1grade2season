window.addEventListener("load", () => {
    const submit = document.getElementById("signup_button");
    
    submit.addEventListener("click", e => {
        signup();
    });    

    document.getElementById("id_check").addEventListener("click", e => {
        const id = document.querySelector("input[name='id']").value;
        const xhr = new XMLHttpRequest();
        xhr.open("GET", `id_check/${id}`, false);
        xhr.send();

        if(xhr.responseText === "OK") {
            alert("사용가능한 아이디 입니다");
            id_check = true;
        } else
            alert("이미 다른 사용자가 사용하는 아이디 입니다");
    });

    document.getElementById("id_check_async").addEventListener("click", e => {
        const id = document.querySelector("input[name='id']").value;
        const xhr = new XMLHttpRequest();
        xhr.open("GET", `id_check/${id}`, true);

        xhr.onreadystatechange = () => {
            if(xhr.readyState === xhr.DONE) {
                if(xhr.status == 200) {
                    if(xhr.responseText === "OK") {
                        alert("사용가능한 아이디 입니다");
                        id_check = true;
                    } else
                        alert("이미 다른 사용자가 사용하는 아이디 입니다");
                }
            }
        };

        xhr.send();
    });

    document.getElementById("id_check_fetch").addEventListener("click", e => {
        const id = document.querySelector("input[name='id']").value;

        fetch(`id_check/${id}`, { method: "GET", })
        .then(res => res.text())
        .then(result => {
            if(result === "OK") {
                alert("사용가능한 아이디 입니다");
                id_check = true;
            } else
                alert("이미 다른 사용자가 사용하는 아이디 입니다");
        });
    });

    document.querySelector("input[name='id']").addEventListener("change", e => {
        console.log(e.target.value);
        id_check = false;
    });

    document.querySelectorAll(".passwd").forEach(div => {
        const input = div.querySelector("input[type='password']");
        const view = div.querySelector(".view");

        view.addEventListener("mousedown", e => {
            input.setAttribute("type", "text");
        });
        
        view.addEventListener("mouseup", e => {
            input.setAttribute("type", "password");
        });

    });
});