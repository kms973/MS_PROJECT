package edu.global.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import edu.global.ex.vo.Cart2VO;
import edu.global.ex.vo.CartVO;

@Mapper
public interface Cart2Mapper {

	public void insert(Cart2VO cart2VO);
	
	public List<Cart2VO> listCart2(String username);
}
