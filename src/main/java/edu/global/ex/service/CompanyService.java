package edu.global.ex.service;

import edu.global.ex.vo.CompanyVO;

public interface CompanyService {

	
	public void insert(CompanyVO companyVO); //회사등록

	public CompanyVO getCompany(CompanyVO companyVO); //가져오기
	
}
