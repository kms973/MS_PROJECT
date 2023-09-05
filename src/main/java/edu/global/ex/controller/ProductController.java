
package edu.global.ex.controller;  //초


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.global.ex.mapper.ProductMapper;
import edu.global.ex.service.ProductService;
import edu.global.ex.vo.ProductVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/product*")  
public class ProductController {
	
		private int stock_quantity = 0;
	    private double Price = 0.0; 
	    
	    @Autowired
	    private ProductService productService;
	    
	    @Autowired
	    private ProductMapper productmapper;
	    
	    
	    private ProductVO productvo = new ProductVO();
	    
	    @GetMapping("/product")
		public String adminProduct(Model model) {
			log.info("adminProduct()..");
			model.addAttribute("productVO", new ProductVO());
			
			return "admin/product";
	    }
		
		
	    
	    public String getProductPage(Model model) {
	    	
//	    	ProductVO productVO = productService.getProductInfo();
//	    	model.addAttribute("productVO", ProductVO);
	        model.addAttribute("stock_quantity", stock_quantity);
	        model.addAttribute("Price", Price);
	        
	        return "admin/product";
	    }

	    
	    @PostMapping("/product/update")
	    public String updateProductInfo(
	            @RequestParam("stock_quantity") int newQuantity,
	            @RequestParam("Price") double newPrice ) 
	     {
	    	stock_quantity = newQuantity;
	        Price = newPrice; 
	        
	        return "redirect:product";	    
	     }
}
//	    @Autowired
//	    public ProductController(ProductService productService) {
//	        this.ProductService = productService;
//	    }

//	    @GetMapping
//	    public List<ProductService> getAllProducts() {
//	        return "redirect:admin/product";
//	    }
