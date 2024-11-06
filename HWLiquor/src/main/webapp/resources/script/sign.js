function signup() {
    const form = document.getElementById("signup");

    if (!form.id.value) {
        alert("아이디를 입력해 주시기 바랍니다");
        return;
    }

    if (form.id.value.length < 4) {
        alert("아이디는 최소 4자리이상 입력하여야 합니다.");
        return;
    }

    if (!id_check) {
        alert("아이디 중복검사를 하셔야 합니다.");
        return;
    }

    if (!form.passwd.value || !form.passwd_check.value) {
        alert("비밀번호와 비밀번호 확인을 입력해 주시기 바랍니다.");
        return;
    }

    if (form.passwd.value != form.passwd_check.value) {
        alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
        return;
    }


}