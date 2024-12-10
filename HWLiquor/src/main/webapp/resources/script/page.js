window.addEventListener("load", () => {
    const p_btn = document.querySelectorAll(".p_btn");
    const prevBtn = document.querySelector(".prev");  // 이전 페이지 버튼
    const nextBtn = document.querySelector(".next");  // 다음 페이지 버튼

    // URL에서 'page' 파라미터를 가져옵니다.
    const getPageFromUrl = () => {
        const urlParams = new URLSearchParams(window.location.search);
        return parseInt(urlParams.get('page')) || 1;  // 기본값 1
    };

    let currentPage = getPageFromUrl();  // URL에서 현재 페이지 번호 가져오기

    // 버튼 상태 설정
    const updatePageButtons = () => {
        p_btn.forEach((button, index) => {
            // 현재 페이지와 버튼 번호가 일치하면 'p_select' 클래스를 추가
            button.classList.toggle("p_select", index + 1 === currentPage);
        });
    };

    // 페이지 변경 함수 (버튼 클릭 시 페이지 번호 업데이트)
    const setPage = (pageNumber) => {
        if (pageNumber < 1) return;  // 페이지가 1보다 작을 수 없도록
        currentPage = pageNumber;
        
        // URL을 업데이트하여 페이지 번호를 변경
        window.history.pushState({}, '', `?page=${currentPage}`);
        
        updatePageButtons();  // 페이지 변경 후 버튼 색상 업데이트
    };

    // 초기 버튼 업데이트
    updatePageButtons();

    // 페이지 번호 버튼 클릭 이벤트 처리
    p_btn.forEach(button =>
        button.addEventListener("click", () => setPage(parseInt(button.textContent.trim())))
    );

    if (prevBtn) {
    prevBtn.addEventListener("click", () => {
        if (currentPage > 1) setPage(currentPage - 1);  // 페이지가 1보다 작지 않도록
    });
}

if (nextBtn) {
    nextBtn.addEventListener("click", () => setPage(currentPage + 1));  // 페이지 증가
}
});
