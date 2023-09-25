package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.CartMapper;
import edu.global.ex.mapper.ShopProductMapper;
import edu.global.ex.vo.CartVO;
import edu.global.ex.vo.ShopProductVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartMapper cartMapper;
    
    @Autowired
    private ShopProductMapper shopProductMapper;
 
    @Override
    public void insert(CartVO cartVO) {
    	log.info("insert()..");
    	cartMapper.insert(cartVO);
    }
   
    @Override
    public List<CartVO> listCart(String username) {
    	log.info("listCart()..");
        return cartMapper.listCart(username);
    }

   
    @Override
    public int delete(int product_code, String options) {
    	log.info("delete()..");
		return cartMapper.delete(product_code, options);
    }
    
    @Override
    public void updateStockQuantity(String product_name, int stock_quantity, String options) {
        cartMapper.updateStockQuantity(product_name, stock_quantity, options);
        
        
    }

    @Override
    public void intoCart(String username, ShopProductVO shopProductVO) {
        CartVO cart = new CartVO();
        cart.setUsername(username);
        cart.setProduct_code(shopProductVO.getProductCode());
        cart.setProduct_img(shopProductVO.getImg());
        cart.setProduct_name(shopProductVO.getProductName());
        cart.setPrice(shopProductVO.getPrice());
        cart.setOptions(shopProductVO.getOptions());
        cart.setStock_quantity(shopProductVO.getStock());
        cartMapper.insert(cart);
        log.info("intoCart...");
    }   
}
