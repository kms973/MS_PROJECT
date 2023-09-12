package edu.global.ex.service;

import java.util.List;

import edu.global.ex.vo.CartVO;

public interface CartService {

	
	public void insert(CartVO cartVO);

	public List<CartVO> listCart();
	
	public int delete(CartVO cartVO); 
	
}
