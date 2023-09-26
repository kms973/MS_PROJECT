package edu.global.ex.service;

import java.util.List;

import edu.global.ex.vo.Cart2VO;
import edu.global.ex.vo.CartVO;
import edu.global.ex.vo.ShopProductVO;

public interface Cart2Service {
	
	public void insert(Cart2VO cart2VO);

	public List<Cart2VO> listCart2(String username);
}
