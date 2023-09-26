package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.Cart2Mapper;
import edu.global.ex.mapper.CartMapper;
import edu.global.ex.mapper.ShopProductMapper;
import edu.global.ex.vo.Cart2VO;
import edu.global.ex.vo.CartVO;
import edu.global.ex.vo.ShopProductVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class Cart2ServiceImpl implements Cart2Service {

    @Autowired
    private Cart2Mapper cart2Mapper;
    
    @Autowired
    private ShopProductMapper shopProductMapper;
 
    @Override
    public void insert(Cart2VO cart2VO) {
    	log.info("insert()..");
    	cart2Mapper.insert(cart2VO);
    }
   
    @Override
    public List<Cart2VO> listCart2(String username) {
    	log.info("listCart2()..");
        return cart2Mapper.listCart2(username);
    }
}
