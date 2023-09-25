package edu.global.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.CartVO;
import edu.global.ex.vo.PayVO;

@Mapper
public interface PayMapper {

	public List<PayVO> listPay(String username);
	public void insert(PayVO payVO);
}