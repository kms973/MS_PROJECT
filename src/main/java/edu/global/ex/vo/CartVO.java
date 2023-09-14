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
public class CartVO {
	
	private String username; // 유저 id
	private String product_img; // 상품 이미지
	private String product_name; // 상품명
	private int price; // 상품 가격
	private int stock_quantity; // 유저가 담은 갯수 
	private int product_code;
}
