package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.CartMapper;
import edu.global.ex.mapper.PayMapper;
import edu.global.ex.vo.CartVO;
import edu.global.ex.vo.PayVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class PayServiceImpl implements PayService {

    @Autowired
    private PayMapper payMapper;

    @Override
    public List<PayVO> listPay(String username) {
    	log.info("listPay()..");
        return payMapper.listPay(username);
    }
    
    @Override
    public void insert(PayVO payVO) {
    	log.info("insert()..");
    	payMapper.insert(payVO);
    }
}
