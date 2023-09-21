package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import edu.global.ex.vo.CartVO;
import edu.global.ex.vo.ProductVO;
import edu.global.ex.vo.ShopProductVO;

public interface CartService {
	
	public void insert(CartVO cartVO);

	public List<CartVO> listCart();
	
	public int delete(int product_code, String options); 

	void updateStockQuantity(String product_name, int stock_quantity, String options);
	
	void intoCart(String username, ShopProductVO shopProductVO);
}
