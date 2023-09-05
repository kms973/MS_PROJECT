package edu.global.ex.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//product_number VARCHAR2(20) PRIMARY KEY,   -- 상품 번호
//product_name VARCHAR2(100),                -- 상품명
//price NUMBER,                              -- 가격
//stock_quantity NUMBER,                     -- 재고 수량
//options VARCHAR2(200),                     -- 옵션
//product_img VARCHAR2(200)                  -- 이미지

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ShopProductVO {

	private String productNumber;
	private String productName;
	private int price;
	private int stock;
	private String options;
	private String img;
	
}
