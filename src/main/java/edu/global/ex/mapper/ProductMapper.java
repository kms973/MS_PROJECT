package edu.global.ex.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import edu.global.ex.vo.ProductVO;

@Mapper
public interface ProductMapper {

	
	public void insert(ProductVO productVO);
	
	 	void insertProduct(ProductVO productVO);  

	    void deleteProduct(@Param("product_category") String product_category);
	    
	    void delete(String product_category, int product_code);

	    void updateProduct(ProductVO pvo);
}
	    
	           
	 
//	    @Insert("insert into ms_product (v_product_code, v_product_category,"
//	    		+ " v_product_number, product_number, product_name, price, "
//	    		+ "stock_quantity, options, product_img) "
//	    		+ "VALUES (#{v_product_code}, #{v_productcategory}, #{v_productnumber},"
//	            + " #{productnumber}, #{productname}, #{price}, #{stock_quantity}, #{options}, #{product_img})")
//	    void insertProduct(ProductVO productVO);
//
//	    @Delete("delete from ms_product where product_number = #{productnumber}")
//	    void deleteProduct(String productNumber);
//
//	    @Update("UPDATE ms_product " +
//	            "SET v_product_code = #{vProductCode}, v_product_category = #{vProductCategory}, v_product_number = #{vProductNumber}, " +
//	            "product_name = #{productName}, price = #{price}, stock_quantity = #{stockQuantity}, options = #{options}, product_img = #{productImg} " +
//	            "WHERE product_number = #{productNumber}")
//	    void updateProduct(ProductVO productVO);
//
//	    @Select("select * form ms_product WHERE product_number = #{productNumber}")
//	    ProductVO getProductByNumber(String productNumber);
//
//	    @Select("select * form ms_product")
//	    List<ProductVO> getAllProducts();
//	}



// //모든 상품 목록 조회
//@Select("select * from ms_product")
//List<ProductVO> getAllProducts();
//
//// 상품 번호로 특정 상품 조회
//@Select
//("select * from ms_product WHERE product_number = #{productNumber}")
//ProductVO getProductByNumber(String productNumber);
//
//// 새로운 상품 등록
//@Insert
//("insert into ms_product (v_product_code, v_product_category, v_product_number, product_number, product_name, price, stock_quantity, options, product_img) " +
//"VALUES (#{vProductCode}, #{vProductCategory}, #{vProductNumber}, #{productNumber}, #{productName}, #{price}, #{stockQuantity}, #{options}, #{productImg})")
//void insertProduct(ProductVO productVO);
//
//// 상품 정보 수정
//@Update("UPDATE ms_product " +
//      "SET v_product_code = #{vProductCode}, v_product_category = #{vProductCategory}, v_product_number = #{vProductNumber}, " +
//      "product_name = #{productName}, price = #{price}, stock_quantity = #{stockQuantity}, options = #{options}, product_img = #{productImg} " +
//      "WHERE product_number = #{productNumber}")
//void updateProduct1(ProductVO productVO);
//
//// 상품 삭제
//@Delete("DELETE from ms_product WHERE product_number = #{productNumber}")
//void deleteProduct(String productNumber);
//}
