package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.CartMapper;
import edu.global.ex.vo.CartVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartMapper cartMapper;
 
    @Override
    public void insert(CartVO cartVO) {
    	log.info("insert()..");
    	cartMapper.insert(cartVO);
    }
   
    @Override
    public List<CartVO> listCart() {
    	log.info("listCart()..");
        return cartMapper.listCart();
    }

   
    @Override
    public int delete(CartVO cartVO) {
    	log.info("delete()..");

		return cartMapper.delete(cartVO);
    }
}
