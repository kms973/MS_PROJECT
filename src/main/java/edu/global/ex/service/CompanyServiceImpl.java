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
    private CompanyMapper companyMapper; // Company 데이터를 처리하는 Mapper

    /**
     * 회사 정보를 삽입하는 메서드
     * @param companyVO 회사 정보 객체
     */
    @Override
    public void insert(CompanyVO companyVO) {
        // 구현 필요
    }

    /**
     * 회사 정보를 조회하는 메서드
     * @param companyVO 조회할 회사 정보 객체
     * @return 조회된 회사 정보 객체
     */
    @Override
    public CompanyVO getCompany(CompanyVO companyVO) {
        return companyMapper.getCompany(companyVO);
    }

    /**
     * 회사 정보를 업데이트하는 메서드
     * @param companyVO 업데이트할 회사 정보 객체
     * @return 업데이트된 회사 정보 객체
     */
    @Override
    public CompanyVO update(CompanyVO companyVO) {
        // 구현 필요
        return null;
    }
}
