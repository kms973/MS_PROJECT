package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.BoardMapper;
import edu.global.ex.mapper.CompanyMapper;
import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.CompanyVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CompanyServiceImpl implements CompanyService {
	
	@Autowired
	private CompanyMapper companyMapper;
	
	@Override
	public void insert(CompanyVO companyVO) {
		// TODO Auto-generated method stub
		log.info("insert()..");

		companyMapper.insert(companyVO);
	}

	


}
