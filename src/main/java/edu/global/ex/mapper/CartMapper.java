package edu.global.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.CartVO;
import edu.global.ex.vo.ShopProductVO;

@Mapper
public interface CartMapper {

	public void insert(CartVO cartVO);
	
	public List<CartVO> listCart();
	
	public int delete(int product_code, String options);

	void updateStockQuantity(String product_name, int stock_quantity, String options);
	
	void intoCart(@Param("username") String username, @Param("productCategory") String productCategory, 
			@Param("productCode") int productCode);
	
}
