package edu.global.ex.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class PayVO {
	
	private int order_number; // 주문 번호
	private int stock_quantity; // 상품 수량
	private String payment_method; // 결제 수단
	private String username; // 유저 id
	private String product_name; // 상품명 
	private int product_code; // 상품 코드
	private String product_img; // 상품 이미지
	private int price; // 판매가
	private String cname; // 주문자
	private String cadress1; // 주소
	private String cadress2; // 도로명주소
	private String cadress3; // 지번주소
	private String cadress4; // 참고항목
	private String cadress5; // 상세주소
}
