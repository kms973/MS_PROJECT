package edu.global.ex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.CompanyMapper;
import edu.global.ex.vo.CompanyVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CompanyServiceImpl implements CompanyService {

	
	
	@Autowired
	private CompanyMapper companyMapper;

	

	

	@Override
	public void insert(CompanyVO companyVO) {
		
		
	}

	@Override
	public CompanyVO getCompany(CompanyVO companyVO) {
		
		return companyMapper.getCompany(companyVO);
	}

}
