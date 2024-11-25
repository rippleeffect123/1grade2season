// 페이지가 완전히 로드된 후, 이벤트 리스너를 추가할 경우
window.addEventListener("load", () => {
    // 상품 가격 설정 (한 개당 가격)
    let pricePerItem = price;  // 한 개 가격 (기본값)
    let quantity = 1;  // 기본 수량

    // 버튼 이벤트 리스너 설정
    document.querySelector(".plus").addEventListener("click", () => {
        updateQuantity(1);
    });

    document.querySelector(".minus").addEventListener("click", () => {
        updateQuantity(-1);
    });

    // 수량 업데이트 함수
    function updateQuantity(change) {
        quantity += change;
        if (quantity < 1) {
            quantity = 1;
        }
        document.getElementById("amt").value = quantity;
        updateTotalPrice();
    }

    const amt = document.getElementById("amt");
    amt.addEventListener("input", () => {
        let inputValue = amt.value

        // 입력값이 비어 있거나 숫자가 아닌 경우, NaN 방지
        if (inputValue === "" || isNaN(inputValue)) {
            quantity = 1;  // 기본값으로 설정
        } else {
            quantity = Math.max(1, parseInt(inputValue));  // 숫자만 유효하게
        }
        amt.value = quantity;
        updateTotalPrice();
    });



    // 총 금액 계산 함수
    function updateTotalPrice() {
        const totalPrice = pricePerItem * quantity;
        document.querySelector(".saleprice").textContent = totalPrice.toLocaleString() + "원";
    }

    updateTotalPrice();
});

