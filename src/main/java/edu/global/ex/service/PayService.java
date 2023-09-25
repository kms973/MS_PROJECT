package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import edu.global.ex.vo.CartVO;
import edu.global.ex.vo.PayVO;

public interface PayService {
	public List<PayVO> listPay(String username);
	public void insert(PayVO payVO);
}
