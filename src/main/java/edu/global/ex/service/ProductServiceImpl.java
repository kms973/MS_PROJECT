package edu.global.ex.service;

import org.springframework.stereotype.Service;

import edu.global.ex.vo.ProductVO;

	@Service
	public class ProductServiceImpl implements ProductService {    
		
//	
	    private ProductVO productVO = new ProductVO();
		private ProductServiceImpl  productMapper; //
	    
//	    @Override
	    public void updateProductInfo1(
	    			String product_code,
	    			String product_category,
	    			String product_number, 
	    			String product_name,
	    			Double price,
	    			Integer stock_quantity, 
	    			String options, 
	    			String product_img) {
	    	
	    	productVO.setProduct_code(product_code);
	    	productVO.setProduct_category(product_category);
	    		    	
	        productVO.setProduct_number(product_number);
	        productVO.setProduct_name(product_name);
	        productVO.setPrice(price);
	        productVO.setStock_quantity(stock_quantity);
	        productVO.setOptions(options);
	        productVO.setProduct_img(product_img);	        
	    }
    
	    @Override
	    public void deleteProductInfo() {
	        productVO = new ProductVO(); // 상품  삭제  
	    }
	    
//	    @Override             //0831
//	    public ProductVO getProduct_number(String product_number) {
//	        // ProductMapper 메서드를 사용해서 상품 가져옴
//	        return productMapper.getProduct_number(product_number);
//	}
	    	    
	    @Override
	    public ProductVO getProductInfo() {
	        return productVO;
	    }

		@Override
		public void updateProductInfo(String product_code, String product_category, 
				String product_number, String product_name, Double price, 
				Integer stock_quantity, String options,
				String product_img) {
			
			
		}
}
	


	
	
        
    
	


