package edu.global.ex.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//-- 상품
//create table ms_product (
//    product_code number(5),
//    product_category varchar2(1), PRIMARY KEY
//    product_name VARCHAR2(100),                -- 상품명
//    price NUMBER,                              -- 가격
//    stock_quantity NUMBER,                     -- 재고 수량
//    options VARCHAR2(200),                     -- 옵션
//    product_img VARCHAR2(200)                  -- 이미지
//);

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ShopProductVO {

	private int productCode;
	private String productCategory;
	private String productName;
	private int price;
	private int stock;
	private String options;
	private String img;
	
}
