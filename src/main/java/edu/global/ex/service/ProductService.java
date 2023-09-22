package edu.global.ex.service;

import org.springframework.stereotype.Service;

import edu.global.ex.vo.ProductVO;

@Service
public interface ProductService  {

	

	 

	public void insert(ProductVO productVO); // insert

	
	public void delete(String product_category, int product_code);

	public void update(ProductVO pvo);

	



}
