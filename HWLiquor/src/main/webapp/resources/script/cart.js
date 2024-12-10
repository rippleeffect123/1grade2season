window.addEventListener("load", () => {
    const checkboxes = document.querySelectorAll(".product-checkbox");
    const selectAll = document.getElementById("select-all");
    const totalPriceEl = document.getElementById("total-price");
    const finalTotalEl = document.getElementById("final-total");
    const totalRewardEl = document.getElementById("total-reward");

    // 가격과 적립 마일리지 계산
    const updateTotalPrice = () => {
        let totalPrice = 0;
        let totalReward = 0;

        checkboxes.forEach((checkbox) => {
            if (checkbox.checked) {
                // 가격 추출
                const priceText = checkbox
                    .closest("tr")
                    .querySelector(".price")
                    .textContent.replace("원", "")
                    .replace(",", "");
                let price = parseInt(priceText); // 가격을 parseInt로 변환
                if (isNaN(price)) {
                    price = 0;  // 유효하지 않으면 0으로 설정
                }

                // 적립 포인트 추출
                const rewardText = checkbox
                    .closest("tr")
                    .querySelector(".reward")
                    .textContent.replace("적립", "")
                    .replace("포인트", "")
                    .replace(",", "")
                    .trim();  // 불필요한 공백 제거
                let reward = parseInt(rewardText); // 적립 포인트를 parseInt로 변환
                if (isNaN(reward)) {
                    reward = 0;  // 유효하지 않으면 0으로 설정
                }

                // 수량 추출 및 기본값 1 설정
                const quantity = parseInt(checkbox.closest("tr").querySelector(".quantity").value) || 1;

                // 각 상품의 가격과 적립 포인트 계산
                totalPrice += price * quantity;
                totalReward += reward * quantity;


            }
        });

        // 화면에 총합 반영
        if (totalPriceEl) {
            totalPriceEl.textContent = `${totalPrice.toLocaleString()}원`;
        }
        if (totalRewardEl) {
            totalRewardEl.textContent = `${totalReward.toLocaleString()}원`; // 적립 마일리지 반영
        }
        if (finalTotalEl) {
            finalTotalEl.textContent = `${totalPrice.toLocaleString()}원`; // 배송비 없음
        }
    };

    // 수량 증가/감소 버튼 이벤트 처리
    document.querySelectorAll(".increase").forEach((button) => {
        button.addEventListener("click", () => {
            const quantityInput = button.closest("td").querySelector(".quantity");
            let quantity = parseInt(quantityInput.value) || 1; // 기본값 1
            quantityInput.value = quantity + 1; // 수량 증가
            updateTotalPrice();
        });
    });

    document.querySelectorAll(".decrease").forEach((button) => {
        button.addEventListener("click", () => {
            const quantityInput = button.closest("td").querySelector(".quantity");
            let quantity = parseInt(quantityInput.value) || 1;
            if (quantity > 1) {
                quantityInput.value = quantity - 1; // 수량 감소
                updateTotalPrice();
            }
        });
    });

    // 수량 입력 후 유효성 검사 및 합계 갱신
    document.querySelectorAll(".quantity").forEach((input) => {
        input.addEventListener("blur", () => {
            let quantity = parseInt(input.value);
            if (isNaN(quantity) || quantity <= 0) {
                input.value = 1;  // 유효하지 않으면 1로 설정
            }
            updateTotalPrice();
        });
    });

    // 선택 상품 삭제
    document.getElementById("delete-selected").addEventListener("click", () => {
        checkboxes.forEach((checkbox) => {
            if (checkbox.checked) {
                const id = checkbox.dataset.id;  // 삭제할 상품의 ID

                // 서버에 DELETE 요청
                fetch(`/cart/${id}`, {
                    method: "DELETE"
                }).then((response) => {
                    if (response.ok) {
                        // 서버에서 성공적으로 삭제되었으면 해당 행을 삭제
                        checkbox.closest("tr").remove();
                        updateTotalPrice();
                    } else {
                        alert("삭제 실패");
                    }
                });
            }
        });
    });

    // 전체 선택 처리
    selectAll.addEventListener("change", () => {
        checkboxes.forEach((checkbox) => {
            checkbox.checked = selectAll.checked;
        });
        updateTotalPrice();
    });

    // 초기 계산
    updateTotalPrice();
});
