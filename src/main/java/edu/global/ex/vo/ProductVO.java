
//	create table ms_product (
//				vProductCode;            // 상품 코드
//			 vProductCategory;           // 상품 카테고리
//			 vProductNumber;             // 상품 번호
//    category_code NUMBER(4)					 --상품구분		
//    product_number VARCHAR2(20) PRIMARY KEY,   -- 상품 번호
//    product_name VARCHAR2(100),                -- 상품명
//    price NUMBER,                              -- 가격
//    stock_quantity NUMBER,                     -- 재고 수량
//    options VARCHAR2(200),                     -- 옵션
//    product_img VARCHAR2(200)                  -- 이미지 );
//    
/////////////////////////////////////////////////////////////////

package edu.global.ex.vo;



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
public class ProductVO {     
	                  
		
		private String product_code;
		private String product_category;
		
		
		private String product_number;
	    private String product_name;
	    private Double price;
	    private Integer stock_quantity;
	    private String options;
	    private String product_img;
		
	    
//	    public void setv_product_number(String v_product_number2) {
//			// TODO Auto-generated method stub
//			
//		}
//		public void setv_product_category(String v_product_category2) {
//			// TODO Auto-generated method stub
//			
//		}
//		public void setv_product_code(String v_product_code2) {
//			// TODO Auto-generated method stub
//			
		}



	    
	    
	    
    
    
    
//	@Override
//	public String toString() {
//		return "ProductVO [v_product_code=" + v_product_code + ", v_product_category=" + v_product_category
//				+ ", v_product_number=" + v_product_number + ", product_number=" + product_number + ", product_name="
//				+ product_name + ", price=" + price + ", stock_quantity=" + stock_quantity + ", options=" + options
//				+ ", product_img=" + product_img + "]";
//	}
    

	
	
    

	

