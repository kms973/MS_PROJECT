package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import edu.global.ex.vo.CartVO;

public interface CartService {
	
	public void insert(CartVO cartVO);

	public List<CartVO> listCart();
	
	public int delete(int product_code); 

	void updateStockQuantity(String product_name, int stock_quantity);
}
