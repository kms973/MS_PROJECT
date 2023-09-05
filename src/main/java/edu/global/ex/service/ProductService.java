package edu.global.ex.service;



import org.springframework.stereotype.Service;

import edu.global.ex.vo.ProductVO;

@Service
public interface ProductService {             //초

	void updateProductInfo( 
							String product_code,
							String product_category,
							
							
							String product_number,
							String product_name, 
							Double price,
							Integer stock_quantity, 
							String options,
							String product_img);
	
	void deleteProductInfo();
		
    ProductVO getProductInfo();

	
	}


	
