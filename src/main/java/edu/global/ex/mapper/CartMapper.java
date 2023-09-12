package edu.global.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.CartVO;

@Mapper
public interface CartMapper {

	public void insert(CartVO cartVO);
	
	public List<CartVO> listCart();
	
	public int delete(CartVO cartVO);
}
