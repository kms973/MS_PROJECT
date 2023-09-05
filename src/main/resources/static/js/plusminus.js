function count(type) {
  // 결과를 표시할 element
  const quantityElement = document.getElementById('quantity');
  const priceElement = document.getElementById('price');
  const totalPriceElement = document.getElementById('totalPrice');
  
  // 현재 수량, 가격 및 총 상품금액
  let quantity = parseInt(quantityElement.innerText);
  let price = 100000; // 제품 가격 (기본값)
  
  // 더하기/빼기
  if (type === 'plus') {
    quantity += 1;
  } else if (type === 'minus') {
    if (quantity > 1) {
      quantity -= 1;
    }
  }
  
  // 총 상품금액 계산
  const totalPrice = quantity * price;
  
  // 가격 업데이트
  priceElement.innerHTML = '<h5 class="mb-0">₩ ' + (price * quantity).toLocaleString() + '</h5>'; // 가격 업데이트
  
  // 총 상품금액 업데이트
  totalPriceElement.innerHTML = '<h5 class="mb-0"><strong>₩ ' + totalPrice.toLocaleString() + '</strong></h5>'; // 금액을 포맷팅하여 표시
  
  // 수량 업데이트
  quantityElement.innerText = quantity;
}